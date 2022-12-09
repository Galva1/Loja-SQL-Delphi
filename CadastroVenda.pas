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
    pgc1: TPageControl;
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
    cbb1: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtCodProduto: TEdit;
    dbedtnome: TDBEdit;
    edtqtdproduto: TEdit;
    pnlvalorTotal: TPanel;
    btn1: TButton;
    lblCodProduto: TLabel;
    lblDesc: TLabel;
    lblQTD: TLabel;
    lblValorTotal: TLabel;
    qryEmitirVendaiditem_venda: TAutoIncField;
    qryEmitirVendaidvenda: TIntegerField;
    qryEmitirVendaidproduto: TIntegerField;
    qryEmitirVendaitem_unidades: TIntegerField;
    qryEmitirVendavalor_item: TFloatField;
    qryEmitirVendaidpagamento: TIntegerField;
    qryEmitirVendaidvenda_1: TAutoIncField;
    qryEmitirVendavalor: TFloatField;
    qryEmitirVendaidcliente: TIntegerField;
    qryEmitirVendadata_venda: TDateTimeField;
    qryEmitirVendaidcliente_1: TAutoIncField;
    qryEmitirVendanome: TStringField;
    qryEmitirVendacpf: TBCDField;
    dtfldEmitirVendadata_nascimento: TDateField;
    qryEmitirVendaEndereo: TStringField;
    qryEmitirVendaBairro: TWideStringField;
    qryEmitirVendaCidade: TWideStringField;
    qryConsultaItemidproduto: TAutoIncField;
    dsIncluirItem: TDataSource;
    qryIncluirItem: TADOQuery;
    qryIncluirItemidproduto: TAutoIncField;
    qryIncluirItemnome: TWideStringField;
    qryIncluirItemvalor_produto: TFloatField;
    qryIncluirItemitem_unidades: TIntegerField;
    qryIncluirItemTotal: TFloatField;
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
end;

procedure TCadastroVendas.btn1Click(Sender: TObject);
begin
  qryIncluirItem.Insert;
  qryIncluirItemitem_unidades.Value := StrToInt(edtqtdproduto.Text);
  qryIncluirItemnome.Value := qryConsultaItemnome.Value;
  qryIncluirItem.Close;
  qryIncluirItem.Open;
end;

end.
