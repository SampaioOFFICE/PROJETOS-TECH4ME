unit UnitPessoa;

interface

type
  TPessoa = class
  private
    FNome : string;
    FCPF : string;
  public
    procedure SetNome(Nome: string);
    function GetNome: string;

    procedure SetCPF(CPF: string);
    function GetCPF: string;

    function GetDados : string; Virtual;
  end;

implementation

procedure TPessoa.SetNome(Nome: string);
begin
  FNome := Nome;
end;

function TPessoa.GetNome: string;
begin
  result := FNome;
end;

procedure TPessoa.SetCPF(CPF: string);
begin
  FCPF := CPF;
end;

function TPessoa.GetCPF: string;
begin
  result := FCPF;
end;

function TPessoa.GetDados: string;
begin
  result := 'Nome: ' + GetNome + sLineBreak + 'CPF: ' + GetCPF;
end;

end.
