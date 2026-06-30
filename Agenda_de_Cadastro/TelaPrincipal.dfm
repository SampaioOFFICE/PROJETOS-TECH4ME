object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 391
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnNovo: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TButton
      Left = 97
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
      Left = 178
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
  object pnlListaCadastro: TPanel
    Left = 0
    Top = 47
    Width = 490
    Height = 344
    Align = alBottom
    TabOrder = 1
    object grdContatos: TDBGrid
      Left = 1
      Top = 1
      Width = 488
      Height = 342
      Align = alClient
      DataSource = dtsContatos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object dtsContatos: TDataSource
    DataSet = cdsContatos
    OnDataChange = dtsContatosDataChange
    Left = 216
    Top = 111
  end
  object cdsContatos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 111
  end
end
