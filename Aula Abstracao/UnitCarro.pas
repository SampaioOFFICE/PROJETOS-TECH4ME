unit UnitCarro;

interface

uses UnitAutenticavel;

type
  TCarro = class(TInterfacedObject, IAutenticavel)
  private
    FPlaca: string;
  public
    property Placa : string read FPlaca write FPlaca;
    function Autenticar(Codigo : string) : Boolean;
  end;

implementation

function TCarro.Autenticar(Codigo: string): Boolean;
begin
  Result := Codigo = Placa;
end;

end.
