unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitAluno, UnitProfessor;

type
  TForm1 = class(TForm)
    memoInfo: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Aluno: TAluno;
  Professor: TProfessor;
begin
  Aluno := TAluno.Create;
  Aluno.SetNome('João');
  Aluno.SetCPF('123');
  Aluno.SetMatricula('00001');

  Professor := TProfessor.Create;
  Professor.SetNome('Leandro');
  Professor.SetCPF('456');
  Professor.SetEspecialidade('Backend');

  memoInfo.Lines.Add('=== Aluno ===');
  memoInfo.Lines.Add(Aluno.GetDados);
  memoInfo.Lines.Add('');
  memoInfo.Lines.Add('=== Professor ===');
  memoInfo.Lines.Add(Professor.GetDados);
end;

end.
