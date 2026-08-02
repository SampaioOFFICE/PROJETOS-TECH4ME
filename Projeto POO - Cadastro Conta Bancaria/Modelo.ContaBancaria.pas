unit Modelo.ContaBancaria;

interface

uses
  Excecoes, SysUtils;

type
  TContaBancaria = class
  private
    FSaldo: Double;
    FNumeroConta: string;
    FTitular: string;
  public
    procedure Depositar(Deposito: Double);
    procedure Sacar(Saque: Double);

    property Saldo: Double read FSaldo write FSaldo;
    property NumeroConta: string read FNumeroConta write FNumeroConta;
    property Titular: string read FTitular write FTitular;
  end;

implementation

// Procedure que controlará o deposito
procedure TContaBancaria.Depositar(Deposito: Double);
begin
  Saldo := Saldo + Deposito;
end;

// procedure que controlará o saque
procedure TContaBancaria.Sacar(Saque: Double);
begin
  if Saque > Saldo then
    raise ESaldoInsuficiente.Create('Saldo insuficiente. R$' + FloatToStr(Saldo));

  Saldo := Saldo - Saque;
end;

end.
