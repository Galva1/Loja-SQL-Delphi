unit CadastroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, Loja, Grids,
  DBGrids, Buttons, Mask, IBDatabase, DataBkr, ToolWin, Clipbrd, StrUtils, DateUtils;

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
    qryConsultaClienteobservacao_cliente: TMemoField;
    btnEditarCadCliente: TButton;
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
    function CamposValidos():Boolean;
    procedure dbedtdatacliKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtcpfcliKeyPress(Sender: TObject; var Key: Char);
    procedure AlterarCorCampos(Sender: TObject);
    procedure dbgrdConsultaClienteDblClick(Sender: TObject);
    procedure btnEditarCadClienteClick(Sender: TObject);
    procedure dbedtnomecliKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtnomecliMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbedtcpfcliMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbedtdatacliMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbedtendcliMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbedtbairrocliMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbedtcidadecliMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure NaoCopiarColar(Categoria: TCustomEdit);
    procedure pgcCadastroClienteChange(Sender: TObject);
    procedure dtfldDadosClientedata_nascimentoSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }

  public
     
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
  var
  erro: String;
begin
  Result := False;
  erro := '';
  //Nome
  if dbedtnomecli.Text = '' then
    erro := erro+'Nome: Campo Vazio'+#13;
    // CPF
  if (Length(dbedtcpfcli.Text) <> 11) then
    erro := erro+'CPF: Campo Vazio'+#13;
  // Data Nasc.
  if not(((copy(dbedtdatacli.Text,3,1)) = '/') and (copy(dbedtdatacli.Text,6,1) = '/') ) then
    erro := erro+'Data Nasc: Campo Vazio'+#13;
  //Endereço
  if dbedtendcli.Text = '' then
    erro := erro+'Endereço: Campo Vazio'+#13;
  //Bairro
  if dbedtbairrocli.Text = '' then
    erro := erro+'Bairro: Campo Vazio'+#13;
  // Cidade
  if dbedtcidadecli.Text = '' then
    erro := erro+'Cidade: Campo Vazio'+#13;
  if erro = '' then
    Result := True
  else
    MessageDlg('Corrija os campos:'+#13+erro, mtError, [mbok], 0);
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
        MessageDlg('O registro foi salvo com sucesso', mtInformation, [mbok], 0);
        AlterarCorCampos(nil);
        AtivarDesativarBotoes(nil);
        edtobservacaoCliente.Text := '';
      except
        MessageDlg('Preencha os campos vazios.', mtError, [mbok], 0);
      end;
    end;

  end
  else
    MessageDlg('Não há registro para salvar', mtError, [mbok], 0);

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
    MessageDlg('O registro não pode ser Alterado'+#13, mtError, [mbok], 0);
end;

procedure TCadastroClientes1.btnExcluirClick(Sender: TObject);
begin

  try
    if qryDadosCliente.Active then
    begin
      case Application.MessageBox('Deseja realmente excluir esse registro?', 'Exclusão de registro', MB_YESNO + MB_ICONQUESTION)  of
      IDYES:
        begin
          qryDadosCliente.Delete;
          qryDadosCliente.Active := False;
          MessageDlg('O registro foi excluido com sucesso', mtInformation, [mbok], 0);
          AtivarDesativarBotoes(nil);
          btnInserir.Enabled := True;
          edtobservacaoCliente.Text := '';

        end;
      IDNO:
        begin
          Exit;
        end;
      end;
    end
    else
      MessageDlg('Não há registro para excluir.', mtError, [mbok], 0);
  except
    on e: Exception do
    begin
      MessageDlg('O registro não pode ser excluído'+#13+e.Message, mtError, [mbok], 0);
    end;
  end;

end;

procedure TCadastroClientes1.btnCancelarClick(Sender: TObject);
begin
  try
    if qryDadosCliente.Active then
    begin
      qryDadosCliente.Cancel;
      AtivarDesativarBotoes(nil);
      AlterarCorCampos(nil);
      edtobservacaoCliente.Text := '';
    end;
  except
    on e: Exception do
    begin
      MessageDlg('O registro não pode ser cancelado'+#13+e.Message, mtError, [mbok], 0);
    end;
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
        begin
          btnEditarCadCliente.Enabled := False;
          qryConsultaCliente.Close;
          MessageDlg('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!', mtError, [mbok], 0);
        end;
      except
        qryConsultaCliente.Close;
        btnEditarCadCliente.Enabled := False;
        MessageDlg('Este ' + LowerCase(cbbConsulta.Text) + ' não se encontra no sistema!', mtError, [mbok], 0);
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
  btnEditarCadCliente.Enabled := True;
  case cbbConsulta.ItemIndex of
  0:
    ConsultarClientes(nil);
  1:
    ConsultarClientes(nil);
  else
    MessageDlg('Selecione um filtro!', mtError, [mbok], 0);
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

procedure TCadastroClientes1.dbedtdatacliKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (Key in['0'..'9',#8, #27, #32]) then
    Key := #0;
end;

procedure TCadastroClientes1.dbedtcpfcliKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Length(dbedtcpfcli.Text)=11) and not(Key in [#8]) then
    Key := #0;

end;

procedure TCadastroClientes1.dbgrdConsultaClienteDblClick(Sender: TObject);
begin
  pgcCadastroCliente.ActivePage := ts2;
  if (qryConsultaCliente.Active) and (qryConsultaClienteidcliente.AsInteger <> 0) then
  begin
    qryDadosCliente.Close;
    qryDadosCliente.Parameters.ParamByName('idcliente').Value := qryConsultaClienteidcliente.AsInteger;
    edtobservacaoCliente.Text := qryConsultaClienteobservacao_cliente.AsString;
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

procedure TCadastroClientes1.btnEditarCadClienteClick(Sender: TObject);
begin
  dbgrdConsultaClienteDblClick(nil);
end;

procedure TCadastroClientes1.dbedtnomecliKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #22 then
    Key:= #0;
end;

procedure TCadastroClientes1.dbedtnomecliMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NaoCopiarColar(dbedtnomecli);
end;

procedure TCadastroClientes1.dbedtcpfcliMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NaoCopiarColar(dbedtcpfcli);
end;

procedure TCadastroClientes1.dbedtdatacliMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NaoCopiarColar(dbedtdatacli);
end;

procedure TCadastroClientes1.dbedtendcliMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NaoCopiarColar(dbedtendcli);
end;

procedure TCadastroClientes1.dbedtbairrocliMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NaoCopiarColar(dbedtbairrocli);
end;

procedure TCadastroClientes1.dbedtcidadecliMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NaoCopiarColar(dbedtcidadecli);
end;

procedure TCadastroClientes1.NaoCopiarColar(Categoria: TCustomEdit);
begin
  Clipboard.Destroy;
  if Categoria.SelLength > 0 then
    Categoria.SelLength := 0;
  Clipboard.AsText := '';
end;

procedure TCadastroClientes1.pgcCadastroClienteChange(Sender: TObject);
begin
  if qryConsultaCliente.Active then
  begin
    qryConsultaCliente.Close;
    qryConsultaCliente.Open;
  end;
end;

procedure TCadastroClientes1.dtfldDadosClientedata_nascimentoSetText(
  Sender: TField; const Text: String);
  var
    Ano,
    Mes,
    Dia: word;
begin
  Dia := StrToInt(Copy(dbedtdatacli.Text, 1, 2));
  Mes := StrToInt(Copy(dbedtdatacli.Text, 4, 2));
  Ano := StrToInt(Copy(dbedtdatacli.Text, 7, 4));
  if not IsValidDate(Ano, Mes, Dia) then
  begin
    MessageDlg('Não é uma data válida', mtWarning, [mbOK], 0);
    Abort;
  end;
  Sender.Value := Text;
end;

end.


