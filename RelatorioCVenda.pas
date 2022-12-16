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
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    QRDBidVenda: TQRDBText;
    qrlbl4: TQRLabel;
    QRDBText1: TQRDBText;
    qrlbl5: TQRLabel;
    QRDBText2: TQRDBText;
    qrlbl6: TQRLabel;
    QRDBText3: TQRDBText;
    procedure qckrpRelatorioCVendasAfterPreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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
end;

end.
