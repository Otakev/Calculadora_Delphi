object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 575
  ClientWidth = 362
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = Pressionamento
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TResultado: TLabel
    Left = 32
    Top = 67
    Width = 321
    Height = 58
    Alignment = taRightJustify
    Caption = 'TRESULTADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object THistorico: TLabel
    Left = 273
    Top = 46
    Width = 54
    Height = 15
    BiDiMode = bdLeftToRight
    Caption = 'THistorico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = '@Malgun Gothic'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object btnHistorico: TSpeedButton
    Left = 320
    Top = 0
    Width = 40
    Height = 36
    Cursor = crHandPoint
    Align = alCustom
    BiDiMode = bdLeftToRight
    Flat = True
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001E000000710000
      00B5000000E0000000EE000000F8000000DD000000B6000000710000001A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001D000000A0000000FB000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FA0000
      00A20000001A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000056000000EF000000FF000000FA000000A80000
      005900000025000000090000000E000000250000005D000000AC000000FB0000
      00FF000000F00000005400000000000000000000000000000000000000000000
      0000000000000000006D000000FE000000FF000000AC00000020000000000000
      0000000000000000000000000000000000000000000000000000000000200000
      00B4000000FF000000FE0000006F000000000000000000000000000000000000
      000000000054000000FE000000FE0000006E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000077000000FE000000FD000000540000000000000000000000000000
      001D000000F2000000FF0000006F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000077000000FF000000F00000001A00000000000000000000
      00A3000000FF000000AE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000B4000000FF000000A1000000000000001B0000
      00FC000000FA0000001D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000027000000FB000000FA0000001B000000760000
      00FF000000A50000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000160000006900000000000000000000
      0000000000000000000000000000000000B0000000FF00000070000000B50000
      00FF000000580000000000000000000000000000000000000000000000000000
      0000000000000000000000000016000000D3000000FF0000006A000000000000
      000000000000000000000000000000000060000000FF000000B5000000E30000
      00FF000000210000000000000000000000000000000000000000000000000000
      00000000000000000015000000D2000000FF000000D700000019000000000000
      00000000000000000000000000000000002E000000FF000000DD000000F60000
      00FF0000000B0000000000000000000000000000000000000000000000000000
      000000000000000000D3000000FF000000D30000001600000000000000000000
      000000000000000000000000000000000011000000FF000000F6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000160000000000000000000000000000
      000000000000000000000000000000000016000000FF000000F3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000000000002D000000FF000000E0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000062000000FF000000B5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000B5000000FF00000072000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000026000000FC000000FB0000001D000000000000
      000000000058000000EB000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000B9000000FF000000A000000000000000000000
      0000000000EB000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000007E000000FF000000EF0000001E00000000000000000000
      0000000000FF000000FF000000FE000000770000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000007D000000FE000000FE000000560000000000000000000000000000
      0000000000FF000000FF000000FE000000FF000000B100000022000000000000
      0000000000000000000000000000000000000000000000000000000000290000
      00B7000000FF000000FE0000006D000000000000000000000000000000000000
      0000000000FF000000FF0000004D000000ED000000FF000000FA000000B00000
      005B0000002900000011000000110000002E0000005E000000B1000000FB0000
      00FF000000F20000005400000000000000000000000000000000000000000000
      0000000000FF000000FF000000000000001C0000009B000000F9000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FC0000
      00A30000001D0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF0000000000000000000000000000001C0000006C0000
      00B4000000DB000000F4000000F6000000E3000000B4000000760000001B0000
      0000000000000000000000000000000000000000000000000000}
    ParentBiDiMode = False
    StyleElements = []
    OnClick = btnHistoricoClick
  end
  object btnporcent: TButton
    AlignWithMargins = True
    Left = 15
    Top = 147
    Width = 80
    Height = 60
    Caption = '%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 0
    OnClick = btnporcentClick
  end
  object btnCE: TButton
    AlignWithMargins = True
    Left = 101
    Top = 147
    Width = 80
    Height = 60
    Caption = 'CE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 1
  end
  object btnC: TButton
    AlignWithMargins = True
    Left = 187
    Top = 147
    Width = 80
    Height = 60
    Caption = 'C'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 2
    OnClick = btnCClick
  end
  object btndel: TButton
    AlignWithMargins = True
    Left = 273
    Top = 147
    Width = 80
    Height = 60
    Caption = 'DELETE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 3
    OnClick = btndelClick
    OnKeyDown = Deletar
  end
  object btnx2: TButton
    AlignWithMargins = True
    Left = 101
    Top = 213
    Width = 80
    Height = 60
    Caption = 'x'#178
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 4
    OnClick = btnx2Click
  end
  object btnraiz: TButton
    AlignWithMargins = True
    Left = 187
    Top = 213
    Width = 80
    Height = 60
    Caption = #178#8730'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 5
    OnClick = btnraizClick
  end
  object btndiv: TButton
    AlignWithMargins = True
    Left = 273
    Top = 213
    Width = 80
    Height = 60
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 6
    OnClick = btndivClick
  end
  object btn1x2: TButton
    AlignWithMargins = True
    Left = 15
    Top = 213
    Width = 80
    Height = 60
    Caption = #185'/x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 7
    OnClick = btn1x2Click
  end
  object btn8: TButton
    AlignWithMargins = True
    Left = 101
    Top = 283
    Width = 80
    Height = 60
    Caption = '8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 8
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btn5: TButton
    AlignWithMargins = True
    Left = 101
    Top = 349
    Width = 80
    Height = 60
    Caption = '5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 9
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btn9: TButton
    AlignWithMargins = True
    Left = 187
    Top = 283
    Width = 80
    Height = 60
    Caption = '9'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 10
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btn6: TButton
    AlignWithMargins = True
    Left = 187
    Top = 349
    Width = 80
    Height = 60
    Caption = '6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 11
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btnx: TButton
    AlignWithMargins = True
    Left = 273
    Top = 283
    Width = 80
    Height = 60
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 12
    OnClick = btnxClick
  end
  object btnsub: TButton
    AlignWithMargins = True
    Left = 273
    Top = 349
    Width = 80
    Height = 60
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 13
    OnClick = btnsubClick
  end
  object btn4: TButton
    AlignWithMargins = True
    Left = 15
    Top = 349
    Width = 80
    Height = 60
    Caption = '4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 14
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btn7: TButton
    AlignWithMargins = True
    Left = 15
    Top = 283
    Width = 80
    Height = 60
    Caption = '7'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 15
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btn1: TButton
    AlignWithMargins = True
    Left = 15
    Top = 419
    Width = 80
    Height = 60
    Caption = '1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 16
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btn2: TButton
    AlignWithMargins = True
    Left = 101
    Top = 419
    Width = 80
    Height = 60
    Caption = '2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 17
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btn3: TButton
    AlignWithMargins = True
    Left = 187
    Top = 419
    Width = 80
    Height = 60
    Caption = '3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 18
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btnadd: TButton
    AlignWithMargins = True
    Left = 273
    Top = 419
    Width = 80
    Height = 60
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 19
    OnClick = btnaddClick
  end
  object btndot: TButton
    AlignWithMargins = True
    Left = 187
    Top = 485
    Width = 80
    Height = 60
    Caption = '.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 20
    OnClick = btndotClick
  end
  object btn0: TButton
    AlignWithMargins = True
    Left = 101
    Top = 485
    Width = 80
    Height = 60
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 21
    OnClick = NumeroClick
    OnKeyPress = Pressionamento
  end
  object btnaddsub: TButton
    AlignWithMargins = True
    Left = 15
    Top = 485
    Width = 80
    Height = 60
    Caption = '+/-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageAlignment = iaCenter
    ParentFont = False
    TabOrder = 22
    OnClick = btnaddsubClick
  end
  object pnl2: TPanel
    Left = 273
    Top = 485
    Width = 80
    Height = 60
    BevelOuter = bvNone
    Color = 12088095
    ParentBackground = False
    TabOrder = 24
    object btnigual: TSpeedButton
      Left = 0
      Top = 0
      Width = 80
      Height = 60
      Align = alClient
      Caption = '='
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = '@Microsoft JhengHei'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnigualClick
      OnMouseEnter = btnigualMouseEnter
      OnMouseLeave = btnigualMouseLeave
      ExplicitWidth = 81
      ExplicitHeight = 57
    end
  end
  object plHistorico: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 575
    Align = alLeft
    Alignment = taRightJustify
    Caption = 'Ainda n'#227'o h'#225' hist'#243'rico...'
    Color = clWhite
    ParentBackground = False
    TabOrder = 23
    DesignSize = (
      153
      575)
    object ListaHistorico: TListView
      Left = -28
      Top = 0
      Width = 181
      Height = 577
      Anchors = [akTop, akRight]
      BevelInner = bvSpace
      BiDiMode = bdLeftToRight
      Columns = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '@Microsoft JhengHei'
      Font.Style = [fsBold]
      IconOptions.AutoArrange = True
      GroupView = True
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      ViewStyle = vsList
    end
  end
end
