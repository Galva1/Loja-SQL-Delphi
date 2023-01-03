unit CadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Loja, DB, ADODB, Mask, DBCtrls, StdCtrls, Grids, DBGrids,
  ComCtrls, ExtCtrls;

type
  TCadastroProdutos = class(TForm)
    pnlGeralCC: TPanel;
    pnlBarraPesquisa: TPanel;
    lblCadastroProdutoLogo: TLabel;
    pgcCadastroProduto: TPageControl;
    ts1: TTabSheet;
    pnl2: TPanel;
    dbgrdConsultaProduto: TDBGrid;
    cbbConsultaProduto: TComboBox;
    edtConsultaProduto: TEdit;
    btnBuscarProduto: TButton;
    ts2: TTabSheet;
    pnl1: TPanel;
    btnInserir: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    btnAlterar: TButton;
    qryConsultaProduto: TADOQuery;
    dsConsultaProduto: TDataSource;
    qryConsultaProdutoidproduto: TAutoIncField;
    qryConsultaProdutonome: TWideStringField;
    qryConsultaProdutovalor_produto: TFloatField;
    dsDadosProduto: TDataSource;
    qryDadosProduto: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    FloatField1: TFloatField;
    pnl3: TPanel;
    dbedtnomepro: TDBEdit;
    lbl7: TLabel;
    dbedtvalorpro: TDBEdit;
    lbl2: TLabel;
    dbtxtcodpro: TDBText;
    lbl1: TLabel;
    btnEditarCadProduto: TButton;
    procedure btnBuscarProdutoClick(Sender: TObject);
    procedure ConsultarProduto(Sender:TObject);
    procedure edtConsultaProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure AtivarDesativarBotoes(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure AlterarCorCamposProdutos (Sender: TObject);
    procedure dbedtvalorproKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtnomeproMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbedtvalorproMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbedtvalorproChange(Sender: TObject);
    procedure dbgrdConsultaProdutoDblClick(Sender: TObject);
    procedure btnEditarCadProdutoClick(Sender: TObject);
    procedure pgcCadastroProdutoChange(Sender: TObject);
  private
    { Private declarations }
    TemVirgula: Boolean;
  public
    { Public declarations }
  end;

var
  CadastroProdutos: TCadastroProdutos;

implementation

uses CadastroClientes;

{$R *.dfm}

procedure TCadastroProdutos.AlterarCorCamposProdutos (Sender: TObject);
var
  i: integer;
begin
  if qryDadosProduto.State in [dsBrowse, dsInactive] then
  begin
    for i:=0 to ComponentCount-1 do
      if (Components[i] is TDBEdit) then
        TDBEdit(Components[i]).Color := $00EAEAEA;

  end
  else
  begin
    for i:=0 to ComponentCount-1 do
      if (Components[i] is TDBEdit)then
        TDBEdit(Components[i]).Color := clWindow;
  end;
end;

procedure TCadastroProdutos.ConsultarProduto(Sender:TObject);
begin
  if Trim(edtConsultaProduto.Text) <> EmptyStr then
    begin
      try
        qryConsultaProduto.SQL.Clear;
        qryConsultaProduto.SQL.Add('Select * from produto');
        if cbbConsultaProduto.Text= 'ID' then
          qryConsultaProduto.SQL.Add('where idproduto = '+QuotedStr(Trim(edtConsultaProduto.Text)))
        else
          qryConsultaProduto.SQL.Add('where '+LowerCase(cbbConsultaProduto.Text)+' = '+QuotedStr(Trim(edtConsultaProduto.Text)));

          qryConsultaProduto.Open;
        if qryConsultaProduto.IsEmpty then
        begin
          qryConsultaProduto.Close;
          btnEditarCadProduto.Enabled := False;
          MessageDlg('Este ' + LowerCase(cbbConsultaProduto.Text) + ' não se encontra no sistema!', mtError, [mbok], 0);
        end;
      except
        qryConsultaProduto.Close;
        btnEditarCadProduto.Enabled := False;
        MessageDlg('Este ' + LowerCase(cbbConsultaProduto.Text) + ' não se encontra no sistema!', mtError, [mbok], 0);
      end;

    end
  else
    begin
      qryConsultaProduto.SQL.Clear;
      qryConsultaProduto.SQL.Add('Select * from produto');
      qryConsultaProduto.Open;
    end;
end;

procedure TCadastroProdutos.btnBuscarProdutoClick(Sender: TObject);
begin
  if btnEditarCadProduto <> nil then
    btnEditarCadProduto.Enabled := True;
  case cbbConsultaProduto.ItemIndex of
    0:
      ConsultarProduto(nil);
    1:
      ConsultarProduto(nil);
  else
    MessageDlg('Selecione um filtro!', mtError, [mbok], 0);
  end;
end;

procedure TCadastroProdutos.edtConsultaProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btnBuscarProdutoClick(nil);
end;

procedure TCadastroProdutos.FormCreate(Sender: TObject);
begin
  CadastroProdutos.AutoSize := True;
  TemVirgula := false;
end;

procedure TCadastroProdutos.AtivarDesativarBotoes(Sender: TObject);
begin
  btnInserir.Enabled := qryDadosProduto.State in [dsBrowse];
  btnAlterar.Enabled := qryDadosProduto.State in [dsBrowse];
  btnExcluir.Enabled := qryDadosProduto.State in [dsBrowse];
  btnSalvar.Enabled  := qryDadosProduto.State in [dsInsert, dsEdit];
  btnCancelar.Enabled:= qryDadosProduto.State in [dsInsert, dsEdit];
  if qryDadosProduto.State in [dsInsert, dsEdit] then
  begin
    dbedtvalorpro.Enabled := True;
    dbedtnomepro.Enabled := True;
  end
  else
  begin
    dbedtvalorpro.Enabled := False;
    dbedtnomepro.Enabled := False;

  end;
end;


procedure TCadastroProdutos.btnInserirClick(Sender: TObject);
begin
  dbedtnomepro.Enabled := True;
  dbedtvalorpro.Enabled := True;
  qryDadosProduto.Active := True;
  qryDadosProduto.Insert;
  dbedtnomepro.SetFocus;
  AtivarDesativarBotoes(nil);
  AlterarCorCamposProdutos(nil);
end;

procedure TCadastroProdutos.btnAlterarClick(Sender: TObject);
begin
  if qryDadosProduto.Active then
  begin
    qryDadosProduto.Edit;
    AtivarDesativarBotoes(nil);
    AlterarCorCamposProdutos(nil);
    dbedtnomepro.SetFocus;
  end
  else
    MessageDlg('Não há registro para alterar!', mtError, [mbok], 0);
end;

procedure TCadastroProdutos.btnSalvarClick(Sender: TObject);
begin
  if qryDadosProduto.Active then
  begin
    try
      qryDadosProduto.Post;
      MessageDlg('O Registro foi salvo com sucesso!', mtInformation, [mbok], 0);
      AtivarDesativarBotoes(nil);
      AlterarCorCamposProdutos(nil);
    except
      MessageDlg('Preencha os campos vazios!', mtError, [mbok], 0);
    end;
  end
  else
    MessageDlg('Não há registro para salvar', mtError, [mbok], 0);
end;

procedure TCadastroProdutos.btnExcluirClick(Sender: TObject);
begin
  try
    if qryDadosProduto.Active then
    begin
      case Application.MessageBox('Deseja realmente excluir esse registro?', 'Exclusão de registro', MB_YESNO + MB_ICONQUESTION)  of
      IDYES:
        begin
          qryDadosProduto.Delete;
          qryDadosProduto.Active := False;
          MessageDlg('O Registro foi excluído com sucesso', mtError, [mbok], 0);

        end;
      IDNO:
        begin
          Exit;
        end;
      end;
    end
    else
      MessageDlg('Não há registro para excluir' + #13, mtError, [mbok], 0);
  except
    on e:Exception do
      begin
        MessageDlg('Erro ao tentar excluir seu produto!' + #13 + e.Message, mtError, [mbok], 0);
      end;
  end;
end;

procedure TCadastroProdutos.btnCancelarClick(Sender: TObject);
begin
  if qryDadosProduto.Active then
  begin
    dbedtnomepro.Enabled := False;
    dbedtvalorpro.Enabled := False;
    qryDadosProduto.Cancel;
    AtivarDesativarBotoes(nil);
    AlterarCorCamposProdutos(nil);
  end;
end;

procedure TCadastroProdutos.dbedtvalorproKeyPress(Sender: TObject;
  var Key: Char);
  var
    i: Integer;
begin
  if not(Key in ['0'..'9',#13,#8,',']) then
    Key := #0;

  if Key = ',' then
  begin
    for i:=1 to Length(dbedtvalorpro.Text) do
    begin
      if dbedtvalorpro.Text[i] = ',' then
      begin
        TemVirgula := True;
        Break;
      end
      else
        TemVirgula := False;
    end;
    if TemVirgula then
      Key := #0;
  end;

end;

procedure TCadastroProdutos.dbedtnomeproMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CadastroClientes1.NaoCopiarColar(dbedtnomepro);
end;

procedure TCadastroProdutos.dbedtvalorproMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CadastroClientes1.NaoCopiarColar(dbedtvalorpro);
end;

procedure TCadastroProdutos.dbedtvalorproChange(Sender: TObject);
var
  i, VerificarVirgula: Integer;
begin
  VerificarVirgula := 0;
  try
    for i:= 1 to Length(dbedtvalorpro.Text) do
    begin
      VerificarVirgula :=  StrToInt(dbedtvalorpro.Text[i]);
    end;
    TemVirgula := False;
  except
    TemVirgula := True;
  end;
end;

procedure TCadastroProdutos.dbgrdConsultaProdutoDblClick(Sender: TObject);
begin
  pgcCadastroProduto.ActivePage := ts2;
  if (qryConsultaProduto.Active) and (qryConsultaProdutoidproduto.AsInteger <> 0) then
  begin
    if pgcCadastroProduto.PageCount > 1 then
    begin
      qryDadosProduto.Close;
      qryDadosProduto.Parameters.ParamByName('idproduto').Value := qryConsultaProdutoidproduto.AsInteger;
      qryDadosProduto.Open;
      btnInserir.Enabled := False;
      btnAlterar.Enabled := True;
      btnSalvar.Enabled := False;
      btnExcluir.Enabled := True;
      btnCancelar.Enabled := True;
    end
    else
    begin
      CadastroProdutos.Close;
    end;
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

procedure TCadastroProdutos.btnEditarCadProdutoClick(Sender: TObject);
begin
  dbgrdConsultaProdutoDblClick(nil);
end;

procedure TCadastroProdutos.pgcCadastroProdutoChange(Sender: TObject);
begin
  if qryConsultaProduto.Active then
  begin
    qryConsultaProduto.Close;
    qryConsultaProduto.Open;
  end;

end;

end.
