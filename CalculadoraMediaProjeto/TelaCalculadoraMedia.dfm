object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 0
  Top = 0
  ClientHeight = 278
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlResultados: TPanel
    Left = 16
    Top = 206
    Width = 289
    Height = 64
    Color = clCadetblue
    ParentBackground = False
    TabOrder = 2
    object lblResultadoTitulo: TLabel
      Left = 20
      Top = 35
      Width = 65
      Height = 17
      Caption = 'Resultado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMediaTitulo: TLabel
      Left = 20
      Top = 12
      Width = 42
      Height = 17
      Caption = 'M'#233'dia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblResultado: TLabel
      Left = 91
      Top = 35
      Width = 182
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCoral
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMedia: TLabel
      Left = 68
      Top = 12
      Width = 205
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlNotas: TPanel
    Left = 16
    Top = 55
    Width = 289
    Height = 145
    Color = clCadetblue
    ParentBackground = False
    TabOrder = 1
    object lblNotaUm: TLabel
      Left = 20
      Top = 16
      Width = 45
      Height = 17
      Caption = 'Nota 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNotaTres: TLabel
      Left = 20
      Top = 74
      Width = 45
      Height = 17
      Caption = 'Nota 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblNotaDois: TLabel
      Left = 20
      Top = 45
      Width = 45
      Height = 17
      Caption = 'Nota 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNotaUm: TEdit
      Left = 80
      Top = 16
      Width = 193
      Height = 23
      Alignment = taCenter
      TabOrder = 0
      OnExit = EditExit
      OnKeyPress = EditKeyPress
    end
    object edtNotaTres: TEdit
      Left = 80
      Top = 74
      Width = 193
      Height = 23
      Alignment = taCenter
      TabOrder = 2
      OnExit = EditExit
      OnKeyPress = EditKeyPress
    end
    object edtNotaDois: TEdit
      Left = 80
      Top = 45
      Width = 193
      Height = 23
      Alignment = taCenter
      TabOrder = 1
      OnExit = EditExit
      OnKeyPress = EditKeyPress
    end
    object btnCalcularMedia: TButton
      Left = 8
      Top = 103
      Width = 273
      Height = 33
      Caption = 'Calcular M'#233'dia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = btnCalcularMediaClick
    end
  end
  object pnlCalculadora: TPanel
    Left = 16
    Top = 8
    Width = 289
    Height = 41
    Caption = 'Calculadora de M'#233'dia Escolar'
    Color = clTurquoise
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
end
