unit TelaCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmTelaCadastro = class(TForm)
    pnlCadastro: TPanel;
    pnlBotoes: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    lblNome: TLabel;
    lblPreço: TLabel;
    lblQuantidade: TLabel;
    edtNome: TEdit;
    edtPreco: TEdit;
    edtQuantidade: TEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function ValidarDados: Boolean;
  public
    { Public declarations }
  end;

var
  frmTelaCadastro: TfrmTelaCadastro;

implementation

function TfrmTelaCadastro.ValidarDados: Boolean;
var
  Preco: Double;
  Quantidade: Integer;
begin
  Result := False;

  if edtNome.Text = '' then
  begin
    ShowMessage('Informe o nome do produto.');
    edtNome.SetFocus;
    Exit;
  end;

  if edtPreco.Text = '' then
  begin
    ShowMessage('Informe o preço.');
    edtPreco.SetFocus;
    Exit;
  end;

  if edtQuantidade.Text = '' then
  begin
    ShowMessage('Informe a quantidade.');
    edtQuantidade.SetFocus;
    Exit;
  end;

  if not TryStrToFloat(edtPreco.Text, Preco) then
  begin
    ShowMessage('Preço inválido.');
    edtPreco.SetFocus;
    Exit;
  end;

  if Preco <= 0 then
  begin
    ShowMessage('O preço deve ser maior que zero.');
    edtPreco.SetFocus;
    Exit;
  end;

  if not TryStrToInt(edtQuantidade.Text, Quantidade) then
  begin
    ShowMessage('Quantidade inválida.');
    edtQuantidade.SetFocus;
    Exit;
  end;

  if Quantidade <= 0 then
  begin
    ShowMessage('A quantidade deve ser maior que zero.');
    edtQuantidade.SetFocus;
    Exit;
  end;

  Result := True;
end;

{$R *.dfm}

procedure TfrmTelaCadastro.btnSalvarClick(Sender: TObject);
begin
    if ValidarDados then
      ModalResult := mrOk;
end;

procedure TfrmTelaCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
