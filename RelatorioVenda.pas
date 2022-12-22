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
    QRDBvalorTotal: TQRDBText;
    qrlbl1: TQRLabel;
    qrchldbndChildBand1: TQRChildBand;
    qrlbl6: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl7: TQRLabel;
    QRDBprodutoNome: TQRDBText;
    qrlbl4: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl5: TQRLabel;
    QRDBText2: TQRDBText;
    qrlbl9: TQRLabel;
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
