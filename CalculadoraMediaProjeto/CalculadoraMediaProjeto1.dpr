program CalculadoraMediaProjeto1;

uses
  Vcl.Forms,
  TelaCalculadoraMedia in 'TelaCalculadoraMedia.pas' {frmTelaPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
