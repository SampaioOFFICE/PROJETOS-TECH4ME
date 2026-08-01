unit UnitProfessor;

interface

uses UnitPessoa;

type
  TProfessor = class(TPessoa)
  private
    FEspecialidade : string;
  public
    procedure SetEspecialidade(Especialidade : string);
    function GetEspecialidade: string;
    function GetDados : string; Override;
  end;

implementation

procedure TProfessor.SetEspecialidade(Especialidade: string);
begin
  FEspecialidade := Especialidade;
end;

function TProfessor.GetEspecialidade: string;
begin
  result := FEspecialidade;
end;

function TProfessor.GetDados: string;
begin
  result := inherited GetDados + sLineBreak + 'Especialidade: ' + GetEspecialidade;
end;

end.
