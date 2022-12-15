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
    QRLabel1: TQRLabel;
    qrlbl6: TQRLabel;
    QRDBText1: TQRDBText;
    qrlbl7: TQRLabel;
    QRDBText3: TQRDBText;
    qrlbl8: TQRLabel;
    QRDBnomeCliente: TQRDBText;
    qrlbl2: TQRLabel;
    QRDBidProduto: TQRDBText;
    QRDBprodutoNome: TQRDBText;
    qrlbl3: TQRLabel;
    QRDBitemUnidades: TQRDBText;
    qrlbl4: TQRLabel;
    QRDBvalorItem: TQRDBText;
    qrlbl5: TQRLabel;
    QRDBvalorTotal: TQRDBText;
    qrbnd1: TQRBand;
    procedure FormActivate(Sender: TObject);
    procedure qckrpRelatorioVendaAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
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

end.
