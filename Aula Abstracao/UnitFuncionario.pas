unit UnitFuncionario;

interface

uses UnitPessoa, SysUtils, UnitAutenticavel;

type
  TFuncionario = class(TPessoa, IAutenticavel)
  private
    FMatricula : string;
  public
    property Matricula : string read FMatricula write FMatricula;
    function Identificar: string; override;
    function Autenticar(Codigo : string) : Boolean;
  end;

implementation

function TFuncionario.Identificar: string;
begin
  Result := format('Nome: %s, Matricula: %s', [Nome, Matricula]);
end;

function TFuncionario.Autenticar(Codigo: string): Boolean;
begin
  Result := Codigo = Matricula;
end;

end.
