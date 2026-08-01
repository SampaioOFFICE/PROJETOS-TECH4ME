program Polimorfismo;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {Form1},
  UnitPessoa in 'UnitPessoa.pas',
  UnitAluno in 'UnitAluno.pas',
  UnitProfessor in 'UnitProfessor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
