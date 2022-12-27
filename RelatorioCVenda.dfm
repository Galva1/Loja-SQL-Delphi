object RelatorioCVendas: TRelatorioCVendas
  Left = 355
  Top = 113
  Width = 1387
  Height = 701
  Caption = 'RelatorioCVendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qckrpRelatorioCVendas: TQuickRep
    Left = 24
    Top = 36
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AfterPreview = qckrpRelatorioCVendasAfterPreview
    DataSet = qryRelatorioConsultaV
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Pixels
    Zoom = 100
    object qrbndPageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 27
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Style = psDot
      AlignToBottom = False
      Color = 13423300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        71.437500000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 592
        Top = 4
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          10.583333333333330000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = True
        FontSize = 10
      end
      object qrlbl7: TQRLabel
        Left = 4
        Top = 4
        Width = 132
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          10.583333333333330000
          349.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Emp'#243'rio Sert'#227'o Serid'#243
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object qrbnd1: TQRBand
      Left = 38
      Top = 65
      Width = 718
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Style = psDot
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1899.708333333333000000)
      BandType = rbTitle
      object qrlbl1: TQRLabel
        Left = 260
        Top = 0
        Width = 180
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          687.916666666666700000
          0.000000000000000000
          476.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Vendas'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
    end
    object qrbndDetailBand1: TQRBand
      Left = 38
      Top = 112
      Width = 718
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = qrbndDetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625000000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBidCliente: TQRDBText
        Left = 88
        Top = 1
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          2.645833333333333000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioConsultaV
        DataField = 'idcliente'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBidVenda: TQRDBText
        Left = 8
        Top = 1
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2.645833333333333000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioConsultaV
        DataField = 'idvenda'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 560
        Top = 1
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          2.645833333333333000
          404.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioConsultaV
        DataField = 'valor'
        Mask = 'R$ ###,##0.00'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 332
        Top = 1
        Width = 225
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666700000
          2.645833333333333000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioConsultaV
        DataField = 'nome'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 156
        Top = 1
        Width = 173
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          2.645833333333333000
          457.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioConsultaV
        DataField = 'nomepagamento'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object qrchldbndChildBand1: TQRChildBand
      Left = 38
      Top = 91
      Width = 718
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 13423300
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      ParentBand = qrbnd1
      object qrlbl3: TQRLabel
        Left = 4
        Top = 2
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          5.291666666666667000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Num.Venda'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl2: TQRLabel
        Left = 81
        Top = 2
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          214.312500000000000000
          5.291666666666667000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C'#243'd.Cliente'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl6: TQRLabel
        Left = 156
        Top = 2
        Width = 173
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          5.291666666666667000
          457.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Pagamento'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl5: TQRLabel
        Left = 332
        Top = 2
        Width = 225
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666700000
          5.291666666666667000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl4: TQRLabel
        Left = 560
        Top = 2
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          5.291666666666667000
          404.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Valor Total:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object qrbndPageFooterBand1: TQRBand
      Left = 38
      Top = 130
      Width = 718
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 13423300
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRExpr1: TQRExpr
        Left = 136
        Top = 3
        Width = 577
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          359.833333333333300000
          7.937500000000000000
          1526.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'count'
        FontSize = 12
      end
      object qrlbl10: TQRLabel
        Left = 5
        Top = 3
        Width = 130
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          7.937500000000000000
          343.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total de registros: '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object qryRelatorioConsultaV: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select venda.*, cliente.nome, pagamento.nomepagamento'
      'from venda'
      'inner join cliente on cliente.idcliente = venda.idcliente'
      
        'inner join pagamento on pagamento.idpagamento = venda.idpagament' +
        'o')
    Left = 828
    Top = 128
  end
  object dsRelatorioConsultaV: TDataSource
    DataSet = qryRelatorioConsultaV
    Left = 828
    Top = 180
  end
end
