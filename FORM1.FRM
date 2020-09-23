VERSION 5.00
Begin VB.Form frm3dBut 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "3D Buttons"
   ClientHeight    =   1770
   ClientLeft      =   150
   ClientTop       =   675
   ClientWidth     =   3900
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1770
   ScaleWidth      =   3900
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command7 
      BackColor       =   &H0080C0FF&
      Caption         =   "Resize And Move"
      Height          =   825
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   90
      Width           =   1185
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00FF8080&
      Caption         =   "Fixed"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   210
      Width           =   1995
   End
   Begin VB.Label Label1 
      Caption         =   "Do not move this label or the lines.  Lines will find the button."
      Height          =   465
      Left            =   90
      TabIndex        =   2
      Top             =   930
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Line bLine2 
      BorderWidth     =   3
      X1              =   75
      X2              =   2165
      Y1              =   1470
      Y2              =   1470
   End
   Begin VB.Line tLine2 
      BorderColor     =   &H80000009&
      BorderWidth     =   3
      X1              =   75
      X2              =   2165
      Y1              =   900
      Y2              =   900
   End
   Begin VB.Line rLine2 
      BorderWidth     =   3
      X1              =   2160
      X2              =   2160
      Y1              =   930
      Y2              =   1470
   End
   Begin VB.Line lLine2 
      BorderColor     =   &H80000009&
      BorderWidth     =   3
      X1              =   60
      X2              =   60
      Y1              =   900
      Y2              =   1470
   End
   Begin VB.Line lLine 
      BorderColor     =   &H80000009&
      BorderWidth     =   3
      X1              =   60
      X2              =   60
      Y1              =   150
      Y2              =   720
   End
   Begin VB.Line rLine 
      BorderWidth     =   3
      X1              =   2160
      X2              =   2160
      Y1              =   180
      Y2              =   720
   End
   Begin VB.Line tLine 
      BorderColor     =   &H80000009&
      BorderWidth     =   3
      X1              =   75
      X2              =   2105
      Y1              =   150
      Y2              =   150
   End
   Begin VB.Line bLine 
      BorderWidth     =   3
      X1              =   75
      X2              =   2165
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Menu mnuRead 
      Caption         =   "&ReadMe"
   End
End
Attribute VB_Name = "frm3dBut"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
bLine.BorderColor = &H80000009
rLine.BorderColor = &H80000009
tLine.BorderColor = &H80000008
lLine.BorderColor = &H80000008
End Sub

Private Sub Command6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'Command6.Visible = True

End Sub

Private Sub Command6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'Command6.Visible = True
bLine.BorderColor = &H80000008
rLine.BorderColor = &H80000008
tLine.BorderColor = &H80000009
lLine.BorderColor = &H80000009
End Sub



Private Sub Command7_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
bLine2.BorderColor = &H80000009
rLine2.BorderColor = &H80000009
tLine2.BorderColor = &H80000008
lLine2.BorderColor = &H80000008

End Sub

Private Sub Command7_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
bLine2.BorderColor = &H80000008
rLine2.BorderColor = &H80000008
tLine2.BorderColor = &H80000009
lLine2.BorderColor = &H80000009
End Sub

Private Sub Form_Load()
' 3D buttons are illusions.  There are four lines around a command button
' These lines are moved and sized according to the size and position
' of the command7.  You don't need to move the lines at all, this sub routine does
' it for you.  Just move the command button and resize it and the lines will
' place themselves around it automatically.

tLine2.X1 = Command7.Left - 75
tLine2.X2 = Command7.Left + Command7.Width + 75
bLine2.X1 = Command7.Left - 75
bLine2.X2 = Command7.Left + Command7.Width + 75
rLine2.X1 = Command7.Left + Command7.Width + 75
rLine2.X2 = Command7.Left + Command7.Width + 75
lLine2.X1 = Command7.Left - 75
lLine2.X2 = Command7.Left - 75
rLine2.Y1 = Command7.Top - 75
rLine2.Y2 = Command7.Top + Command7.Height + 75
lLine2.Y1 = Command7.Top - 75
lLine2.Y2 = Command7.Top + Command7.Height + 75
tLine2.Y1 = Command7.Top - 75
tLine2.Y2 = Command7.Top - 75
bLine2.Y1 = Command7.Top + Command7.Height + 75
bLine2.Y2 = Command7.Top + Command7.Height + 75


End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'Command6.Visible = True

End Sub

Private Sub mnuRead_Click()
MsgBox "This is very simple to do.  First, go back to design time" _
& " and look at Private Sub Form_Load(). This is where all the good stuff happens " _
& "with the button you move and resize during design time."
End Sub
