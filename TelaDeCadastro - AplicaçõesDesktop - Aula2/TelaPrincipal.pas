unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pgcCadastro: TPageControl;
    tbsDadosPessoais: TTabSheet;
    tbsContato: TTabSheet;
    tbsObservacoes: TTabSheet;
    grpDadosPessoais: TGroupBox;
    lblNome: TLabel;
    edtName: TEdit;
    lblCPF: TLabel;
    edtCPF: TEdit;
    lblSexo: TLabel;
    imgFotoPerfil: TImage;
    cboSexo: TComboBox;
    lblFotoPerfil: TLabel;
    chkAtivo: TCheckBox;
    btnInserirImagem: TButton;
    grpContato: TGroupBox;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblTelefone: TLabel;
    edtTelefone: TEdit;
    memObservacoes: TMemo;
    pnlDadosPessoais: TPanel;
    ProgressBar1: TProgressBar;
    lblCarregamento: TLabel;
    btnSalvar: TButton;
    btnCancelar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}






end.
