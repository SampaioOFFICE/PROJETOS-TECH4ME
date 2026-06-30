unit TelaPrincipal;

interface

uses
  TelaCadastro, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrmTelaPrincipal = class(TForm)
    pnlMenu: TPanel;
    pnlListaCadastro: TPanel;
    btnNovo: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    grdContatos: TDBGrid;
    dtsContatos: TDataSource;
    cdsContatos: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dtsContatosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
		class procedure Adicionar(pDataSet: TClientDataSet; pOwner: TComponent);
		class procedure Editar(pDataSet: TClientDataSet; pOwner: TComponent);
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

procedure TfrmTelaPrincipal.btnEditarClick(Sender: TObject);
begin
	TfrmTelaPrincipal.Editar(cdsContatos, Self);
end;


procedure TfrmTelaPrincipal.btnNovoClick(Sender: TObject);
begin
	TfrmTelaPrincipal.Adicionar(cdsContatos, Self);
end;

procedure TfrmTelaPrincipal.dtsContatosDataChange(Sender: TObject; Field: TField);
begin
	btnEditar.Enabled := not cdsContatos.IsEmpty;
	btnExcluir.Enabled := not cdsContatos.IsEmpty;
end;

procedure TfrmTelaPrincipal.FormCreate(Sender: TObject);
begin
	cdsContatos.FieldDefs.Add('Nome', ftString, 50);
	cdsContatos.FieldDefs.Add('Preço', ftString, 13);
	cdsContatos.FieldDefs.Add('Quantidade', ftString, 10);

  cdsContatos.CreateDataSet;
end;

class procedure TfrmTelaPrincipal.Adicionar(pDataSet: TClientDataSet; pOwner: TComponent);
begin
	var
		FrmCadastro := TfrmTelaCadastro.Create(pOwner);
	try
		if FrmCadastro.ShowModal = mrOk then
		begin
			pDataSet.Append;
			pDataSet.FieldByName('Nome').AsString := FrmCadastro.edtNome.Text;
			pDataSet.FieldByName('Preço').AsString := FrmCadastro.edtPreco.Text;
			pDataSet.FieldByName('Quantidade').AsString := FrmCadastro.edtQuantidade.Text;
			pDataSet.Post;
		end;
	finally
		FrmCadastro.Free
	end;
end;

class procedure TfrmTelaPrincipal.Editar(pDataSet: TClientDataSet; pOwner: TComponent);
begin
	var
		FrmCadastro := TfrmTelaCadastro.Create(pOwner);
	try
		FrmCadastro.edtNome.Text := pDataSet.FieldByName('Nome').AsString;
		FrmCadastro.edtPreco.Text := pDataSet.FieldByName('Preço').AsString;
		FrmCadastro.edtQuantidade.Text := pDataSet.FieldByName('Quantidade').AsString;

		if FrmCadastro.ShowModal = mrOk then
		begin
			pDataSet.Edit;
			pDataSet.FieldByName('Nome').AsString := FrmCadastro.edtNome.Text;
			pDataSet.FieldByName('Preço').AsString := FrmCadastro.edtPreco.Text;
			pDataSet.FieldByName('Quantidade').AsString := FrmCadastro.edtQuantidade.Text;
			pDataSet.Post;
		end;
	finally
		FrmCadastro.Free
	end;
end;

procedure TfrmTelaPrincipal.btnExcluirClick(Sender: TObject);
begin
  if not cdsContatos.IsEmpty then
		cdsContatos.Delete;
end;

end.
