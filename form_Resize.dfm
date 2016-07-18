object formResize: TformResize
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Image Resize'
  ClientHeight = 124
  ClientWidth = 155
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 10
    Height = 13
    Caption = 'X:'
  end
  object Label2: TLabel
    Left = 8
    Top = 46
    Width = 10
    Height = 13
    Caption = 'Y:'
  end
  object Edit1: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 70
    Top = 89
    Width = 75
    Height = 25
    Caption = 'Save'
    ModalResult = 1
    TabOrder = 2
    OnClick = btnOKClick
  end
end
