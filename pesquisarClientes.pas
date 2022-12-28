unit pesquisarClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls;

type
  TpesquisarCliente = class(TForm)
    pnlPesquisarClienteGeral: TPanel;
    pnlTopoPesqCliente: TPanel;
    cbbConsulta: TComboBox;
    edtConsulta: TEdit;
    btnbuscar: TButton;
    dbgrdconsultacli: TDBGrid;
    btnSelecionarCli: TButton;
    btnSaircli: TButton;
    qryConsultaCliente: TADOQuery;
    dsConsultaCliente: TDataSource;
    lbl8: TLabel;
    qryConsultaClienteidcliente: TAutoIncField;
    qryConsultaClientenome: TStringField;
    qryConsultaClientecpf: TBCDField;
    dtfldConsultaClientedata_nascimento: TDateField;
    qryConsultaClienteEndereo: TStringField;
    qryConsultaClienteBairro: TWideStringField;
    qryConsultaClienteCidade: TWideStringField;
    procedure btnbuscarClick(Sender: TObject);
    procedure edtConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelecionarCliClick(Sender: TObject);
    procedure btnSaircliClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pesquisarCliente: TpesquisarCliente;

implementation

uses Loja, CadastroVenda;

{$R *.dfm}

procedure TpesquisarCliente.btnbuscarClick(Sender: TObject);
begin
  btnSelecionarCli.Enabled:=True;
  if Trim(edtConsulta.Text) <> EmptyStr then
    begin
      try
        qryConsultaCliente.SQL.Clear;
        qryConsultaCliente.SQL.Add('Select * from cliente');
        if cbbConsulta.Text = 'ID' then
          qryConsultaCliente.SQL.Add('where cliente.idcliente'+' = '+QuotedStr(Trim(edtConsulta.Text)))
        else
          qryConsultaCliente.SQL.Add('where '+LowerCase(cbbConsulta.Text)+' = '+QuotedStr(Trim(edtConsulta.Text)));
        qryConsultaCliente.Open;
        if qryConsultaCliente.IsEmpty then
          ShowMessage('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!');
      except
        ShowMessage('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!');
      end;

    end
  else
    begin
      qryConsultaCliente.SQL.Clear;
      qryConsultaCliente.SQL.Add('Select * from cliente');
      qryConsultaCliente.Open;
    end;
end;

procedure TpesquisarCliente.edtConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btnBuscarClick(nil);
end;


procedure TpesquisarCliente.btnSelecionarCliClick(Sender: TObject);
begin
  if qryConsultaCliente.IsEmpty then
    ShowMessage('Selecione um campo.')
  else
  begin
    pesquisarCliente.Close;
    CadastroVendas.btnNovaVenda.Enabled := True;
  end;


end;

procedure TpesquisarCliente.btnSaircliClick(Sender: TObject);
begin
  pesquisarCliente.Close;
end;

procedure TpesquisarCliente.FormActivate(Sender: TObject);
begin
  edtConsulta.SetFocus;
  pesquisarCliente.AutoSize := True;

end;

procedure TpesquisarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryConsultaCliente.Active then
  begin
    CadastroVendas.qryConsultaCliente.Close;
    CadastroVendas.qryConsultaCliente.Parameters.ParamByName('idcliente').Value := FloatToStr(pesquisarCliente.dbgrdconsultacli.Fields[0].Value);
    CadastroVendas.qryConsultaCliente.Open;
    CadastroVendas.btnNovaVenda.Enabled := True;
  end;
end;

end.
