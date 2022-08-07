VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "~~~ Snake ~~~"
   ClientHeight    =   7200
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   7800
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7200
   ScaleWidth      =   7800
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrMove 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   7320
      Top             =   1440
   End
   Begin VB.Timer tmrDraw 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   7320
      Top             =   1920
   End
   Begin VB.Image imgBody 
      Height          =   255
      Left            =   7440
      Picture         =   "Form1.frx":0CFA
      Stretch         =   -1  'True
      Top             =   3240
      Width           =   255
   End
   Begin VB.Image imgHead 
      Height          =   255
      Left            =   7440
      Picture         =   "Form1.frx":100C
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   255
   End
   Begin VB.Image imgBlank 
      Height          =   255
      Left            =   7440
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   899
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   898
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   897
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   896
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   895
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   894
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   893
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   892
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   891
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   890
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   889
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   888
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   887
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   886
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   885
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   884
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   883
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   882
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   881
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   880
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   879
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   878
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   877
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   876
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   875
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   874
      Left            =   960
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   873
      Left            =   720
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   872
      Left            =   480
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   871
      Left            =   240
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   870
      Left            =   0
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   869
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   868
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   867
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   866
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   865
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   864
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   863
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   862
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   861
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   860
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   859
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   858
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   857
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   856
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   855
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   854
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   853
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   852
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   851
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   850
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   849
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   848
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   847
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   846
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   845
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   844
      Left            =   960
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   843
      Left            =   720
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   842
      Left            =   480
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   841
      Left            =   240
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   840
      Left            =   0
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   839
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   838
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   837
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   836
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   835
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   834
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   833
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   832
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   831
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   830
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   829
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   828
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   827
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   826
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   825
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   824
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   823
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   822
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   821
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   820
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   819
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   818
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   817
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   816
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   815
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   814
      Left            =   960
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   813
      Left            =   720
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   812
      Left            =   480
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   811
      Left            =   240
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   810
      Left            =   0
      Stretch         =   -1  'True
      Top             =   6480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   809
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   808
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   807
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   806
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   805
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   804
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   803
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   802
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   801
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   800
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   799
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   798
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   797
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   796
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   795
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   794
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   793
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   792
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   791
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   790
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   789
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   788
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   787
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   786
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   785
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   784
      Left            =   960
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   783
      Left            =   720
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   782
      Left            =   480
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   781
      Left            =   240
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   780
      Left            =   0
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   779
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   778
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   777
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   776
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   775
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   774
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   773
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   772
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   771
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   770
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   769
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   768
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   767
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   766
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   765
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   764
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   763
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   762
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   761
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   760
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   759
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   758
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   757
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   756
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   755
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   754
      Left            =   960
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   753
      Left            =   720
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   752
      Left            =   480
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   751
      Left            =   240
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   750
      Left            =   0
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   749
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   748
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   747
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   746
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   745
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   744
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   743
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   742
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   741
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   740
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   739
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   738
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   737
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   736
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   735
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   734
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   733
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   732
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   731
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   730
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   729
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   728
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   727
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   726
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   725
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   724
      Left            =   960
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   723
      Left            =   720
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   722
      Left            =   480
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   721
      Left            =   240
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   720
      Left            =   0
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   719
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   718
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   717
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   716
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   715
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   714
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   713
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   712
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   711
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   710
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   709
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   708
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   707
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   706
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   705
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   704
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   703
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   702
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   701
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   700
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   699
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   698
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   697
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   696
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   695
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   694
      Left            =   960
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   693
      Left            =   720
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   692
      Left            =   480
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   691
      Left            =   240
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   690
      Left            =   0
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   689
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   688
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   687
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   686
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   685
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   684
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   683
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   682
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   681
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   680
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   679
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   678
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   677
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   676
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   675
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   674
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   673
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   672
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   671
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   670
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   669
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   668
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   667
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   666
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   665
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   664
      Left            =   960
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   663
      Left            =   720
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   662
      Left            =   480
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   661
      Left            =   240
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   660
      Left            =   0
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   659
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   658
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   657
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   656
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   655
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   654
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   653
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   652
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   651
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   650
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   649
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   648
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   647
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   646
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   645
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   644
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   643
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   642
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   641
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   640
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   639
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   638
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   637
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   636
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   635
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   634
      Left            =   960
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   633
      Left            =   720
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   632
      Left            =   480
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   631
      Left            =   240
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   630
      Left            =   0
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   629
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   628
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   627
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   626
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   625
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   624
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   623
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   622
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   621
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   620
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   619
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   618
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   617
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   616
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   615
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   614
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   613
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   612
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   611
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   610
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   609
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   608
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   607
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   606
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   605
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   604
      Left            =   960
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   603
      Left            =   720
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   602
      Left            =   480
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   601
      Left            =   240
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   600
      Left            =   0
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   599
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   598
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   597
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   596
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   595
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   594
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   593
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   592
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   591
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   590
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   589
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   588
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   587
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   586
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   585
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   584
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   583
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   582
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   581
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   580
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   579
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   578
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   577
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   576
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   575
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   574
      Left            =   960
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   573
      Left            =   720
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   572
      Left            =   480
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   571
      Left            =   240
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   570
      Left            =   0
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   569
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   568
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   567
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   566
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   565
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   564
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   563
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   562
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   561
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   560
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   559
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   558
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   557
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   556
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   555
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   554
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   553
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   552
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   551
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   550
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   549
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   548
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   547
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   546
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   545
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   544
      Left            =   960
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   543
      Left            =   720
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   542
      Left            =   480
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   541
      Left            =   240
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   540
      Left            =   0
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   539
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   538
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   537
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   536
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   535
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   534
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   533
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   532
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   531
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   530
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   529
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   528
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   527
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   526
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   525
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   524
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   523
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   522
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   521
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   520
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   519
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   518
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   517
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   516
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   515
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   514
      Left            =   960
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   513
      Left            =   720
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   512
      Left            =   480
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   511
      Left            =   240
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   510
      Left            =   0
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   509
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   508
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   507
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   506
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   505
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   504
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   503
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   502
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   501
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   500
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   499
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   498
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   497
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   496
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   495
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   494
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   493
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   492
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   491
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   490
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   489
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   488
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   487
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   486
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   485
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   484
      Left            =   960
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   483
      Left            =   720
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   482
      Left            =   480
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   481
      Left            =   240
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   480
      Left            =   0
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   479
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   478
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   477
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   476
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   475
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   474
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   473
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   472
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   471
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   470
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   469
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   468
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   467
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   466
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   465
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   464
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   463
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   462
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   461
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   460
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   459
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   458
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   457
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   456
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   455
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   454
      Left            =   960
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   453
      Left            =   720
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   452
      Left            =   480
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   451
      Left            =   240
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   450
      Left            =   0
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   449
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   448
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   447
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   446
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   445
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   444
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   443
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   442
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   441
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   440
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   439
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   438
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   437
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   436
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   435
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   434
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   433
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   432
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   431
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   430
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   429
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   428
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   427
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   426
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   425
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   424
      Left            =   960
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   423
      Left            =   720
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   422
      Left            =   480
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   421
      Left            =   240
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   420
      Left            =   0
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   419
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   418
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   417
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   416
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   415
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   414
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   413
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   412
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   411
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   410
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   409
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   408
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   407
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   406
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   405
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   404
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   403
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   402
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   401
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   400
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   399
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   398
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   397
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   396
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   395
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   394
      Left            =   960
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   393
      Left            =   720
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   392
      Left            =   480
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   391
      Left            =   240
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   390
      Left            =   0
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   389
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   388
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   387
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   386
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   385
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   384
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   383
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   382
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   381
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   380
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   379
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   378
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   377
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   376
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   375
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   374
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   373
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   372
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   371
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   370
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   369
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   368
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   367
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   366
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   365
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   364
      Left            =   960
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   363
      Left            =   720
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   362
      Left            =   480
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   361
      Left            =   240
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   360
      Left            =   0
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   359
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   358
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   357
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   356
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   355
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   354
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   353
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   352
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   351
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   350
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   349
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   348
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   347
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   346
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   345
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   344
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   343
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   342
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   341
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   340
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   339
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   338
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   337
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   336
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   335
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   334
      Left            =   960
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   333
      Left            =   720
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   332
      Left            =   480
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   331
      Left            =   240
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   330
      Left            =   0
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   329
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   328
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   327
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   326
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   325
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   324
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   323
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   322
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   321
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   320
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   319
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   318
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   317
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   316
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   315
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   314
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   313
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   312
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   311
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   310
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   309
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   308
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   307
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   306
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   305
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   304
      Left            =   960
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   303
      Left            =   720
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   302
      Left            =   480
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   301
      Left            =   240
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   300
      Left            =   0
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   299
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   298
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   297
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   296
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   295
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   294
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   293
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   292
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   291
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   290
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   289
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   288
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   287
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   286
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   285
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   284
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   283
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   282
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   281
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   280
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   279
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   278
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   277
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   276
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   275
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   274
      Left            =   960
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   273
      Left            =   720
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   272
      Left            =   480
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   271
      Left            =   240
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   270
      Left            =   0
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   269
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   268
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   267
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   266
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   265
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   264
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   263
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   262
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   261
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   260
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   259
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   258
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   257
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   256
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   255
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   254
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   253
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   252
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   251
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   250
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   249
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   248
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   247
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   246
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   245
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   244
      Left            =   960
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   243
      Left            =   720
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   242
      Left            =   480
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   241
      Left            =   240
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   240
      Left            =   0
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   239
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   238
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   237
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   236
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   235
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   234
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   233
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   232
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   231
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   230
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   229
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   228
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   227
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   226
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   225
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   224
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   223
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   222
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   221
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   220
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   219
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   218
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   217
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   216
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   215
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   214
      Left            =   960
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   213
      Left            =   720
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   212
      Left            =   480
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   211
      Left            =   240
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   210
      Left            =   0
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   209
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   208
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   207
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   206
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   205
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   204
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   203
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   202
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   201
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   200
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   199
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   198
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   197
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   196
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   195
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   194
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   193
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   192
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   191
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   190
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   189
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   188
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   187
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   186
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   185
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   184
      Left            =   960
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   183
      Left            =   720
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   182
      Left            =   480
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   181
      Left            =   240
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   180
      Left            =   0
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   179
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   178
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   177
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   176
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   175
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   174
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   173
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   172
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   171
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   170
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   169
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   168
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   167
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   166
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   165
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   164
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   163
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   162
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   161
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   160
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   159
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   158
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   157
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   156
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   155
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   154
      Left            =   960
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   153
      Left            =   720
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   152
      Left            =   480
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   151
      Left            =   240
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   150
      Left            =   0
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   149
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   148
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   147
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   146
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   145
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   144
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   143
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   142
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   141
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   140
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   139
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   138
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   137
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   136
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   135
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   134
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   133
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   132
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   131
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   130
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   129
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   128
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   127
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   126
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   125
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   124
      Left            =   960
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   123
      Left            =   720
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   122
      Left            =   480
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   121
      Left            =   240
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   120
      Left            =   0
      Stretch         =   -1  'True
      Top             =   960
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   119
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   118
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   117
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   116
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   115
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   114
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   113
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   112
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   111
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   110
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   109
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   108
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   107
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   106
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   105
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   104
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   103
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   102
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   101
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   100
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   99
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   98
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   97
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   96
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   95
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   94
      Left            =   960
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   93
      Left            =   720
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   92
      Left            =   480
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   91
      Left            =   240
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   90
      Left            =   0
      Stretch         =   -1  'True
      Top             =   720
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   89
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   88
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   87
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   86
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   85
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   84
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   83
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   82
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   81
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   80
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   79
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   78
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   77
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   76
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   75
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   74
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   73
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   72
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   71
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   70
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   69
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   68
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   67
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   66
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   65
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   64
      Left            =   960
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   63
      Left            =   720
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   62
      Left            =   480
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   61
      Left            =   240
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   60
      Left            =   0
      Stretch         =   -1  'True
      Top             =   480
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   59
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   58
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   57
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   56
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   55
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   54
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   53
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   52
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   51
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   50
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   49
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   48
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   47
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   46
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   45
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   44
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   43
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   42
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   41
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   40
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   39
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   38
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   37
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   36
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   35
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   34
      Left            =   960
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   33
      Left            =   720
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   32
      Left            =   480
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   31
      Left            =   240
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   30
      Left            =   0
      Stretch         =   -1  'True
      Top             =   240
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   29
      Left            =   6960
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   28
      Left            =   6720
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   27
      Left            =   6480
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   26
      Left            =   6240
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   25
      Left            =   6000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   24
      Left            =   5760
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   23
      Left            =   5520
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   22
      Left            =   5280
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   21
      Left            =   5040
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   20
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   19
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   18
      Left            =   4320
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   17
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   16
      Left            =   3840
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   15
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   14
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   13
      Left            =   3120
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   12
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   11
      Left            =   2640
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   10
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   9
      Left            =   2160
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   8
      Left            =   1920
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   7
      Left            =   1680
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   6
      Left            =   1440
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   5
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   4
      Left            =   960
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   3
      Left            =   720
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   2
      Left            =   480
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   1
      Left            =   240
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgBlok 
      Height          =   255
      Index           =   0
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   255
   End
   Begin VB.Image imgObstacle 
      Height          =   255
      Left            =   7440
      Picture         =   "Form1.frx":131E
      Stretch         =   -1  'True
      Top             =   2760
      Width           =   255
   End
   Begin VB.Image imgFruit 
      Height          =   225
      Index           =   2
      Left            =   7440
      Picture         =   "Form1.frx":1630
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   225
   End
   Begin VB.Image imgFruit 
      Height          =   225
      Index           =   1
      Left            =   7440
      Picture         =   "Form1.frx":1942
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   225
   End
   Begin VB.Image imgFruit 
      Height          =   225
      Index           =   0
      Left            =   7440
      Picture         =   "Form1.frx":1C54
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   225
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileExit 
         Caption         =   "E&xit"
         Shortcut        =   {F12}
      End
   End
   Begin VB.Menu mnuGame 
      Caption         =   "Game"
      Begin VB.Menu mnuGameNewGame 
         Caption         =   "New Game"
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnuGamePauseGame 
         Caption         =   "Pause Game"
         Enabled         =   0   'False
         Shortcut        =   {F4}
      End
      Begin VB.Menu mnuSep 
         Caption         =   "-"
      End
      Begin VB.Menu mnuGameHighScore 
         Caption         =   "&High Score"
         Shortcut        =   {F2}
      End
   End
   Begin VB.Menu mnuMode 
      Caption         =   "&Mode"
      Begin VB.Menu mnuHuman 
         Caption         =   "&Human Player"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuComputer 
         Caption         =   "&Computer Player"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "&About"
         Shortcut        =   {F1}
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
' Snake v1.3
'  by Syed Zainudeen Bin Mohd Shaid (syed.zai@gmail.com)
'
' - No parts of this code can be used or published without permisiion by the author -
'
' Copyright (c) 2010, Syed Zainudeen Bin Mohd Shaid. All rights reserved.
'

