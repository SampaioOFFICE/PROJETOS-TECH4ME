unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitFuncionario, UnitCarro, UnitAutenticavel;

type
  TForm1 = class(TForm)
    lblAutenticar: TLabel;
    btnFuncionario: TButton;
    btnCarro: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFuncionarioClick(Sender: TObject);
    procedure btnCarroClick(Sender: TObject);
    procedure TestarAutenticacao(OAutenticavel: IAutenticavel; Codigo : string);
  private
    Funcionario: TFuncionario;
    Carro: TCarro;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TestarAutenticacao(OAutenticavel: IAutenticavel; Codigo: string);
begin
  if OAutenticavel.Autenticar(Codigo) then
    ShowMessage('Autenticado com sucesso')
  else
    ShowMessage('Falha na autenticação');
end;

procedure TForm1.btnCarroClick(Sender: TObject);
begin
  TestarAutenticacao(Carro, Carro.Placa);
end;

procedure TForm1.btnFuncionarioClick(Sender: TObject);
begin
  TestarAutenticacao(Funcionario, Funcionario.Matricula);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Funcionario := TFuncionario.Create;
  Funcionario.Nome := 'Bruno';
  Funcionario.Matricula := '0001';
  ShowMessage(Funcionario.Identificar);

  Carro := TCarro.Create;
  Carro.Placa := 'abc-1234' ;
end;

end.
