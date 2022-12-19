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
    qrbnd1: TQRBand;
    QRSysData1: TQRSysData;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    QRDBText1: TQRDBText;
    qrlbl3: TQRLabel;
    QRDBText2: TQRDBText;
    qrlbl4: TQRLabel;
    QRDBText3: TQRDBText;
    qryRelatorioCClienteidcliente: TAutoIncField;
    qryRelatorioCClientenome: TStringField;
    qryRelatorioCClientecpf: TBCDField;
    qryRelatorioCClientedata_nascimento: TDateField;
    qryRelatorioCClienteEndereo: TStringField;
    qryRelatorioCClienteBairro: TWideStringField;
    qryRelatorioCClienteCidade: TWideStringField;
    qrlbl5: TQRLabel;
    QRDBText4: TQRDBText;
    qrlbl6: TQRLabel;
    QRDBText5: TQRDBText;
    qrlbl7: TQRLabel;
    QRDBText6: TQRDBText;
    qrlbl8: TQRLabel;
    QRDBText7: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qckrpRelatorioCClienteAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
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
end;

procedure TRelatorioCClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryRelatorioCCliente.Active := False;
end;

procedure TRelatorioCClientes.qckrpRelatorioCClienteAfterPreview(
  Sender: TObject);
begin
  RelatorioCClientes.Close;
end;

end.
