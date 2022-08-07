Attribute VB_Name = "modSnake"
'
' Snake v1.3
'  by Syed Zainudeen Bin Mohd Shaid (syed.zai@gmail.com)
'
' - No parts of this code can be used or published without permisiion by the author -
'
' Copyright (c) 2010, Syed Zainudeen Bin Mohd Shaid. All rights reserved.
'

Option Explicit


'Constants ---------------------

Public Const GAME_VERSION As String = "1.4"

Public Const MAX_LENGTH_ULAR As Integer = 60

Public Const MAX_FRUIT_COLOR As Integer = 3

Public Const MAP_WIDTH As Integer = 30
Public Const MAX_MAP_INDEX As Integer = 899

Public Const SCORE_INCREMENT As Integer = 10

Public Const TIME_INITIAL As Integer = 120 'start speed
Public Const TIME_LIMIT As Integer = 50 'fastest move time (less is faster)
Public Const TIME_DECREMENT As Integer = 2 'time reduction for each fruit consumed



'types, enums ------------------

'Kod Arah pergerakan adalah seperti berikut
Enum MOVEDIRECTION
    Atas = 1 'top
    Kanan = 2 'right
    Bawah = 3 'bottom
    Kiri = 4 'left
    DunnoWhereToGo = -1 'in case of error or unreacheable destination
End Enum

Public Enum GAMEOBJECT
    Blank = 0
    Fruit = 1
    Obstacle = 2
    Snake_Head = 3
    Snake_Body = 4
End Enum

Public Enum GAME_STATUS
    GameOver = 0
    GameRunning = 1
End Enum





'structure untuk define ular...
'  BodyCoor = koordinat badan (0 - 899)
'  BodyDirection = Arah Pergerakan (1,2,3,4)
Public Type SNAKE_SKELETON
    BodyCoor As Integer
    BodyDirection As MOVEDIRECTION
End Type

'structure untuk Buah..
'  FruitCoor    = simpan koordinat buah (0 - 899)
'  FruitPicture = index gambar buah (0 - 2)
Public Type FRUIT_DATA
    FruitCoor As Integer
    FruitPicture As Integer
End Type

'structure untuk highscore..
' ScoreName = nama orang yang dapat highscore
' ScoreMark = markah dia
Public Type SCOREDATA
    ScoreName As String
    ScoreMark As String
End Type



' derived type
Public Type ULAR_DATA
    Body(0 To MAX_LENGTH_ULAR) As SNAKE_SKELETON
    PanjangUlar As Integer 'length of snake
End Type


Public Type GAME_DATA
    'game status - over/idle or running
    GameStatus As GAME_STATUS
    
    'computerMode
    ComputerMode As Boolean
    
    'pause status
    GamePaused As Boolean
    
    'block key movement until it has been updated to the snake
    BlokKeyMove As Boolean
    
    'stores the current game score
    Score As Integer
    
    'data buah
    Buah As FRUIT_DATA

    'stores data about snake
    Ular As ULAR_DATA
    
    'all map objects will finally be copied here before redrawing on screen
    Map_ForPaint(0 To MAX_MAP_INDEX) As GAMEOBJECT
    
    'stores static object for the current cycle - border & fruit
    Map_StaticObjects(0 To MAX_MAP_INDEX) As GAMEOBJECT
    
    'ular position & static objects wil be copied here b4 copying to forpaint
    Map_General(0 To MAX_MAP_INDEX) As GAMEOBJECT
End Type

Public GameData As GAME_DATA

'initialize game data
Public Sub init_GameData()
    Dim i As Integer
    
    frmMain.tmrMove.Interval = TIME_INITIAL

    With GameData
        .GameStatus = GameOver
        .GamePaused = False
        .BlokKeyMove = False
        
        'set whether to allow human to play or only pc play
        '.ComputerMode = False
        
        .Score = 0
        .Ular.PanjangUlar = 3
        .Ular.Body(0).BodyCoor = 65
        .Ular.Body(1).BodyCoor = 64
        .Ular.Body(2).BodyCoor = 63
        .Ular.Body(3).BodyCoor = 62
        .Ular.Body(0).BodyDirection = Kanan
        .Ular.Body(1).BodyDirection = Kanan
        .Ular.Body(2).BodyDirection = Kanan
        .Ular.Body(3).BodyDirection = Kanan
        
        '.Map_StaticObjects(0) = Obstacle
        Call insert_Obstacle
        
        'copy obstacle to map_general
        For i = 0 To MAX_MAP_INDEX
            .Map_General(i) = .Map_StaticObjects(i)
        Next
        
        'update map_general with snake position
        For i = 0 To .Ular.PanjangUlar
            If i = 0 Then
                .Map_General(.Ular.Body(i).BodyCoor) = Snake_Head
            Else
                .Map_General(.Ular.Body(i).BodyCoor) = Snake_Body
            End If
        Next
        
        'generate fruit (stored in buah) - pre condition = map_general has been updated with snake position
        Call insert_Fruit
        
        'update map general with fruit position
        .Map_General(.Buah.FruitCoor) = Fruit
        
        For i = 0 To MAX_MAP_INDEX
            .Map_ForPaint(i) = .Map_General(i)
        Next
        
        If .ComputerMode = True Then
            Call path_find
        End If
    End With
    
End Sub

