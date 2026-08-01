unit UnitAutenticavel;

interface

type
  IAutenticavel = interface
    ['{EB933F5F-11C3-4206-8315-F0DA6340D5B6}']  // GUID
    function Autenticar(Codigo: string) : Boolean;
  end;

implementation

end.
