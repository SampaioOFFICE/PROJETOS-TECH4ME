object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 551
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 32
    Top = 32
    Width = 401
    Height = 479
    ActivePage = tbsInformacoes
    TabOrder = 0
    object tbsCadastro: TTabSheet
      Caption = 'Cadastro'
      object PageCadastro: TPageControl
        Left = 24
        Top = 16
        Width = 345
        Height = 409
        ActivePage = tbsContas
        TabOrder = 0
        object tbsPessoas: TTabSheet
          Caption = 'Pessoas'
          object grpCadastroPessoas: TGroupBox
            Left = 48
            Top = 34
            Width = 241
            Height = 209
            Caption = 'Cadastro de Pessoas'
            TabOrder = 0
            object lblNome: TLabel
              Left = 40
              Top = 40
              Width = 36
              Height = 15
              Caption = 'Nome:'
            end
            object lblCPF: TLabel
              Left = 40
              Top = 104
              Width = 24
              Height = 15
              Caption = 'CPF:'
            end
            object edtNome: TEdit
              Left = 40
              Top = 61
              Width = 161
              Height = 23
              TabOrder = 0
            end
            object edtCPF: TEdit
              Left = 40
              Top = 125
              Width = 161
              Height = 23
              TabOrder = 1
            end
            object btnCadastrarPessoa: TButton
              Left = 80
              Top = 168
              Width = 75
              Height = 25
              Caption = 'Cadastrar'
              TabOrder = 2
              OnClick = btnCadastrarPessoaClick
            end
          end
        end
        object tbsContas: TTabSheet
          Caption = 'Contas'
          ImageIndex = 1
          object grpCadastroContas: TGroupBox
            Left = 48
            Top = 34
            Width = 241
            Height = 209
            Caption = 'Cadastro de Contas'
            TabOrder = 0
            object lblPessoa: TLabel
              Left = 40
              Top = 40
              Width = 39
              Height = 15
              Caption = 'Pessoa:'
            end
            object lblNumeroContaCadastro: TLabel
              Left = 40
              Top = 104
              Width = 98
              Height = 15
              Caption = 'Numero da Conta:'
            end
            object edtNumeroContaCadastro: TEdit
              Left = 40
              Top = 125
              Width = 161
              Height = 23
              TabOrder = 0
            end
            object cmbPessoa: TComboBox
              Left = 40
              Top = 61
              Width = 161
              Height = 23
              TabOrder = 1
            end
            object btnCadastrarConta: TButton
              Left = 80
              Top = 168
              Width = 75
              Height = 25
              Caption = 'Cadastrar'
              TabOrder = 2
              OnClick = btnCadastrarContaClick
            end
          end
        end
      end
    end
    object tbsInformacoes: TTabSheet
      Caption = 'Informa'#231#245'es'
      ImageIndex = 1
      object lblInformacoesConta: TLabel
        Left = 64
        Top = 280
        Width = 120
        Height = 15
        Caption = 'Informa'#231#245'es da Conta:'
      end
      object grpAcessarConta: TGroupBox
        Left = 64
        Top = 32
        Width = 273
        Height = 193
        Caption = 'Acessar Conta'
        TabOrder = 0
        object lblNumeroContaInformacoes: TLabel
          Left = 48
          Top = 51
          Width = 98
          Height = 15
          Caption = 'Numero da Conta:'
        end
        object edtNumeroContaInformacoes: TEdit
          Left = 48
          Top = 72
          Width = 177
          Height = 23
          TabOrder = 0
        end
        object btnAcessarInformacoes: TButton
          Left = 96
          Top = 136
          Width = 75
          Height = 25
          Caption = 'Acessar'
          TabOrder = 1
          OnClick = btnAcessarInformacoesClick
        end
      end
      object memoInfo: TMemo
        Left = 64
        Top = 301
        Width = 273
        Height = 100
        Lines.Strings = (
          '')
        TabOrder = 1
      end
    end
  end
end
