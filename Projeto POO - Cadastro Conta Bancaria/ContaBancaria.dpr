program ContaBancaria;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {frmTelaPrincipal},
  Modelo.ContaBancaria in 'Modelo.ContaBancaria.pas',
  TelaContaBancariaCadastro in 'TelaContaBancariaCadastro.pas' {frmTelaContaBancaria},
  Excecoes in 'Excecoes.pas' {$R *.res};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TfrmTelaContaBancaria, frmTelaContaBancaria);
  Application.Run;
end.
