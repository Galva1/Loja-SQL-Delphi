unit CadastroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, Loja, Grids,
  DBGrids, Buttons, Mask, IBDatabase, DataBkr, ToolWin;

type
  TCadastroClientes1 = class(TForm)
    pnlGeralCC: TPanel;
    pnlBarraPesquisa: TPanel;
    pgcCadastroCliente: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    qryConsultaCliente: TADOQuery;
    dsConsultaCliente: TDataSource;
    dbgrdConsultaCliente: TDBGrid;
    cbbConsulta: TComboBox;
    qryConsultaClientenome: TStringField;
    qryConsultaClientecpf: TBCDField;
    qryConsultaClienteidcliente: TAutoIncField;
    dtfldConsultaClientedata_nascimento: TDateField;
    edtConsulta: TEdit;
    btnBuscar: TButton;
    pnl1: TPanel;
    dbedtnomecli: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    dbedtcpfcli: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedtdatacli: TDBEdit;
    lbl5: TLabel;
    dbedtendcli: TDBEdit;
    lbl6: TLabel;
    dbedtbairrocli: TDBEdit;
    lbl7: TLabel;
    dbedtcidadecli: TDBEdit;
    btnInserir: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    lbl8: TLabel;
    qryDadosCliente: TADOQuery;
    dsDadosCliente: TDataSource;
    qryDadosClienteidcliente: TAutoIncField;
    qryDadosClientenome: TStringField;
    qryDadosClientecpf: TBCDField;
    dtfldDadosClientedata_nascimento: TDateField;
    qryDadosClienteEndereo: TStringField;
    qryDadosClienteBairro: TWideStringField;
    qryDadosClienteCidade: TWideStringField;
    btnAlterar: TButton;
    qryConsultaClienteEndereo: TStringField;
    qryConsultaClienteBairro: TWideStringField;
    qryConsultaClienteCidade: TWideStringField;
    pnl2: TPanel;
    dbtxtidcli: TDBText;
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure AtivarDesativarBotoes(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbbConsultaEnter(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure edtConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConsultarClientes(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroClientes1: TCadastroClientes1;

implementation


{$R *.dfm}


procedure TCadastroClientes1.AtivarDesativarBotoes(Sender: TObject);
begin
  btnInserir.Enabled := qryDadosCliente.State in [dsBrowse];
  btnAlterar.Enabled := qryDadosCliente.State in [dsBrowse];
  btnExcluir.Enabled := qryDadosCliente.State in [dsBrowse];
  btnSalvar.Enabled  := qryDadosCliente.State in [dsInsert, dsEdit];
  btnCancelar.Enabled:= qryDadosCliente.State in [dsInsert, dsEdit];
end;

procedure TCadastroClientes1.btnInserirClick(Sender: TObject);
begin
  dbedtnomecli.Enabled := True;
  dbedtcpfcli.Enabled := True;
  dbedtdatacli.Enabled := True;
  dbedtendcli.Enabled := True;
  dbedtbairrocli.Enabled := True;
  dbedtcidadecli.Enabled := True;
  qryDadosCliente.Active := True;
  qryDadosCliente.Insert;
  dbedtnomecli.SetFocus;
  AtivarDesativarBotoes(nil);
end;

procedure TCadastroClientes1.btnSalvarClick(Sender: TObject);
begin
  if qryDadosCliente.Active then
  begin
    try
      qryDadosCliente.Post;
      showMessage('O Registro foi salvo com sucesso!');
      AtivarDesativarBotoes(nil);
    except
      ShowMessage('Preencha os campos vazios!');
    end;
  end
  else
    ShowMessage('Não há registro para salvar!');

end;

procedure TCadastroClientes1.btnAlterarClick(Sender: TObject);
begin
  if qryDadosCliente.Active then
  begin
    qryDadosCliente.Edit;
    dbedtnomecli.SetFocus;
    AtivarDesativarBotoes(nil);
  end
  else
    ShowMessage('Não há registro para alterar!');
end;

procedure TCadastroClientes1.btnExcluirClick(Sender: TObject);
begin
  if qryDadosCliente.Active then
  begin
    case Application.MessageBox('Deseja realmente excluir esse registro?', 'Exclusão de registro', MB_YESNO + MB_ICONQUESTION)  of
    IDYES:
      begin
        qryDadosCliente.Delete;
        qryDadosCliente.Active := False;
        ShowMessage('O registro foi excluído com sucesso!');

      end;
    IDNO:
      begin
        Exit;
      end;
    end;
  end
  else
    ShowMessage('Não há registro para excluir!');

end;

procedure TCadastroClientes1.btnCancelarClick(Sender: TObject);
begin
  if qryDadosCliente.Active then
  begin
    dbedtnomecli.Enabled   := False;
    dbedtcpfcli.Enabled    := False;
    dbedtdatacli.Enabled   := False;
    dbedtendcli.Enabled    := False;
    dbedtbairrocli.Enabled := False;
  dbedtcidadecli.Enabled   := False;
    qryDadosCliente.Cancel;
    AtivarDesativarBotoes(nil);
    if dbtxtidcli.Caption <> EmptyStr then
      qryDadosCliente.Active := False;
  end;


end;

procedure TCadastroClientes1.cbbConsultaEnter(Sender: TObject);
begin
  cbbConsulta.SetFocus;
end;

procedure TCadastroClientes1.ConsultarClientes(Sender: TObject);
begin
  if Trim(edtConsulta.Text) <> EmptyStr then
    begin
      try
        qryConsultaCliente.SQL.Clear;
        qryConsultaCliente.SQL.Add('Select * from cliente');
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

procedure TCadastroClientes1.btnBuscarClick(Sender: TObject);
begin
  case cbbConsulta.ItemIndex of
  0:
    ConsultarClientes(nil);
  1:
    ConsultarClientes(nil);
  else
    ShowMessage('Selecione um filtro!')
  end;
end;

procedure TCadastroClientes1.edtConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btnBuscarClick(nil);
end;





procedure TCadastroClientes1.FormCreate(Sender: TObject);
begin
  CadastroClientes1.AutoSize := True;
end;

end.
