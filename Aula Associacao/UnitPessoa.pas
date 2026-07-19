unit UnitPessoa;

interface

type
	TPessoa = class
		private
			FNome: string;
			FCPF: string;

		public
			constructor Create(Nome, CPF: string);
			procedure SetNome(Nome: string);
			procedure SetCPF(CPF: string);
			function GetNome: string;
			function GetCPF: string;
	end;

implementation

constructor TPessoa.Create(Nome: string; CPF: string);
begin
	FNome := Nome;
	FCPF := CPF;
end;

procedure TPessoa.SetNome(Nome: string);
begin
	FNome := Nome;
end;

procedure TPessoa.SetCPF(CPF: string);
begin
	FCPF := CPF;
end;

function TPessoa.GetNome: string;
begin
	Result := FNome;
end;

function TPessoa.GetCPF: string;
begin
	Result := FCPF;
end;

end.
