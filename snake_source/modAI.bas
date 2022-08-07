Attribute VB_Name = "modAI"
'
' Snake v1.3
'  by Syed Zainudeen Bin Mohd Shaid (syed.zai@gmail.com)
'
' - No parts of this code can be used or published without permisiion by the author -
'
' Copyright (c) 2010, Syed Zainudeen Bin Mohd Shaid. All rights reserved.
'

Option Explicit

' constant ------------------------
Public Const TREE_SIZE As Integer = MAX_MAP_INDEX * 4
Public Const STACK_SIZE As Integer = MAX_MAP_INDEX * 2
Public Const VISITED_TREESIZE As Integer = MAX_MAP_INDEX * 4



'types ----------------------------
Public Type NODE
    Body As SNAKE_SKELETON
    parentIndex As Integer
    currentIndex As Integer
End Type

Public Type TREE_NODE
    Body As SNAKE_SKELETON
    parentIndex As Integer
    currentIndex As Integer
End Type

Public Type VISITED_NODE
    coorDInate As Integer
    direction As MOVEDIRECTION
End Type

Public Type TREE
    data() As TREE_NODE '    data(0 To TREE_SIZE) As NODE
    savePtr As Integer
    readPtr As Integer
End Type

Public Type STACK
    data() As NODE 'data(0 To STACK_SIZE) As NODE
    stackTop As Integer
End Type

Public Type VISITED_TREE
    data() As VISITED_NODE 'data(0 To VISITED_TREESIZE) As VISITED_NODE
    savePtr As Integer
End Type


'variables ------------------------
Dim treeList As TREE
Dim stackList As STACK
Dim visitedTree As VISITED_TREE


'TREE LIST =======================================
Public Sub init_treelist()
    treeList.savePtr = 0
    treeList.readPtr = 0
    ReDim treeList.data(0 To TREE_SIZE) As TREE_NODE
End Sub

Public Sub add_treelist(newNode As NODE)
    treeList.data(treeList.savePtr).Body.BodyCoor = newNode.Body.BodyCoor
    treeList.data(treeList.savePtr).Body.BodyDirection = newNode.Body.BodyDirection
    treeList.data(treeList.savePtr).parentIndex = newNode.parentIndex
    treeList.data(treeList.savePtr).currentIndex = treeList.savePtr 'added by add_treelist
    treeList.savePtr = treeList.savePtr + 1
    
    If (treeList.savePtr = TREE_SIZE) Then
        MsgBox "TREE FULL", vbCritical
    End If
End Sub

Public Function get_treenode() As NODE
    get_treenode.Body.BodyCoor = treeList.data(treeList.readPtr).Body.BodyCoor
    get_treenode.Body.BodyDirection = treeList.data(treeList.readPtr).Body.BodyDirection
    get_treenode.currentIndex = treeList.data(treeList.readPtr).currentIndex
    get_treenode.parentIndex = treeList.data(treeList.readPtr).parentIndex

    treeList.readPtr = treeList.readPtr + 1
    If (treeList.readPtr > treeList.savePtr) Then '= TREE_SIZE) Then
        'MsgBox "TREE EMPTY", vbCritical
        'code shouldn't reach here
    End If
End Function
' end of TREE LIST =======================================




'STACK LIST =======================================
Public Sub init_stacklist()
    stackList.stackTop = 0
    ReDim stackList.data(0 To STACK_SIZE) As NODE
End Sub

Public Sub push_stacklist(newNode As TREE_NODE) 'NODE)
    stackList.data(stackList.stackTop).Body.BodyCoor = newNode.Body.BodyCoor
    stackList.data(stackList.stackTop).Body.BodyDirection = newNode.Body.BodyDirection
    stackList.stackTop = stackList.stackTop + 1
    
    If (treeList.savePtr = STACK_SIZE) Then
        MsgBox "STACK FULL", vbCritical
        End
    End If
End Sub

Public Function pop_stacklist() As NODE
    stackList.stackTop = stackList.stackTop - 1
    If (stackList.stackTop < 0) Then
        'MsgBox "STACK EMPTY", vbCritical
        pop_stacklist.Body.BodyDirection = DunnoWhereToGo 'empty
        Exit Function
    End If
    
    'pop_stacklist.Body.BodyCoor = stackList.data(stackList.stackTop).Body.BodyCoor 'not really needed
    pop_stacklist.Body.BodyDirection = stackList.data(stackList.stackTop).Body.BodyDirection
