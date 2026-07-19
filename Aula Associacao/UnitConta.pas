unit UnitConta;

interface

uses UnitPessoa;

type
    TConta = class
    private
      FNumero : Integer;
      FSaldo : Real;
      FPessoa : TPessoa;

    public
      constructor Create(Numero: Integer; Pessoa: TPessoa);
      function GetNumero : Integer;
      function GetSaldo : Real;
      function GetNomePessoa : string;
    end;

implementation

constructor TConta.Create(Numero: Integer; Pessoa: TPessoa);
begin
  FNumero := Numero;
  FSaldo := 0;
  FPessoa := Pessoa;
end;

function TConta.GetNumero: Integer;
begin
  Result := FNumero;
end;

function TConta.GetNomePessoa: string;
begin
   Result := FPessoa.GetNome;
end;

function TConta.GetSaldo: Real;
begin
   Result := FSaldo;
end;

end.
