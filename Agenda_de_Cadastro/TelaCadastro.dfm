object frmTelaCadastro: TfrmTelaCadastro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produto'
  ClientHeight = 220
  ClientWidth = 219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object pnlCadastro: TPanel
    Left = 0
    Top = 0
    Width = 219
    Height = 179
    Align = alClient
    TabOrder = 0
    object lblNome: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object lblPreço: TLabel
      Left = 16
      Top = 66
      Width = 30
      Height = 15
      Caption = 'Preco'
    end
    object lblQuantidade: TLabel
      Left = 16
      Top = 119
      Width = 62
      Height = 15
      Caption = 'Quantidade'
    end
    object edtNome: TEdit
      Left = 16
      Top = 37
      Width = 188
      Height = 23
      TabOrder = 0
    end
    object edtPreco: TEdit
      Left = 16
      Top = 90
      Width = 188
      Height = 23
      TabOrder = 1
    end
    object edtQuantidade: TEdit
      Left = 16
      Top = 140
      Width = 188
      Height = 23
      TabOrder = 2
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 179
    Width = 219
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TButton
      Left = 48
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 129
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
