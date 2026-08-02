object frmTelaContaBancaria: TfrmTelaContaBancaria
  Left = 0
  Top = 0
  Caption = 'Conta Bancaria Cadastro'
  ClientHeight = 190
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlContaBancariaCadastro: TPanel
    Left = 0
    Top = 0
    Width = 298
    Height = 190
    Align = alClient
    TabOrder = 0
    object lblTitularConta: TLabel
      Left = 14
      Top = 19
      Width = 85
      Height = 15
      Caption = 'Titular da Conta'
    end
    object lblNumeroConta: TLabel
      Left = 14
      Top = 80
      Width = 95
      Height = 15
      Caption = 'Numero da Conta'
    end
    object btnCadastrarConta: TButton
      Left = 14
      Top = 144
      Width = 131
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = btnCadastrarContaClick
    end
    object btnCancelarConta: TButton
      Left = 160
      Top = 144
      Width = 121
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarContaClick
    end
    object edtTitularConta: TEdit
      Left = 14
      Top = 40
      Width = 267
      Height = 23
      TabOrder = 2
    end
    object edtNumeroConta: TEdit
      Left = 14
      Top = 101
      Width = 267
      Height = 23
      TabOrder = 3
    end
  end
end
