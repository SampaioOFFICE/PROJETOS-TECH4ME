program Abstracao;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {Form1},
  UnitPessoa in 'UnitPessoa.pas',
  UnitFuncionario in 'UnitFuncionario.pas',
  UnitAutenticavel in 'UnitAutenticavel.pas',
  UnitCarro in 'UnitCarro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
