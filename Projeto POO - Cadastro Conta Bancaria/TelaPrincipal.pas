unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Modelo.ContaBancaria, TelaContaBancariaCadastro, Excecoes;

type
  TfrmTelaPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    memoInfoConta: TMemo;
    btnSacar: TButton;
    btnDepositar: TButton;
    btnCriarConta: TButton;
    btnExibirSaldo: TButton;
    edtOperacao: TEdit;
    lblMensagemedt: TLabel;
    pnlMenu: TPanel;
    memoSaldo: TMemo;
    lblSaldoAtual: TLabel;
    procedure memoInfoContaEnter(Sender: TObject);
    procedure memoSaldoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExibirSaldoClick(Sender: TObject);
    procedure btnCriarContaClick(Sender: TObject);
    procedure AtualizarInformacoes;
    procedure ExibirTelaCriarConta;
    procedure LimpaCampos;
    procedure OcultaSaldo;
    procedure btnSacarClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
  private
    ContaBancaria: TContaBancaria;
    frmTelaContaBancariaCadastro: TfrmTelaContaBancaria;
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

// procedure que executa ao clicar no botão 'Depositar'
procedure TfrmTelaPrincipal.btnDepositarClick(Sender: TObject);
var
  ValorOperacao: Double;
begin
  if ContaBancaria = nil then
  begin
    ShowMessage('Crie uma conta primeiro.');
    Exit;
  end;

  if not TryStrToFloat(edtOperacao.Text, ValorOperacao) then
  begin
    ShowMessage('Digite um valor válido.');
    Exit;
  end;

  ContaBancaria.Depositar(ValorOperacao);
  ShowMessage('Depósito realizado com sucesso!');
  AtualizarInformacoes;
end;

// procedure que executa ao clicar no botão 'Sacar'
procedure TfrmTelaPrincipal.btnSacarClick(Sender: TObject);
var
  ValorOperacao: Double;
begin
  try
    if ContaBancaria = nil then
    begin
      ShowMessage('Crie uma conta primeiro.');
      Exit;
    end;

    if not TryStrToFloat(edtOperacao.Text, ValorOperacao) then
    begin
      ShowMessage('Digite um valor válido.');
      Exit;
    end;

    ContaBancaria.Sacar(ValorOperacao);
    ShowMessage('Saque realizado com sucesso!');
    AtualizarInformacoes;
  except
    on E: ESaldoInsuficiente do
      ShowMessage(E.Message);
  end;
end;

// procedure que tras a telaContaBancariaCadastro ao clicar no botão de Criar conta
procedure TfrmTelaPrincipal.btnCriarContaClick(Sender: TObject);
begin
  ExibirTelaCriarConta;
end;

// procedure que chama a telaContaBancariaCadastro para a telaPrincipal
procedure TfrmTelaPrincipal.ExibirTelaCriarConta;
begin
  frmTelaContaBancariaCadastro := TfrmTelaContaBancaria.Create(Self);
  try
    if frmTelaContaBancariaCadastro.ShowModal = mrOk then
    begin
      ContaBancaria := TContaBancaria.Create;

      ContaBancaria.NumeroConta := frmTelaContaBancariaCadastro.NumeroConta;
      ContaBancaria.Titular := frmTelaContaBancariaCadastro.Titular;
      ContaBancaria.Saldo := 0.00;

      AtualizarInformacoes;
    end;
  finally
    frmTelaContaBancariaCadastro.Free;
  end;
end;

// procedure que controla a aparência do Saldo
procedure TfrmTelaPrincipal.btnExibirSaldoClick(Sender: TObject);
begin
  OcultaSaldo;
end;

// procedure que serve para atualizar as informações no 'TMemo' após o usuário realizar alguma ação
procedure TfrmTelaPrincipal.AtualizarInformacoes;
begin
  LimpaCampos;

  memoSaldo.Text := Format('R$%.2f', [ContaBancaria.Saldo]);

  memoInfoConta.Lines.Add('------------------------------------------------------------------');
  memoInfoConta.Lines.Add('Conta atual cadastrada');
  memoInfoConta.Lines.Add('------------------------------------------------------------------');
  memoInfoConta.Lines.Add('Titular: ' + ContaBancaria.Titular);
  memoInfoConta.Lines.Add('Número: ' + ContaBancaria.NumeroConta);
end;

// procedure que executa rotinas quando o form é criado
procedure TfrmTelaPrincipal.FormCreate(Sender: TObject);
begin
  ContaBancaria := TContaBancaria.Create;
  try
    ContaBancaria := nil;

    memoSaldo.Lines.Add('R$0,00');

    memoInfoConta.Lines.Add('------------------------------------------------------------------');
    memoInfoConta.Lines.Add('Nenhuma conta cadastrada');
    memoInfoConta.Lines.Add('------------------------------------------------------------------');
    memoInfoConta.Lines.Add('Titular: ');
    memoInfoConta.Lines.Add('Numero da Conta: ');
  finally
    ContaBancaria.Free;
  end;
end;

// procedures que tiram o foco do teclado dos componentes 'TMemo'
procedure TfrmTelaPrincipal.memoInfoContaEnter(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);
end;

procedure TfrmTelaPrincipal.memoSaldoEnter(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);
end;

// procedure que limpa os campos
procedure TfrmTelaPrincipal.LimpaCampos;
begin
  edtOperacao.Clear;
  memoSaldo.Clear;
  memoInfoConta.Clear;
end;

// procedure que tras a funcionalidade de ocultar o campo de saldo
procedure TfrmTelaPrincipal.OcultaSaldo;
begin
  if MemoSaldo.Text = '*****' then
  begin
    memoSaldo.Clear;
    if Assigned(ContaBancaria) then
      memoSaldo.Text := (format('R$%.2f', [ContaBancaria.Saldo]))
    else
      memoSaldo.Text := 'R$0,00';
    btnExibirSaldo.Caption := 'Ocultar';
  end
  else
  begin
    memoSaldo.Text := '*****';
    btnExibirSaldo.Caption := 'Exibir';
  end;
end;

end.
