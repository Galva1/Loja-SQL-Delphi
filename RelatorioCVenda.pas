unit RelatorioCVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, DB, ADODB, ExtCtrls;

type
  TRelatorioCVendas = class(TForm)
    qckrpRelatorioCVendas: TQuickRep;
    qryRelatorioConsultaV: TADOQuery;
    dsRelatorioConsultaV: TDataSource;
    qrbndPageHeaderBand1: TQRBand;
    qrbnd1: TQRBand;
    qrlbl1: TQRLabel;
    QRSysData1: TQRSysData;
    qrbndDetailBand1: TQRBand;
    QRDBidCliente: TQRDBText;
    QRDBidVenda: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qrchldbndChildBand1: TQRChildBand;
    qrlbl3: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl7: TQRLabel;
    procedure qckrpRelatorioCVendasAfterPreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qrbndDetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    contador: Integer;
  end;

var
  RelatorioCVendas: TRelatorioCVendas;

implementation

uses Loja;

{$R *.dfm}

procedure TRelatorioCVendas.qckrpRelatorioCVendasAfterPreview(
  Sender: TObject);
begin
  RelatorioCVendas.Close;
end;

procedure TRelatorioCVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryRelatorioConsultaV.Active := False;
end;

procedure TRelatorioCVendas.FormCreate(Sender: TObject);
begin
  qryRelatorioConsultaV.Active := True;
  contador := 0;
end;

procedure TRelatorioCVendas.qrbndDetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if Odd(contador) then
  qrbndDetailBand1.Color := clWhite
  else
    qrbndDetailBand1.color := $00EEEEEE;
  contador := contador+1;
end;

end.
