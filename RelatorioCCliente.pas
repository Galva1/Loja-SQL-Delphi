unit RelatorioCCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, QuickRpt, ADODB, ExtCtrls;

type
  TRelatorioCClientes = class(TForm)
    qckrpRelatorioCCliente: TQuickRep;
    qryRelatorioCCliente: TADOQuery;
    dsRelatorioCCliente: TDataSource;
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qryRelatorioCClienteidcliente: TAutoIncField;
    qryRelatorioCClientenome: TStringField;
    qryRelatorioCClientecpf: TBCDField;
    qryRelatorioCClientedata_nascimento: TDateField;
    qryRelatorioCClienteEndereo: TStringField;
    qryRelatorioCClienteBairro: TWideStringField;
    qryRelatorioCClienteCidade: TWideStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qrlbl9: TQRLabel;
    qrchldbndChildBand1: TQRChildBand;
    qrlbl3: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl7: TQRLabel;
    qrbndTitleBand1: TQRBand;
    qrlbl1: TQRLabel;
    QRSysData1: TQRSysData;
    qrbndPageFooterBand1: TQRBand;
    qrlbl10: TQRLabel;
    qrlblTotaldeRegistros: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qckrpRelatorioCClienteAfterPreview(Sender: TObject);
    procedure qrbndDetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    contador : Integer;
    { Public declarations }
  end;

var
  RelatorioCClientes: TRelatorioCClientes;

implementation

uses Loja;

{$R *.dfm}

procedure TRelatorioCClientes.FormCreate(Sender: TObject);
begin
  qryRelatorioCCliente.Active := True;
  contador := 0;
end;

procedure TRelatorioCClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryRelatorioCCliente.Active := False;
  contador := 0;
end;

procedure TRelatorioCClientes.qckrpRelatorioCClienteAfterPreview(
  Sender: TObject);
begin
  RelatorioCClientes.Close;
end;

procedure TRelatorioCClientes.qrbndDetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if Odd(contador) then
    qrbndDetailBand1.Color := clWhite
  else
    qrbndDetailBand1.color := $00EEEEEE;
  contador := contador+1;
end;
end.