Option Explicit

'rekod highscore
Dim ScoreRecord(0 To 2) As SCOREDATA


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If GameData.BlokKeyMove = True Then
        Exit Sub
    End If
    
    Select Case (KeyCode)
    Case 38: 'atas
        If (GameData.Ular.Body(0).BodyDirection <> Bawah) Then
            GameData.Ular.Body(0).BodyDirection = Atas
            GameData.BlokKeyMove = True
        End If
        
    Case 39: 'kanan
        If (GameData.Ular.Body(0).BodyDirection <> Kiri) Then
            GameData.Ular.Body(0).BodyDirection = Kanan
            GameData.BlokKeyMove = True
        End If
        
    Case 40: 'bawah
        If (GameData.Ular.Body(0).BodyDirection <> Atas) Then
            GameData.Ular.Body(0).BodyDirection = Bawah
            GameData.BlokKeyMove = True
        End If
        
    Case 37: 'kiri
        If (GameData.Ular.Body(0).BodyDirection <> Kanan) Then
            GameData.Ular.Body(0).BodyDirection = Kiri
            GameData.BlokKeyMove = True
        End If
    End Select
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    Me.Width = 7320
    Me.Height = 8010
    Me.BackColor = &HFFFFFF
End Sub

Private Sub mnuComputer_Click()
    If GameData.GameStatus = GameOver Then
        mnuHuman.Checked = False
        mnuComputer.Checked = True
        GameData.ComputerMode = True
    End If
