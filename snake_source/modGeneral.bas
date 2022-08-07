Attribute VB_Name = "modGeneral"
'
' Snake v1.3
'  by Syed Zainudeen Bin Mohd Shaid (syed.zai@gmail.com)
'
' - No parts of this code can be used or published without permisiion by the author -
'
' Copyright (c) 2010, Syed Zainudeen Bin Mohd Shaid. All rights reserved.
'

Option Explicit

'Win API function
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

'display spalsh screen
Public Sub main()
    Load frmSplash
    frmSplash.Show
    Load frmMain
    DoEvents
    Sleep 1500
    Unload frmSplash
    frmMain.Show
End Sub
