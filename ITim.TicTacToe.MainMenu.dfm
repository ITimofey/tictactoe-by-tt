object MainMenuForm: TMainMenuForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Tic-Tac-Toe'
  ClientHeight = 271
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonStart: TSpeedButton
    Left = 48
    Top = 184
    Width = 200
    Height = 25
    Caption = 'Start Game'
    OnClick = ButtonStartClick
  end
  object ButtonExit: TSpeedButton
    Left = 48
    Top = 215
    Width = 200
    Height = 25
    Caption = 'Exit'
    OnClick = ButtonExitClick
  end
  object Label1: TLabel
    Left = 72
    Top = 48
    Width = 42
    Height = 30
    Caption = 'Tic-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 84
    Width = 49
    Height = 30
    Caption = 'Tac-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 120
    Width = 42
    Height = 30
    Caption = 'Toe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
end