End Sub

Private Sub mnuFileExit_Click()
    End
End Sub

Private Sub mnuGameHighScore_Click()
    Call LoadHighScore
    MsgBox "High Scores:" + vbCrLf + "--------------" + vbCrLf + vbCrLf + _
           ScoreRecord(0).ScoreName + vbTab + Str(ScoreRecord(0).ScoreMark) + vbCrLf + _
           ScoreRecord(1).ScoreName + vbTab + Str(ScoreRecord(1).ScoreMark) + vbCrLf + _
           ScoreRecord(2).ScoreName + vbTab + Str(ScoreRecord(2).ScoreMark) + Space(10) + vbCrLf + vbCrLf + _
           "Congratulations to all..." + vbCrLf, vbInformation, "~~~ Snake " + GAME_VERSION + " Top Achivers ~~~"
    
End Sub

Private Sub mnuGameNewGame_Click()
    Call init_GameData
       
    mnuGameNewGame.Enabled = False
    
    If GameData.ComputerMode = True Then
        mnuGamePauseGame.Caption = "Stop Game"
        frmMain.Caption = "~~~ Snake ~~~   -   [Computer Mode]"
    End If
    
    mnuGamePauseGame.Enabled = True
    
    GameData.GameStatus = GameRunning
    tmrDraw.Enabled = True
      
    tmrMove.Enabled = True
    
    'disable mode change
    mnuMode.Enabled = False
