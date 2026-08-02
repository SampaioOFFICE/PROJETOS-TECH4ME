// unit de excecoes
unit Excecoes;

interface

uses
  SysUtils;

type
  ESaldoInsuficiente = class(Exception)
    constructor Create(const Msg: string);
  end;

implementation

constructor ESaldoInsuficiente.Create(const Msg: string);
begin
  inherited Create(Msg);
end;

end.
