unit TelaContaBancariaCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Modelo.ContaBancaria;

type
  TfrmTelaContaBancaria = class(TForm)
    pnlContaBancariaCadastro: TPanel;
    btnCadastrarConta: TButton;
    btnCancelarConta: TButton;
    lblTitularConta: TLabel;
    edtTitularConta: TEdit;
    lblNumeroConta: TLabel;
    edtNumeroConta: TEdit;
    procedure btnCancelarContaClick(Sender: TObject);
    procedure btnCadastrarContaClick(Sender: TObject);
  private
    FNumeroConta: string;
    FTitular: string;

  public
    property NumeroConta: string read FNumeroConta;
    property Titular: string read FTitular;
  end;

var
  frmTelaContaBancaria: TfrmTelaContaBancaria;

implementation

{$R *.dfm}

// procedure que fecha o modal quando o usuário clica em 'Cadastrar'
procedure TfrmTelaContaBancaria.btnCadastrarContaClick(Sender: TObject);
begin
  FNumeroConta := edtNumeroConta.Text;
  FTitular := edtTitularConta.Text;

  ModalResult := mrOk;
end;

// procedure que fecha o modal quando o usuário clica em 'Cancelar'
procedure TfrmTelaContaBancaria.btnCancelarContaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