End Sub

Private Sub mnuGamePauseGame_Click()
    If GameData.ComputerMode = True Then
        GameData.GameStatus = GameOver
        
        mnuGamePauseGame.Caption = "Resume Game"
        mnuGamePauseGame.Enabled = False
        
        mnuGameNewGame.Enabled = True
        
        frmMain.Caption = "~~~ Snake ~~~"
        Exit Sub
    End If
    
    If GameData.GamePaused = False Then
        tmrMove.Enabled = False
        mnuGamePauseGame.Caption = "Resume Game"
        GameData.GamePaused = True
    Else
        tmrMove.Enabled = True
        mnuGamePauseGame.Caption = "Pause Game"
        GameData.GamePaused = False
    End If
End Sub

Private Sub mnuHelpAbout_Click()
    Load frmSplash
    frmSplash.Show
    DoEvents
    Sleep 1500
    Unload frmSplash
End Sub

'baca highscore dari fail
Private Sub LoadHighScore()
    Dim file As String
    Dim tempName As String
    Dim tempMark As String
    
    file = App.Path + "\Highscore.dat"
    
    Open file For Input As #1
        Line Input #1, tempName
        Line Input #1, tempMark
        ScoreRecord(0).ScoreName = tempName
        ScoreRecord(0).ScoreMark = Int(tempMark)
        
        Line Input #1, tempName
        Line Input #1, tempMark
        ScoreRecord(1).ScoreName = tempName
        ScoreRecord(1).ScoreMark = Int(tempMark)
        
        Line Input #1, tempName
        Line Input #1, tempMark
        ScoreRecord(2).ScoreName = tempName
        ScoreRecord(2).ScoreMark = Int(tempMark)
    Close #1
