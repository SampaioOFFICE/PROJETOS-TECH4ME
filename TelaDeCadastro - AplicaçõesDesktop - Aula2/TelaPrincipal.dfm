object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 397
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pgcCadastro: TPageControl
    Left = 8
    Top = 8
    Width = 425
    Height = 377
    ActivePage = tbsDadosPessoais
    TabOrder = 0
    object tbsDadosPessoais: TTabSheet
      Caption = 'Dados Pessoais'
      object grpDadosPessoais: TGroupBox
        Left = 16
        Top = 3
        Width = 385
        Height = 278
        Caption = 'Informa'#231#245'es'
        TabOrder = 0
        object lblNome: TLabel
          Left = 24
          Top = 43
          Width = 33
          Height = 15
          Caption = 'Nome'
        end
        object lblCPF: TLabel
          Left = 24
          Top = 112
          Width = 21
          Height = 15
          Caption = 'CPF'
        end
        object lblSexo: TLabel
          Left = 24
          Top = 176
          Width = 24
          Height = 15
          Caption = 'Sexo'
        end
        object imgFotoPerfil: TImage
          Left = 224
          Top = 64
          Width = 137
          Height = 156
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
        end
        object lblFotoPerfil: TLabel
          Left = 256
          Top = 43
          Width = 70
          Height = 15
          Caption = 'Foto de perfil'
        end
        object edtName: TEdit
          Left = 24
          Top = 64
          Width = 177
          Height = 23
          TabOrder = 0
        end
        object edtCPF: TEdit
          Left = 24
          Top = 133
          Width = 177
          Height = 23
          TabOrder = 1
        end
        object cboSexo: TComboBox
          Left = 24
          Top = 197
          Width = 177
          Height = 23
          TabOrder = 2
          Items.Strings = (
            'Feminino'
            'Masculino')
        end
        object chkAtivo: TCheckBox
          Left = 24
          Top = 240
          Width = 177
          Height = 17
          Caption = 'Ativo'
          TabOrder = 3
        end
        object btnInserirImagem: TButton
          Left = 224
          Top = 240
          Width = 137
          Height = 17
          Caption = 'Inserir imagem'
          TabOrder = 4
        end
      end
      object pnlDadosPessoais: TPanel
        Left = 16
        Top = 295
        Width = 385
        Height = 42
        TabOrder = 1
        object btnSalvar: TButton
          Left = 216
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
        end
        object btnCancelar: TButton
          Left = 297
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
        end
      end
    end
    object tbsContato: TTabSheet
      Caption = 'Contato'
      ImageIndex = 1
      object grpContato: TGroupBox
        Left = 16
        Top = 10
        Width = 385
        Height = 271
        TabOrder = 0
        object lblEmail: TLabel
          Left = 23
          Top = 35
          Width = 34
          Height = 15
          Caption = 'E-mail'
        end
        object lblTelefone: TLabel
          Left = 23
          Top = 104
          Width = 45
          Height = 15
          Caption = 'Telefone'
        end
        object edtEmail: TEdit
          Left = 23
          Top = 56
          Width = 178
          Height = 23
          TabOrder = 0
        end
        object edtTelefone: TEdit
          Left = 23
          Top = 125
          Width = 178
          Height = 23
          TabOrder = 1
          Text = ' '
        end
      end
    end
    object tbsObservacoes: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 2
      object lblCarregamento: TLabel
        Left = 16
        Top = 288
        Width = 76
        Height = 15
        Caption = 'Carregamento'
      end
      object memObservacoes: TMemo
        Left = 16
        Top = 10
        Width = 385
        Height = 271
        TabOrder = 0
      end
      object ProgressBar1: TProgressBar
        Left = 16
        Top = 309
        Width = 385
        Height = 25
        TabOrder = 1
      end
    end
  end
end
