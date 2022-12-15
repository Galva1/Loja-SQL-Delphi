unit CadastroVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Mask, DBCtrls, DB, ADODB,
  Grids, DBGrids;

type
  TCadastroVendas = class(TForm)
    pnlGeral: TPanel;
    pnlsuperior: TPanel;
    lblNomeTela: TLabel;
    pnlDataHora: TPanel;
    pgcClienteEmissao: TPageControl;
    tsCliente: TTabSheet;
    dbedtcodCliente: TDBEdit;
    dbedtcpfcli: TDBEdit;
    dbedtnomecli: TDBEdit;
    dbedtendcli: TDBEdit;
    dbedtbairrocli: TDBEdit;
    dbedtcidcli: TDBEdit;
    btnBuscar: TSpeedButton;
    lblcodcli: TLabel;
    lblnomecli: TLabel;
    lblcpfcli: TLabel;
    lblendcli: TLabel;
    lblbairrocli: TLabel;
    lbl1: TLabel;
    qryConsultaCliente: TADOQuery;
    dsConsultaCliente: TDataSource;
    pgcItem: TPageControl;
    tsItem: TTabSheet;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    lblData: TLabel;
    lblHora: TLabel;
    pnlDataAtual: TPanel;
    pnlHoraAtual: TPanel;
    dtpvencimento: TDateTimePicker;
    dbgrdprodutos: TDBGrid;
    qryEmitirVenda: TADOQuery;
    dsEmitirVenda: TDataSource;
    dsConsultaItem: TDataSource;
    qryConsultaItem: TADOQuery;
    qryConsultaItemnome: TWideStringField;
    qryConsultaItemvalor_produto: TFloatField;
    dbedtNumeroVenda: TDBEdit;
    lblNvenda: TLabel;
    lblFormaPagamento: TLabel;
    lblVencimento: TLabel;
    edtCodProduto: TEdit;
    dbedtnome: TDBEdit;
    edtqtdproduto: TEdit;
    pnlvalorTotal: TPanel;
    btn1: TButton;
    lblCodProduto: TLabel;
    lblDesc: TLabel;
    lblQTD: TLabel;
    lblValorTotal: TLabel;
    qryConsultaItemidproduto: TAutoIncField;
    dsIncluirItem: TDataSource;
    qryIncluirItem: TADOQuery;
    btnNovaVenda: TButton;
    qryConsultaClienteidcliente: TAutoIncField;
    qryConsultaClientenome: TStringField;
    qryConsultaClientecpf: TBCDField;
    dtfldConsultaClientedata_nascimento: TDateField;
    qryConsultaClienteEndereo: TStringField;
    qryConsultaClienteBairro: TWideStringField;
    qryConsultaClienteCidade: TWideStringField;
    dblkcbbidpagamento: TDBLookupComboBox;
    dsPagamento: TDataSource;
    qryPagamento: TADOQuery;
    qryPagamentonomepagamento: TWideStringField;
    qryPagamentoidpagamento: TAutoIncField;
    qryEmitirVendaidvenda: TAutoIncField;
    qryEmitirVendavalor: TFloatField;
    qryEmitirVendaidcliente: TIntegerField;
    qryEmitirVendadata_venda: TDateField;
    qryEmitirVendaidpagamento: TIntegerField;
    qryEmitirVendanomepagamento: TWideStringField;
    qryIncluirItemiditem_venda: TAutoIncField;
    qryIncluirItemidvenda: TIntegerField;
    qryIncluirItemidproduto: TIntegerField;
    qryIncluirItemitem_unidades: TIntegerField;
    qryIncluirItemvalor_item: TFloatField;
    qryIncluirItemnomeproduto: TStringField;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure edtqtdprodutoExit(Sender: TObject);
    procedure edtqtdprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure btnNovaVendaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qryIncluirItemAfterOpen(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure qryEmitirVendaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroVendas: TCadastroVendas;

implementation

uses pesquisarClientes, Loja;

{$R *.dfm}

procedure TCadastroVendas.btnBuscarClick(Sender: TObject);
begin
  try
    Application.CreateForm(TpesquisarCliente, pesquisarCliente);
    pesquisarCliente.ShowModal;
    qryConsultaCliente.Close;
    qryConsultaCliente.Parameters.ParamByName('idcliente').Value := FloatToStr(pesquisarCliente.dbgrdconsultacli.Fields[0].Value);
    qryConsultaCliente.Open;
  finally
    pesquisarCliente.Free;
  end;
end;

procedure TCadastroVendas.FormCreate(Sender: TObject);
begin
  pnlDataAtual.Caption := '  ' + DateToStr(Date);
  pnlHoraAtual.Caption := '  ' + TimeToStr(Time);
  qryEmitirVenda.Connection.Connected := true;
  qryEmitirVenda.Connection.BeginTrans;
end;

procedure TCadastroVendas.FormActivate(Sender: TObject);
begin
  edtCodProduto.SetFocus;
end;

procedure TCadastroVendas.edtCodProdutoExit(Sender: TObject);
begin
  with qryConsultaItem do
    begin
      qryConsultaItem.Close;
      qryConsultaItem.SQL[2] := 'where idproduto = ' + QuotedStr(Trim(edtCodProduto.Text));
      qryConsultaItem.Open;
    end;
    if pnlvalorTotal.Caption <> '0' then
      CadastroVendas.edtqtdprodutoExit(nil);
end;

procedure TCadastroVendas.edtqtdprodutoExit(Sender: TObject);
begin
  pnlvalorTotal.Caption := FloatToStr( StrToIntDef(edtqtdproduto.text,0) * qryConsultaItemvalor_produto.AsFloat );
end;

procedure TCadastroVendas.edtqtdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    edtqtdprodutoExit(nil);
end;

procedure TCadastroVendas.edtCodProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    edtCodProdutoExit(nil);
  if pnlvalorTotal.Caption <> '0' then
    CadastroVendas.edtqtdprodutoExit(nil);


end;

procedure TCadastroVendas.btn1Click(Sender: TObject);
begin
  if not qryIncluirItem.Active then
    qryIncluirItem.Open;
  try
    qryIncluirItem.Insert;
    qryIncluirItemidvenda.Value       := qryEmitirVendaidvenda.Value;
    qryIncluirItemitem_unidades.Value := StrToInt(edtqtdproduto.Text);
    qryIncluirItemnomeproduto.AsString       := dbedtnome.Text;
    qryIncluirItemvalor_item.Value    := qryConsultaItemvalor_produto.Value;
    qryIncluirItemidproduto.value     := StrToInt(edtCodProduto.text);
    //qryIncluirItemvalor.Value         := (qryIncluirItemvalor_item.Value * qryIncluirItemitem_unidades.Value);
    //.SQL.Add('update venda set venda.valor = '+ (pnlvalorTotal.Caption) + ' where venda.idvenda = '+dbedtNumeroVenda.Text);
    //qryEmitirVendavalor.Value := (qryIncluirItemvalor_item.Value * qryIncluirItemitem_unidades.Value);
    qryIncluirItem.Post;
  except
    on e: Exception do
    begin
      qryIncluirItem.CancelUpdates;
      MessageDlg('Erro ao tentar incluir item'+#13+e.Message, mtError, [mbok], 0);
    end;
  end;
  if qryEmitirVenda.State = dsbrowse then
    qryEmitirVenda.Edit;
  qryEmitirVendavalor.Value := qryEmitirVendavalor.Value + (qryIncluirItemvalor_item.Value * qryIncluirItemitem_unidades.Value);
  qryEmitirVenda.Post;

end;

procedure TCadastroVendas.btnNovaVendaClick(Sender: TObject);
begin
  if not qryEmitirVenda.Active then
    qryEmitirVenda.Open;

  if not qryConsultaCliente.Active then
    Exit;

  if not qryPagamento.Active then
    qryPagamento.Open;

  try
    qryEmitirVenda.Insert;
    qryEmitirVendaidcliente.AsInteger := qryConsultaClienteidcliente.AsInteger;
    qryEmitirVendadata_venda.Value    := Now();
    QryEmitirVendavalor.Value         := 0;
    qryEmitirVenda.Post;
  except
    on e:Exception do
    begin
      qryEmitirVenda.CancelUpdates;
      MessageDlg('Erro ao tentar iniciar venda' + #13 + e.Message, mtError, [mbok], 0);
    end;
  end;
end;

procedure TCadastroVendas.btnCancelarClick(Sender: TObject);
begin
  if dbedtNumeroVenda.Text <> '' then
  begin
    case Application.MessageBox('Deseja realmente excluir essa venda?', 'Exclusão de venda', MB_YESNO + MB_ICONQUESTION)  of
    IDYES:
      begin
        try
          qryEmitirVenda.Connection.RollbackTrans;
          ShowMessage('A venda foi cancelada com sucesso!');
          CadastroVendas.Close;
        except
          ShowMessage('Não foi possível cancelar a sua venda.');
        end;
      end;
    IDNO:
      begin
        Exit;
      end;
    end;
  end
  else
  begin
    qryEmitirVenda.Connection.RollbackTrans;
    CadastroVendas.Close;
  end;

end;

procedure TCadastroVendas.qryIncluirItemAfterOpen(DataSet: TDataSet);
begin
  qryIncluirItem.Properties['Unique Table'].Value := 'item_venda';
end;

procedure TCadastroVendas.btnConfirmarClick(Sender: TObject);
begin
  case Application.MessageBox('Confirmar venda?', 'Confirmação de venda', MB_YESNO + MB_ICONQUESTION)  of
    IDYES:
      begin
        try
          ShowMessage('A venda foi concluída com sucesso!');
          qryEmitirVenda.Connection.CommitTrans;
          CadastroVendas.Close;
        except
          on e:Exception do
          begin
            MessageDlg('Erro ao tentar concluir sua venda!' + #13 + e.Message, mtError, [mbok], 0);
          end;
        end;
      end;
    IDNO:
      begin
        Exit;
      end;
  end;
end;

procedure TCadastroVendas.qryEmitirVendaAfterOpen(DataSet: TDataSet);
begin
  qryEmitirVenda.Properties['Unique Table'].Value := 'venda';
end;

end.