End Sub

'tulis high score data
Private Sub SaveHighScore()
    Dim file As String
    Dim tempName As String
    Dim tempMark As String
    
    file = App.Path + "\Highscore.dat"
    
    Open file For Output As #1
        Print #1, ScoreRecord(0).ScoreName
        Print #1, ScoreRecord(0).ScoreMark
        Print #1, ScoreRecord(1).ScoreName
        Print #1, ScoreRecord(1).ScoreMark
        Print #1, ScoreRecord(2).ScoreName
        Print #1, ScoreRecord(2).ScoreMark
    Close #1
End Sub

Private Sub mnuHuman_Click()
    If GameData.GameStatus = GameOver Then
        mnuHuman.Checked = True
        mnuComputer.Checked = False
        GameData.ComputerMode = False
    Else
        
    End If
End Sub

Private Sub tmrDraw_Timer()
    If GameData.GameStatus = GameOver Then
        tmrDraw.Enabled = False
    ElseIf GameData.GameStatus = GameRunning Then
        Call draw_Game
    End If
End Sub



Public Sub draw_Game()
    Dim i As Integer
    
    For i = 0 To MAX_MAP_INDEX
        If GameData.Map_ForPaint(i) = Blank Then
            imgBlok(i).Picture = imgBlank.Picture
        ElseIf GameData.Map_ForPaint(i) = Obstacle Then
            imgBlok(i).Picture = imgObstacle.Picture
        ElseIf GameData.Map_ForPaint(i) = Fruit Then
            imgBlok(i).Picture = imgFruit(GameData.Buah.FruitPicture).Picture
        ElseIf GameData.Map_ForPaint(i) = Snake_Body Then
            imgBlok(i).Picture = imgBody.Picture
        ElseIf GameData.Map_ForPaint(i) = Snake_Head Then
            imgBlok(i).Picture = imgHead.Picture
        End If
        
    Next
