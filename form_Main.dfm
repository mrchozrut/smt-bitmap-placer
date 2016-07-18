object formMain: TformMain
  Left = 0
  Top = 0
  Caption = 'SMT Bitmap to P&P'
  ClientHeight = 600
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 909
    Height = 580
    Align = alClient
    AutoSize = True
    Center = True
    Stretch = True
    OnClick = Image1Click
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 425
    ExplicitHeight = 345
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 580
    Width = 909
    Height = 20
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object MainMenu: TMainMenu
    Left = 848
    Top = 80
    object Main1: TMenuItem
      Caption = 'Main'
      object LoadImage1: TMenuItem
        Caption = 'Load Image'
        OnClick = LoadImage1Click
      end
      object Resize1: TMenuItem
        Caption = 'Resize'
        OnClick = Resize1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Settings1: TMenuItem
      Caption = 'Settings'
      object PlacementSetup1: TMenuItem
        Caption = 'Placement Setup'
        OnClick = PlacementSetup1Click
      end
    end
    object Export1: TMenuItem
      Caption = 'Export'
      object CoordinatesTXT1: TMenuItem
        Caption = 'Coordinates TXT'
        OnClick = CoordinatesTXT1Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    FilterIndex = 0
    InitialDir = 'c:'
    Options = []
    Left = 848
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All (*.png_old;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico' +
      ';*.emf;*.wmf)|*.png_old;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.t' +
      'iff;*.ico;*.emf;*.wmf|Portable Network Graphics (*.png_old)|*.pn' +
      'g_old|GIF Image (*.gif)|*.gif|Portable Network Graphics (*.png)|' +
      '*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.j' +
      'peg|Bitmaps (*.bmp)|*.bmp|TIFF Images (*.tif)|*.tif|TIFF Images ' +
      '(*.tiff)|*.tiff|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*' +
      '.emf|Metafiles (*.wmf)|*.wmf'
    InitialDir = 'c:'
    Left = 848
    Top = 136
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    FileName = 'smt_output.txt'
    Filter = 'Text Output|.txt'
    InitialDir = 'c:\'
    Left = 848
    Top = 192
  end
end
