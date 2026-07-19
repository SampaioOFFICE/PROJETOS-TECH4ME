unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, UnitPessoa, UnitConta, System.Generics.Collections;

var
ListaPessoas:  TObjectList<TPessoa>;
ListaContas: TObjectList<TConta>;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    grpCadastroPessoas: TGroupBox;
    lblNome: TLabel;
    edtNome: TEdit;
    lblCPF: TLabel;
    edtCPF: TEdit;
    btnCadastrarPessoa: TButton;
    tbsCadastro: TTabSheet;
    tbsInformacoes: TTabSheet;
    PageCadastro: TPageControl;
    tbsPessoas: TTabSheet;
    tbsContas: TTabSheet;
    grpCadastroContas: TGroupBox;
    lblPessoa: TLabel;
    lblNumeroContaCadastro: TLabel;
    edtNumeroContaCadastro: TEdit;
    cmbPessoa: TComboBox;
    btnCadastrarConta: TButton;
    grpAcessarConta: TGroupBox;
    lblNumeroContaInformacoes: TLabel;
    edtNumeroContaInformacoes: TEdit;
    btnAcessarInformacoes: TButton;
    lblInformacoesConta: TLabel;
    memoInfo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnCadastrarContaClick(Sender: TObject);
    procedure btnAcessarInformacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAcessarInformacoesClick(Sender: TObject);
var
  NumeroDigitado : Integer;
  Conta : TConta;
  Encontrou : Boolean;
begin
  NumeroDigitado := StrToInt(edtNumeroContaInformacoes.Text);
  Encontrou := False;

  for Conta in ListaContas do
  begin
    if conta.GetNumero = NumeroDigitado then
      begin
        memoInfo.Lines.Clear;
        memoInfo.Lines.Add('Bem-Vindo!');
        memoInfo.Lines.Add('Conta: ' + IntToStr(Conta.GetNumero));
        memoInfo.Lines.Add('Titular: ' + Conta.GetNomePessoa);
        memoInfo.Lines.Add('Saldo: ' + FloatToStr(Conta.getSaldo));
        Encontrou := True;
        Break;
      end;

      If not Encontrou then
        ShowMessage('Conta não cadastrada!');
  end;

end;

procedure TForm1.btnCadastrarContaClick(Sender: TObject);
var
  Conta : TConta;
  PessoaCadastrada : TPessoa;
begin
  if cmbPessoa.ItemIndex = -1 then
  begin
    ShowMessage('Selecione uma pessoa!');
    Exit;
  end;

  PessoaCadastrada := ListaPessoas[cmbPessoa.ItemIndex];
  Conta := TConta.Create(StrToInt(edtNumeroContaCadastro.Text), PessoaCadastrada);
  ListaContas.Add(Conta);
  ShowMessage('Conta cadastrada: ');
  edtNumeroContaCadastro.Clear;
end;

procedure TForm1.btnCadastrarPessoaClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa := TPessoa.Create(edtNome.Text, edtCPF.Text);
  ListaPessoas.Add(Pessoa);
  ShowMessage('Pessoa cadastrada!');
  edtNome.Clear;
  edtCPF.Clear;
  cmbPessoa.Items.Add(Pessoa.GetNome);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ListaPessoas.Destroy;
  ListaContas.Destroy;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListaPessoas :=  TObjectList<TPessoa>.Create;
  ListaContas :=  TObjectList<TConta>.Create;
end;

end.