End Function
'end of STACK LIST =======================================



'VISITED TREE LIST =======================================
Public Sub init_VISITEDtreelist()
    visitedTree.savePtr = 0
    ReDim visitedTree.data(0 To VISITED_TREESIZE) As VISITED_NODE
End Sub

'return 1 if succesfully added
' 0 - if node already existed
Public Function add_VISITEDtreelist(newLoc As Integer, newDirection As MOVEDIRECTION) As Integer
    Dim i As Integer
    
    add_VISITEDtreelist = 1
    
    'check to see if node already inderted
    For i = 0 To (visitedTree.savePtr - 1)
        If visitedTree.data(i).coorDInate = newLoc Then
            If visitedTree.data(i).direction = newDirection Then
                add_VISITEDtreelist = 0
                Exit Function
            End If
        End If
    Next
    
    visitedTree.data(visitedTree.savePtr).coorDInate = newLoc
    visitedTree.data(visitedTree.savePtr).direction = newDirection
    visitedTree.savePtr = visitedTree.savePtr + 1
    
    If (treeList.savePtr = VISITED_TREESIZE) Then
        MsgBox "VISITED TREE FULL", vbCritical
        End
    End If
End Function
' end of VISITED TREE LIST =======================================


'search for fruit and fill the stack once an appropriate path has been discovered
Public Sub path_find()
    Dim i As Integer
    Dim newNode As NODE
    Dim ancestorIndex As Integer
    Dim location As Integer
    Dim direction As MOVEDIRECTION
    
    'initialize
    Call init_treelist
    Call init_stacklist
    Call init_VISITEDtreelist
    
    'init
    location = GameData.Ular.Body(0).BodyCoor
    direction = GameData.Ular.Body(0).BodyDirection
    
    'left
    newNode.parentIndex = -1
    newNode.Body.BodyCoor = get_newlocation(location, move_left(direction))
    newNode.Body.BodyDirection = move_left(direction)
    
   
    If (GameData.Map_General(newNode.Body.BodyCoor) < Obstacle) Then  'ok to move?
        If add_VISITEDtreelist(get_newlocation(location, move_left(direction)), move_left(direction)) = 1 Then
            Call add_treelist(newNode)
        End If
        'check if fruit in treelist
        For i = 0 To (treeList.savePtr - 1)
            If GameData.Buah.FruitCoor = treeList.data(i).Body.BodyCoor Then
                GoTo Fruit_found
            End If
        Next
    End If
    
    'front
    newNode.parentIndex = -1
    newNode.Body.BodyCoor = get_newlocation(location, move_forward(direction))
    newNode.Body.BodyDirection = move_forward(direction)
    If (GameData.Map_General(newNode.Body.BodyCoor) < Obstacle) Then  'ok to move?
        If add_VISITEDtreelist(get_newlocation(location, move_forward(direction)), move_forward(direction)) = 1 Then
            Call add_treelist(newNode)
        End If
        'check if fruit in treelist
        For i = 0 To (treeList.savePtr - 1)
            If GameData.Buah.FruitCoor = treeList.data(i).Body.BodyCoor Then
                GoTo Fruit_found
            End If
        Next
    End If
    
    'right
     newNode.parentIndex = -1
    newNode.Body.BodyCoor = get_newlocation(location, move_right(direction))
    newNode.Body.BodyDirection = move_right(direction)
    If (GameData.Map_General(newNode.Body.BodyCoor) < Obstacle) Then  'ok to move?
        If add_VISITEDtreelist(get_newlocation(location, move_right(direction)), move_right(direction)) = 1 Then
            Call add_treelist(newNode)
        End If
        'check if fruit in treelist
        For i = 0 To (treeList.savePtr - 1)
            If GameData.Buah.FruitCoor = treeList.data(i).Body.BodyCoor Then
                GoTo Fruit_found
            End If
        Next
    End If
    
    'check if fruit in treelist
    For i = 0 To (treeList.savePtr - 1)
        If GameData.Buah.FruitCoor = treeList.data(i).Body.BodyCoor Then
            GoTo Fruit_found
        End If
    Next
    
    Do
        'for every node in treelist, read one and expand
        newNode = get_treenode()
        Call analyse_path(newNode.currentIndex, newNode.Body.BodyCoor, newNode.Body.BodyDirection)

        'check if fruit in treelist
        For i = 0 To (treeList.savePtr - 1)
            If GameData.Buah.FruitCoor = treeList.data(i).Body.BodyCoor Then
                GoTo Fruit_found
            End If
        Next
    Loop While treeList.readPtr < treeList.savePtr
    
