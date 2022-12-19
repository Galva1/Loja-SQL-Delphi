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
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    QRDBText2: TQRDBText;
    qrlbl4: TQRLabel;
    QRDBText3: TQRDBText;
    procedure qckrpRelatorioCProdutosAfterPreview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
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
end;

procedure TRelatorioCProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryRelatorioConsultaP.Active := False;
end;

end.
