unit RelatorioVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QuickRpt, QRCtrls, ExtCtrls, StdCtrls;

type
  TRelatorioVendas = class(TForm)
    qckrpRelatorioVenda: TQuickRep;
    TitleBand1: TQRBand;
    qryRelatorioVenda: TADOQuery;
    dsRelatorioVenda: TDataSource;
    qrbnddetalhesMAE: TQRBand;
    QRSysData1: TQRSysData;
    TitleBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBnomeCliente: TQRDBText;
    QRDBidProduto: TQRDBText;
    QRDBitemUnidades: TQRDBText;
    QRDBvalorItem: TQRDBText;
    qrlbl1: TQRLabel;
    qrchldbndChildBand1: TQRChildBand;
    qrlbl6: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl5: TQRLabel;
    QRDBText2: TQRDBText;
    qrlbl9: TQRLabel;
    qrbndPageFooterBand1: TQRBand;
    qrlbl10: TQRLabel;
    QRExpr1: TQRExpr;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    QRDBvalorTotal: TQRDBText;
    qryRelatorioVendaidvenda: TAutoIncField;
    qryRelatorioVendavalor: TBCDField;
    qryRelatorioVendaidcliente: TIntegerField;
    qryRelatorioVendadata_venda: TDateField;
    qryRelatorioVendaidpagamento: TIntegerField;
    qryRelatorioVendaobservacao_venda: TMemoField;
    qryRelatorioVendaitem_unidades: TIntegerField;
    qryRelatorioVendavalor_item: TFloatField;
    qryRelatorioVendaidproduto: TAutoIncField;
    qryRelatorioVendanome: TWideStringField;
    qryRelatorioVendanome_1: TStringField;
    qryRelatorioVendacpf: TBCDField;
    qryRelatorioVendadata_nascimento: TDateField;
    qryRelatorioVendaEndereo: TStringField;
    qryRelatorioVendaBairro: TWideStringField;
    qryRelatorioVendaCidade: TWideStringField;
    qryRelatorioVendaTotal: TFloatField;
    QRDBText4: TQRDBText;
    procedure FormActivate(Sender: TObject);
    procedure qckrpRelatorioVendaAfterPreview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrbnddetalhesMAEBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    contador: Integer;
    { Public declarations }
  end;

var
  RelatorioVendas: TRelatorioVendas;

implementation

uses Loja;

{$R *.dfm}

procedure TRelatorioVendas.FormActivate(Sender: TObject);
begin
  qryRelatorioVenda.Active;
end;

procedure TRelatorioVendas.qckrpRelatorioVendaAfterPreview(
  Sender: TObject);
begin
  RelatorioVendas.Close;
end;

procedure TRelatorioVendas.FormCreate(Sender: TObject);
begin
  contador := 0;
end;

procedure TRelatorioVendas.qrbnddetalhesMAEBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if Odd(contador) then
  qrbnddetalhesMAE.Color := clWhite
  else
    qrbnddetalhesMAE.color := $00EEEEEE;
  contador := contador+1;
end;

end.

