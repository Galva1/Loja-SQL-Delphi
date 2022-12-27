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
    pnlCadastroCliente: TPanel;
    dbedtnomecli: TDBEdit;
    lblCodCadastroCliente: TLabel;
    lblCadastroNomeCliente: TLabel;
    dbedtcpfcli: TDBEdit;
    lblCadastroCPFCliente: TLabel;
    lblCadastroDataNascCliente: TLabel;
    dbedtdatacli: TDBEdit;
    lblCadastroEndCliente: TLabel;
    dbedtendcli: TDBEdit;
    lblCadastroBairroCliente: TLabel;
    dbedtbairrocli: TDBEdit;
    lblCadastroCidadeCliente: TLabel;
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
    edtobservacaoCliente: TEdit;
    lbl1: TLabel;
    qryDadosClienteobservacao_cliente: TMemoField;
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
    procedure pgcCadastroClienteChange(Sender: TObject);
    function CamposValidos():Boolean;
    procedure dbedtdatacliKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtcpfcliKeyPress(Sender: TObject; var Key: Char);
    procedure AlterarCorCampos(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroClientes1: TCadastroClientes1;

implementation


{$R *.dfm}


procedure TCadastroClientes1.AlterarCorCampos(Sender: TObject);
var
  i: Integer;
begin
  if qryDadosCliente.State in [dsBrowse, dsInactive] then
  begin
    edtobservacaoCliente.Color := $00EAEAEA;
    for i:=0 to ComponentCount-1 do
      if (Components[i] is TDBEdit) then
        TDBEdit(Components[i]).Color := $00EAEAEA;

  end
  else
  begin
    edtobservacaoCliente.Color := clWindow;
    for i:=0 to ComponentCount-1 do
      if (Components[i] is TDBEdit)then
        TDBEdit(Components[i]).Color := clWindow;

  end;
end;

procedure TCadastroClientes1.AtivarDesativarBotoes(Sender: TObject);
begin
  
  btnInserir.Enabled := qryDadosCliente.State in [dsBrowse];
  btnAlterar.Enabled := qryDadosCliente.State in [dsBrowse];
  btnExcluir.Enabled := qryDadosCliente.State in [dsBrowse];
  btnSalvar.Enabled  := qryDadosCliente.State in [dsInsert, dsEdit];
  btnCancelar.Enabled:= qryDadosCliente.State in [dsInsert, dsEdit];
  if qryDadosCliente.State in [dsInsert, dsEdit] then
  begin
    dbedtnomecli.Enabled := True;
    dbedtcpfcli.Enabled := True;
    dbedtdatacli.Enabled := True;
    dbedtendcli.Enabled := True;
    dbedtbairrocli.Enabled := True;
    dbedtcidadecli.Enabled := True;
    qryDadosCliente.Active := True;
    edtobservacaoCliente.Enabled := True;
  end
  else
  begin
    dbedtnomecli.Enabled := False;
    dbedtcpfcli.Enabled := False;
    dbedtdatacli.Enabled := False;
    dbedtendcli.Enabled := False;
    dbedtbairrocli.Enabled := False;
    dbedtcidadecli.Enabled := False;
    qryDadosCliente.Active := False;
    edtobservacaoCliente.Enabled := False;
  end;
end;

procedure TCadastroClientes1.btnInserirClick(Sender: TObject);
begin
  qryDadosCliente.Active := True;
  qryDadosCliente.Insert;
  AtivarDesativarBotoes(nil);
  dbedtnomecli.SetFocus;
  AlterarCorCampos(nil);

end;

function TCadastroClientes1.CamposValidos():Boolean;
var erro: String;
begin
  Result := False;
  erro := '';
  // CPF
  if not (Length(dbedtcpfcli.Text) = 11) then
    erro := erro+'CPF ';
  // Data Nasc.
  if not(((copy(dbedtdatacli.Text,3,1)) = '/') and (copy(dbedtdatacli.Text,6,1) = '/') ) then
    erro := erro+'Data Nasc. ';
  if erro = '' then
    Result := True
  else
    showMessage('Corrija os campos: '+erro);
end;

procedure TCadastroClientes1.btnSalvarClick(Sender: TObject);
begin
  if qryDadosCliente.Active then
  begin
    if CamposValidos then
    begin
      try
        qryDadosClienteobservacao_cliente.Value := edtobservacaoCliente.Text;
        qryDadosCliente.Post;
        showMessage('O Registro foi salvo com sucesso!');
        AlterarCorCampos(nil);
        AtivarDesativarBotoes(nil);
      except
        ShowMessage('Preencha os campos vazios!');
      end;
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
    AlterarCorCampos(nil);
    AtivarDesativarBotoes(nil);
    dbedtnomecli.SetFocus;
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
        AtivarDesativarBotoes(nil);
        btnInserir.Enabled := True;

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
  try
    if qryDadosCliente.Active then
    begin
      qryDadosCliente.Cancel;
      AtivarDesativarBotoes(nil);
      AlterarCorCampos(nil);
    end;
  except
    ShowMessage('Teste');
  end;
  qryDadosCliente.Close;
  qryDadosCliente.Open;
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

procedure TCadastroClientes1.pgcCadastroClienteChange(Sender: TObject);
begin
  if pgcCadastroCliente.ActivePageIndex = 1 then
  begin
    if (qryConsultaCliente.Active) and (qryConsultaClienteidcliente.Value <> 0) then
    begin
      qryDadosCliente.Close;
      qryDadosCliente.Parameters.ParamByName('idcliente').Value := qryConsultaClienteidcliente.AsInteger;
      qryDadosCliente.Open;
      btnInserir.Enabled := False;
      btnAlterar.Enabled := True;
      btnSalvar.Enabled := False;
      btnExcluir.Enabled := True;
      btnCancelar.Enabled := True;
    end
    else
    begin
      btnInserir.Enabled := True;
      btnAlterar.Enabled := False;
      btnSalvar.Enabled := False;
      btnExcluir.Enabled := False;
      btnCancelar.Enabled := True;
    end;

  end;
end;

procedure TCadastroClientes1.dbedtdatacliKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in['0'..'9',#8, #27, #32]) then
  begin
    Beep;
    Key := #0;
  end;

  if (Length(dbedtdatacli.Text)=10) and not(Key in[#8])then
    Key := #0
  else
    if not(Key in[#8]) then
    begin

      if Length(dbedtdatacli.Text)=2 then
        dbedtdatacli.Text := dbedtdatacli.Text + '/';
      if Length(dbedtdatacli.Text)=5 then
        dbedtdatacli.Text := dbedtdatacli.Text + '/';
      dbedtdatacli.SelStart := Length(dbedtdatacli.Text);
    end;

end;

procedure TCadastroClientes1.dbedtcpfcliKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Length(dbedtcpfcli.Text)=11) and not(Key in [#8]) then
    Key := #0;
end;

end.