'create Obstacle - initialize staticobjects
Public Sub insert_Obstacle()
    Dim i As Integer
    
    For i = 0 To MAX_MAP_INDEX
        GameData.Map_StaticObjects(i) = Blank
    
        
        If i <= MAP_WIDTH Then ' top border
            GameData.Map_StaticObjects(i) = Obstacle
        ElseIf i >= (MAX_MAP_INDEX - MAP_WIDTH) Then
            GameData.Map_StaticObjects(i) = Obstacle
        ElseIf (i Mod MAP_WIDTH = 0) Then
            GameData.Map_StaticObjects(i) = Obstacle
        ElseIf ((i + 1) Mod MAP_WIDTH = 0) Then
            GameData.Map_StaticObjects(i) = Obstacle
        ElseIf (i >= 430) And (i < 440) Then
            GameData.Map_StaticObjects(i) = Obstacle
        ElseIf (i >= 460) And (i < 470) Then
            GameData.Map_StaticObjects(i) = Obstacle
        End If
        
        GameData.Map_StaticObjects(314) = Obstacle
        GameData.Map_StaticObjects(344) = Obstacle
        GameData.Map_StaticObjects(374) = Obstacle
        GameData.Map_StaticObjects(404) = Obstacle
    
        GameData.Map_StaticObjects(315) = Obstacle
        GameData.Map_StaticObjects(345) = Obstacle
        GameData.Map_StaticObjects(375) = Obstacle
        GameData.Map_StaticObjects(405) = Obstacle
        
        GameData.Map_StaticObjects(494) = Obstacle
        GameData.Map_StaticObjects(524) = Obstacle
        GameData.Map_StaticObjects(554) = Obstacle
        GameData.Map_StaticObjects(584) = Obstacle
    
        GameData.Map_StaticObjects(494) = Obstacle
        GameData.Map_StaticObjects(524) = Obstacle
        GameData.Map_StaticObjects(554) = Obstacle
        GameData.Map_StaticObjects(584) = Obstacle
        
        GameData.Map_StaticObjects(495) = Obstacle
        GameData.Map_StaticObjects(525) = Obstacle
        GameData.Map_StaticObjects(555) = Obstacle
        GameData.Map_StaticObjects(585) = Obstacle
        
        GameData.Map_StaticObjects(154) = Obstacle
        GameData.Map_StaticObjects(154 + 31) = Obstacle
        GameData.Map_StaticObjects(154 + 31 + 31) = Obstacle
        GameData.Map_StaticObjects(154 + 31 + 31 + 31) = Obstacle
        
        GameData.Map_StaticObjects(724) = Obstacle
        GameData.Map_StaticObjects(724 - 29) = Obstacle
        GameData.Map_StaticObjects(724 - 29 - 29) = Obstacle
        GameData.Map_StaticObjects(724 - 29 - 29 - 29) = Obstacle
        
        GameData.Map_StaticObjects(154) = Obstacle
        GameData.Map_StaticObjects(154 + 31) = Obstacle
        GameData.Map_StaticObjects(154 + 31 + 31) = Obstacle
        GameData.Map_StaticObjects(154 + 31 + 31 + 31) = Obstacle
        
        GameData.Map_StaticObjects(174) = Obstacle
        GameData.Map_StaticObjects(174 + 29) = Obstacle
        GameData.Map_StaticObjects(174 + 29 + 29) = Obstacle
        GameData.Map_StaticObjects(174 + 29 + 29 + 29) = Obstacle
        
        GameData.Map_StaticObjects(744) = Obstacle
        GameData.Map_StaticObjects(744 - 31) = Obstacle
        GameData.Map_StaticObjects(744 - 31 - 31) = Obstacle
        GameData.Map_StaticObjects(744 - 31 - 31 - 31) = Obstacle
        
    Next
End Sub

Public Sub insert_Fruit()
    Dim intKoordinat As Integer
    Dim intFruit As Integer
   
    Randomize
    
    'jana gambar buah yang random
    intFruit = Int((Rnd * MAX_FRUIT_COLOR) Mod MAX_FRUIT_COLOR)

JanaSemula:
  
    'jana koordinat buah yang random
    intKoordinat = Int((Rnd * MAX_MAP_INDEX) Mod MAX_MAP_INDEX)
        
    If (GameData.Map_General(intKoordinat) <> Blank) Then
        GoTo JanaSemula
    End If

    GameData.Buah.FruitCoor = intKoordinat
    GameData.Buah.FruitPicture = intFruit
End Sub


Public Sub update_map()
    Dim i As Integer

    'copy obstacle to map_general
    For i = 0 To MAX_MAP_INDEX
        GameData.Map_General(i) = GameData.Map_StaticObjects(i)
    Next
    
    'update map_general with snake position
    For i = 0 To GameData.Ular.PanjangUlar
        If i = 0 Then
            GameData.Map_General(GameData.Ular.Body(i).BodyCoor) = Snake_Head
        Else
            GameData.Map_General(GameData.Ular.Body(i).BodyCoor) = Snake_Body
        End If
    Next

    'update map general with fruit position
    GameData.Map_General(GameData.Buah.FruitCoor) = Fruit
    
    For i = 0 To MAX_MAP_INDEX
        GameData.Map_ForPaint(i) = GameData.Map_General(i)
    Next
End Sub


