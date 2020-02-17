VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7275
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12045
   LinkTopic       =   "Form1"
   ScaleHeight     =   7275
   ScaleWidth      =   12045
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "Exit"
      Height          =   615
      Left            =   9120
      TabIndex        =   12
      Top             =   6360
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Delete"
      Height          =   615
      Left            =   7080
      TabIndex        =   11
      Top             =   6240
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Edit"
      Height          =   615
      Left            =   4920
      TabIndex        =   10
      Top             =   6360
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save"
      Height          =   735
      Left            =   2760
      TabIndex        =   9
      Top             =   6360
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "New"
      Height          =   615
      Left            =   1080
      TabIndex        =   8
      Top             =   6360
      Width           =   1215
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Users\SAHIL\Desktop\collegedata.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   975
      Left            =   8040
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "BCA"
      Top             =   3240
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      DataField       =   "S_Contact"
      DataSource      =   "Data1"
      Height          =   855
      Left            =   4320
      TabIndex        =   7
      Text            =   "Text4"
      Top             =   4920
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      DataField       =   "S_Address"
      DataSource      =   "Data1"
      Height          =   1095
      Left            =   4320
      TabIndex        =   6
      Text            =   "Text3"
      Top             =   3360
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      DataField       =   "S_Name"
      DataSource      =   "Data1"
      Height          =   975
      Left            =   4320
      TabIndex        =   5
      Text            =   "Text2"
      Top             =   2040
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      DataField       =   "S_ID"
      DataSource      =   "Data1"
      Height          =   975
      Left            =   4320
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   600
      Width           =   2175
   End
   Begin VB.Label Label4 
      Caption         =   "S_CONTACT"
      Height          =   975
      Left            =   1440
      TabIndex        =   3
      Top             =   4800
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "S_ADDRESS"
      Height          =   1095
      Left            =   1440
      TabIndex        =   2
      Top             =   3360
      Width           =   2295
   End
   Begin VB.Label Label2 
      Caption         =   "S_NAME"
      Height          =   1215
      Left            =   1560
      TabIndex        =   1
      Top             =   1920
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "S_ID"
      Height          =   975
      Left            =   1560
      TabIndex        =   0
      Top             =   600
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.AddNew
End Sub

Private Sub Command2_Click()
Data1.Recordset.Update
End Sub

Private Sub Command3_Click()
Data1.Recordset.Edit
Data1.Recordset.Update
End Sub

Private Sub Command4_Click()
Data1.Recordset.Delete
Data1.Recordset.MoveNext
Data1.Recordset.Edit
Data1.Recordset.Update
End Sub

Private Sub Command5_Click()
End
End Sub
