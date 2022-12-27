unit RelatorioCProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls;

type
  TRelatorioCProdutos = class(TForm)
    qckrpRelatorioCProdutos: TQuickRep;
    qryRelatorioConsultaP: TADOQuery;
    dsRelatorioConsultaP: TDataSource;
    qrbndPageHeaderBand1: TQRBand;
    qrbndTitleBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    qrlbl1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qrchldbndChildBand1: TQRChildBand;
    qrlbl9: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrbndPageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    qrlbl10: TQRLabel;
    procedure qckrpRelatorioCProdutosAfterPreview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrbndDetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    contador: Integer;
    { Public declarations }
  end;

var
  RelatorioCProdutos: TRelatorioCProdutos;

implementation

uses Loja;

{$R *.dfm}

procedure TRelatorioCProdutos.qckrpRelatorioCProdutosAfterPreview(Sender: TObject);
begin
  RelatorioCProdutos.Close;
end;

procedure TRelatorioCProdutos.FormCreate(Sender: TObject);
begin
  qryRelatorioConsultaP.Active := True;
  contador := 0;
end;

procedure TRelatorioCProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryRelatorioConsultaP.Active := False;
end;

procedure TRelatorioCProdutos.qrbndDetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if Odd(contador) then
  qrbndDetailBand1.Color := clWhite
  else
    qrbndDetailBand1.color := $00EEEEEE;
  contador := contador+1;
end;

end.
