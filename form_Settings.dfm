object formSettings: TformSettings
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Placement Settings'
  ClientHeight = 196
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 10
    Height = 13
    Caption = 'X:'
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 10
    Height = 13
    Caption = 'Y:'
  end
  object Label3: TLabel
    Left = 8
    Top = 65
    Width = 32
    Height = 13
    Caption = 'Gap X:'
  end
  object Label4: TLabel
    Left = 8
    Top = 92
    Width = 32
    Height = 13
    Caption = 'Gap Y:'
  end
  object Label5: TLabel
    Left = 8
    Top = 126
    Width = 45
    Height = 13
    Caption = 'Rotation:'
  end
  object Image1: TImage
    Left = 192
    Top = 8
    Width = 145
    Height = 136
  end
  object Label6: TLabel
    Left = 8
    Top = 153
    Width = 24
    Height = 13
    Caption = 'Part:'
  end
  object Edit1: TEdit
    Left = 56
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 56
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 56
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 56
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 56
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btnOk: TButton
    Left = 263
    Top = 163
    Width = 75
    Height = 25
    Caption = 'Save'
    ModalResult = 1
    TabOrder = 5
    OnClick = btnOkClick
  end
  object Edit6: TEdit
    Left = 56
    Top = 150
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
