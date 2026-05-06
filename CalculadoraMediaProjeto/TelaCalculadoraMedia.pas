unit TelaCalculadoraMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmTelaPrincipal = class(TForm)
    edtNotaUm: TEdit;
    lblNotaUm: TLabel;
    lblNotaDois: TLabel;
    edtNotaDois: TEdit;
    lblNotaTres: TLabel;
    edtNotaTres: TEdit;
    lblMediaTitulo: TLabel;
    lblResultadoTitulo: TLabel;
    pnlNotas: TPanel;
    pnlResultados: TPanel;
    pnlCalculadora: TPanel;
    btnCalcularMedia: TButton;
    lblResultado: TLabel;
    lblMedia: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCalcularMediaClick(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure EditExit(Sender: TObject);
  private
  	NotaUm: double;
	  NotaDois: double;
    NotaTres: double;
    Media: double;
    Resultado: string;
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

// FIZ COM AJUDA DE IA PARA QUE O PROJETO FINAL FICASSE MELHOR
procedure TfrmTelaPrincipal.FormCreate(Sender: TObject);
begin
  edtNotaUm.Text := '0,00';
  edtNotaDois.Text := '0,00';
  edtNotaTres.Text := '0,00';
end;

// FIZ TOTALMENTE SOZINHO
procedure TfrmTelaPrincipal.btnCalcularMediaClick(Sender: TObject);
begin
  NotaUm := StrToFloat(edtNotaUm.Text);
  NotaDois := StrToFloat(edtNotaDois.Text);
  NotaTres := StrToFloat(edtNotaTres.Text);

  Media := (NotaUm + NotaDois + NotaTres) / 3;

  lblMedia.Caption := FormatFloat('0.00', Media);

  if Media >= 7.0 then
  begin
    lblResultado.Caption := 'Aprovado';
    lblResultado.Font.Color := clGreen;
  end
  else if Media >= 5.0 then
  begin
    lblResultado.Caption := 'Recuperação';
    lblResultado.Font.Color := RGB(210, 105, 30);
  end
  else
  begin
    lblResultado.Caption := 'Reprovado';
    lblResultado.Font.Color := clMaroon;
  end;
end;

// FIZ COM AJUDA DE IA PARA QUE O PROJETO FINAL FICASSE MELHOR
procedure TfrmTelaPrincipal.EditKeyPress(Sender: TObject; var Key: Char);
begin
  // Enter vai para o próximo campo ou calcula
  if Key = #13 then
  begin
    SelectNext(Sender as TWinControl, True, True);

    Key := #0;
  end;

  // Permite: números, backspace e separador decimal
  if not (Key in ['0'..'9', #8, ',', '.']) then
    Key := #0;

  // Evita mais de um separador decimal
  if (Key in [',', '.']) and (Pos(Key, (Sender as TEdit).Text) > 0) then
    Key := #0;
end;

// FIZ COM AJUDA DE IA PARA QUE O PROJETO FINAL FICASSE MELHOR
procedure TfrmTelaPrincipal.EditExit(Sender: TObject);
var
  Valor: Double;
begin
  if not TryStrToFloat((Sender as TEdit).Text, Valor) then
    Valor := 0;

  // Limite de 0 a 10
  if Valor > 10 then
    Valor := 10
  else if Valor < 0 then
    Valor := 0;

  // Formata para 0.00
  (Sender as TEdit).Text := FormatFloat('0.00', Valor);
end;

end.