Fruit_found:
    
    If GameData.Buah.FruitCoor <> treeList.data(i).Body.BodyCoor Then
        'fruit is not reacheable
        'MsgBox "Critical Error, Running out of nodes before fruit is found", vbCritical
        'End
        Exit Sub
    End If
    
    'initialize
    ancestorIndex = i
    
    Do
    'trace to root
     'add to stack
     Call push_stacklist(treeList.data(ancestorIndex))
     'Debug.Print Str(treeList.data(ancestorIndex).parentIndex) & " - " & treeList.data(ancestorIndex).Body.BodyDirection
     
     ancestorIndex = treeList.data(ancestorIndex).parentIndex
     
     
    Loop While (ancestorIndex <> -1)
    
End Sub


Public Sub analyse_path(currentIndex As Integer, location As Integer, direction As MOVEDIRECTION)
    Dim newNode As NODE
    
    'check parent index for repeating left-left or roght-right operation
    If currentIndex = -1 Then
        'straight away add left, forward, and right to list - first node maaa
        newNode.parentIndex = currentIndex
        newNode.Body.BodyCoor = location
        newNode.Body.BodyDirection = direction
        If add_VISITEDtreelist(location, direction) = 1 Then
            Call add_treelist(newNode)
        End If
        Exit Sub
    End If
    
    
    'add left
    'add left node - .currentindex will be added by add_treelist
    newNode.parentIndex = currentIndex
    newNode.Body.BodyCoor = get_newlocation(location, move_left(direction))
    newNode.Body.BodyDirection = move_left(direction)
    If (GameData.Map_General(newNode.Body.BodyCoor) < Obstacle) Then  'ok to move?
        If add_VISITEDtreelist(get_newlocation(location, move_left(direction)), move_left(direction)) = 1 Then
            Call add_treelist(newNode)
        End If
        If (GameData.Map_General(newNode.Body.BodyCoor) = Fruit) Then   'fruit is found
            Exit Sub
        End If
    End If
                
    
    'add forward
    newNode.parentIndex = currentIndex
    newNode.Body.BodyCoor = get_newlocation(location, move_forward(direction))
    newNode.Body.BodyDirection = move_forward(direction)
    If (GameData.Map_General(newNode.Body.BodyCoor) < Obstacle) Then  'ok to move?
        If add_VISITEDtreelist(get_newlocation(location, move_forward(direction)), move_forward(direction)) = 1 Then 'not yet visited
            Call add_treelist(newNode)
        End If
        
        If (GameData.Map_General(newNode.Body.BodyCoor) = Fruit) Then   'fruit is found
            Exit Sub
        End If
    End If

    
    'add right
    'add right node - .currentindex will be added by add_treelist
    newNode.parentIndex = currentIndex
    newNode.Body.BodyCoor = get_newlocation(location, move_right(direction))
    newNode.Body.BodyDirection = move_right(direction)
    If (GameData.Map_General(newNode.Body.BodyCoor) < Obstacle) Then  'ok to move?
        If add_VISITEDtreelist(get_newlocation(location, move_right(direction)), move_right(direction)) = 1 Then
            Call add_treelist(newNode)
        End If
        If (GameData.Map_General(newNode.Body.BodyCoor) = Fruit) Then   'fruit is found
            Exit Sub
        End If
    End If
End Sub

Public Function get_newlocation(currentLocation As Integer, direction As MOVEDIRECTION) As Integer
    If direction = Atas Then
        get_newlocation = currentLocation - MAP_WIDTH
    ElseIf direction = Bawah Then
        get_newlocation = currentLocation + MAP_WIDTH
    ElseIf direction = Kanan Then
        get_newlocation = currentLocation + 1
    ElseIf direction = Kiri Then
        get_newlocation = currentLocation - 1
    End If
