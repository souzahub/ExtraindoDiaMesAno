object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Extraindo Dia, M'#234's e Ano'
  ClientHeight = 193
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 88
    Width = 121
    Height = 25
    Caption = 'Resultado'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edAnoNasc: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    MaxLength = 4
    TabOrder = 1
    TextHint = 'Ano Nascimento'
  end
  object Memo1: TMemo
    Left = 160
    Top = 24
    Width = 265
    Height = 89
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
