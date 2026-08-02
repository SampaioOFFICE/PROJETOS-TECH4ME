object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'Banco Tech4me - Projeto POO'
  ClientHeight = 388
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 59
    Width = 368
    Height = 329
    Align = alClient
    TabOrder = 0
    object lblMensagemedt: TLabel
      Left = 15
      Top = 219
      Width = 123
      Height = 15
      Caption = 'VALOR DA OPERA'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSaldoAtual: TLabel
      Left = 15
      Top = 8
      Width = 79
      Height = 15
      Caption = 'SALDO ATUAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object memoInfoConta: TMemo
      Left = 15
      Top = 58
      Width = 338
      Height = 139
      TabStop = False
      ReadOnly = True
      TabOrder = 2
      OnEnter = memoInfoContaEnter
    end
    object btnSacar: TButton
      Left = 15
      Top = 269
      Width = 170
      Height = 41
      Caption = 'Sacar'
      TabOrder = 4
      OnClick = btnSacarClick
    end
    object btnDepositar: TButton
      Left = 191
      Top = 269
      Width = 162
      Height = 42
      Caption = 'Depositar'
      TabOrder = 5
      OnClick = btnDepositarClick
    end
    object edtOperacao: TEdit
      Left = 15
      Top = 240
      Width = 338
      Height = 23
      TabOrder = 3
    end
    object btnExibirSaldo: TButton
      Left = 240
      Top = 29
      Width = 113
      Height = 23
      Caption = 'Ocultar'
      TabOrder = 1
      OnClick = btnExibirSaldoClick
    end
    object memoSaldo: TMemo
      Left = 15
      Top = 29
      Width = 219
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = memoSaldoEnter
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 59
    Align = alTop
    TabOrder = 1
    object btnCriarConta: TButton
      Left = 240
      Top = 9
      Width = 113
      Height = 44
      Caption = 'Criar Conta'
      TabOrder = 0
      OnClick = btnCriarContaClick
    end
  end
end
