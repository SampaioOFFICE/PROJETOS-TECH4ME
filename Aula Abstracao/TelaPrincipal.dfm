object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblAutenticar: TLabel
    Left = 272
    Top = 120
    Width = 55
    Height = 15
    Caption = 'Autenticar'
  end
  object btnFuncionario: TButton
    Left = 208
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Funcion'#225'rio'
    TabOrder = 0
    OnClick = btnFuncionarioClick
  end
  object btnCarro: TButton
    Left = 320
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Carro'
    TabOrder = 1
    OnClick = btnCarroClick
  end
end