End Function

Public Function move_left(direction As MOVEDIRECTION) As MOVEDIRECTION
    If direction = Atas Then
        move_left = Kiri
    ElseIf direction = Bawah Then
        move_left = Kanan
    ElseIf direction = Kanan Then
        move_left = Atas
    ElseIf direction = Kiri Then
        move_left = Bawah
    End If
End Function

Public Function move_right(direction As MOVEDIRECTION) As MOVEDIRECTION
    If direction = Atas Then
        move_right = Kanan
    ElseIf direction = Bawah Then
        move_right = Kiri
    ElseIf direction = Kanan Then
        move_right = Bawah
    ElseIf direction = Kiri Then
        move_right = Atas
    End If
End Function

Public Function move_forward(direction As MOVEDIRECTION) As MOVEDIRECTION
    move_forward = direction
End Function


'returns the last node b4 move operation
Public Function move_Game() As NODE
    Dim i As Integer

    'used to lengthens the snake
    move_Game.Body.BodyCoor = GameData.Ular.Body(GameData.Ular.PanjangUlar).BodyCoor
    move_Game.Body.BodyDirection = GameData.Ular.Body(GameData.Ular.PanjangUlar).BodyDirection

    For i = 0 To GameData.Ular.PanjangUlar
        Select Case (GameData.Ular.Body(i).BodyDirection)
            Case MOVEDIRECTION.Atas:  'atas
                GameData.Ular.Body(i).BodyCoor = GameData.Ular.Body(i).BodyCoor - MAP_WIDTH
                
            Case MOVEDIRECTION.Kanan: 'kanan
                GameData.Ular.Body(i).BodyCoor = GameData.Ular.Body(i).BodyCoor + 1
              
            Case MOVEDIRECTION.Bawah: 'bawah
                GameData.Ular.Body(i).BodyCoor = GameData.Ular.Body(i).BodyCoor + MAP_WIDTH
                
            Case MOVEDIRECTION.Kiri: 'kiri
                GameData.Ular.Body(i).BodyCoor = GameData.Ular.Body(i).BodyCoor - 1
        End Select
    Next
    
    'update each body's direction
    For i = GameData.Ular.PanjangUlar To 1 Step -1
        GameData.Ular.Body(i).BodyDirection = GameData.Ular.Body(i - 1).BodyDirection
    Next

    GameData.BlokKeyMove = False
End Function


'dependency with frmMain
Public Sub detect_Collision(oldNode As NODE)
    Dim oldFruitCoor As Integer
    
    'If (GameData.Map_StaticObjects(GameData.Ular.Body(0).BodyCoor) >= Obstacle) Then
    If (GameData.Map_General(GameData.Ular.Body(0).BodyCoor) >= Obstacle) Then
        GameData.GameStatus = GameOver
        Exit Sub
        
    ElseIf (GameData.Ular.Body(0).BodyCoor = GameData.Buah.FruitCoor) Then 'fruit found
        GameData.Score = GameData.Score + SCORE_INCREMENT
        oldFruitCoor = GameData.Buah.FruitCoor
        
        'increase the length of ular
        If GameData.Ular.PanjangUlar <> MAX_LENGTH_ULAR Then
            GameData.Ular.PanjangUlar = GameData.Ular.PanjangUlar + 1
            GameData.Ular.Body(GameData.Ular.PanjangUlar).BodyCoor = oldNode.Body.BodyCoor
            GameData.Ular.Body(GameData.Ular.PanjangUlar).BodyDirection = oldNode.Body.BodyDirection
        End If
        
        'increase ular speed
        If frmMain.tmrMove.Interval > TIME_LIMIT Then
            frmMain.tmrMove.Interval = frmMain.tmrMove.Interval - TIME_DECREMENT
        End If
        
        Call insert_Fruit
        
        If GameData.ComputerMode = True Then
            Call path_find
        End If
        Exit Sub
    End If
    Call update_map
End Sub

Public Sub simulate_move()
    Dim inputKey As Integer
    Dim nextNode As NODE

    'get pergerakan from stack
    nextNode = pop_stacklist()
    If nextNode.Body.BodyDirection <> DunnoWhereToGo Then
        GameData.Ular.Body(0).BodyDirection = nextNode.Body.BodyDirection
    End If
End Sub