End Sub


Private Sub tmrMove_Timer()
    Dim oldNode As NODE
    
    If GameData.ComputerMode = True Then
        Call simulate_move
    End If
    oldNode = move_Game
    Call detect_Collision(oldNode)
    If (GameData.GameStatus = GameRunning) Then
        Call update_map
    Else
        'game over
        frmMain.mnuGamePauseGame.Enabled = False
        frmMain.mnuGameNewGame.Enabled = True
        
        Call ProcessScore
        
        frmMain.tmrMove.Enabled = False
        
        'enable mode change
        mnuMode.Enabled = True
    End If
End Sub

'process high score
Private Sub ProcessScore()
    Dim tempName As String
    
    If GameData.ComputerMode = True Then
        MsgBox "The computer scored :" + Str(GameData.Score), vbInformation, "Game Over !!!"
        Exit Sub
    End If
    
    Call LoadHighScore
    
    If GameData.Score < ScoreRecord(2).ScoreMark Then
        MsgBox "Oops sorry.. Game Over !" + vbCrLf + "Your score is :" + Str(GameData.Score), vbInformation, "Game Over !!!"
        Exit Sub
    End If
    
    tempName = InputBox("Please enter your Nickname ?", "New Record !!!", "")
    
    If tempName = "" Then
        tempName = "Guest"
    End If
    
    MsgBox "Congratulations " + tempName + " !!! " + "You made it to the High Score List !", vbInformation, "A new Record !!!"
    
    If GameData.Score >= ScoreRecord(0).ScoreMark Then
        ScoreRecord(2).ScoreName = ScoreRecord(1).ScoreName
        ScoreRecord(2).ScoreMark = ScoreRecord(1).ScoreMark
        ScoreRecord(1).ScoreName = ScoreRecord(0).ScoreName
        ScoreRecord(1).ScoreMark = ScoreRecord(0).ScoreMark
        ScoreRecord(0).ScoreName = tempName
        ScoreRecord(0).ScoreMark = GameData.Score
        
        SaveHighScore
        Exit Sub
    End If
    
    If GameData.Score >= ScoreRecord(1).ScoreMark Then
        ScoreRecord(2).ScoreName = ScoreRecord(1).ScoreName
        ScoreRecord(2).ScoreMark = ScoreRecord(1).ScoreMark
        ScoreRecord(1).ScoreName = tempName
        ScoreRecord(1).ScoreMark = GameData.Score
        
        SaveHighScore
        Exit Sub
    End If
    
    If GameData.Score >= ScoreRecord(2).ScoreMark Then
        ScoreRecord(2).ScoreName = tempName
        ScoreRecord(2).ScoreMark = GameData.Score
        
        SaveHighScore
        Exit Sub
    End If
    
End Sub
