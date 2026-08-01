unit UnitAluno;

interface

uses UnitPessoa;

type
  TAluno = class(TPessoa)
  private
    FMatricula : string;
  public
    procedure SetMatricula(Matricula : string);
    function GetMatricula: string;
    function GetDados : string; Override;
  end;

implementation

procedure TAluno.SetMatricula(Matricula: string);
begin
  FMatricula := Matricula;
end;

function TAluno.GetMatricula: string;
begin
  result := FMatricula;
end;

function TAluno.GetDados: string;
begin
  result := inherited GetDados + sLineBreak + 'Matriula: ' + GetMatricula;
end;

end.
