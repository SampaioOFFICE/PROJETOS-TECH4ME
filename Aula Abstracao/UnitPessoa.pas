unit UnitPessoa;

interface

type
  TPessoa = class abstract(TInterfacedObject)
  private
    FNome : string;
  public
    property Nome: string read FNome write FNome;
    function Identificar : string; virtual; abstract;
  end;

implementation

end.
