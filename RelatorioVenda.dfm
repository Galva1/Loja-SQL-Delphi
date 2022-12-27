object RelatorioVendas: TRelatorioVendas
  Left = 216
  Top = 116
  Width = 1310
  Height = 739
  Caption = 'RelatorioVendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qckrpRelatorioVenda: TQuickRep
    Left = 112
    Top = 36
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AfterPreview = qckrpRelatorioVendaAfterPreview
    DataSet = qryRelatorioVenda
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
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 27
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
        71.437500000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 595
        Top = 3
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1574.270833333333000000
          7.937500000000000000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = True
        FontSize = 10
      end
      object qrlbl9: TQRLabel
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
    object qrbnddetalhesMAE: TQRBand
      Left = 38
      Top = 118
      Width = 718
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = qrbnddetalhesMAEBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 4
        Top = 4
        Width = 77
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
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'idvenda'
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
      object QRDBText3: TQRDBText
        Left = 540
        Top = 4
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1428.750000000000000000
          10.583333333333330000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'data_venda'
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
      object QRDBnomeCliente: TQRDBText
        Left = 84
        Top = 4
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          10.583333333333330000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'nome_1'
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
      object QRDBidProduto: TQRDBText
        Left = 180
        Top = 4
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          10.583333333333330000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'idproduto'
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
      object QRDBitemUnidades: TQRDBText
        Left = 372
        Top = 4
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          984.250000000000000000
          10.583333333333330000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'item_unidades'
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
      object QRDBvalorItem: TQRDBText
        Left = 460
        Top = 4
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1217.083333333333000000
          10.583333333333330000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'valor_item'
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
      object QRDBText2: TQRDBText
        Left = 264
        Top = 4
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          698.500000000000000000
          10.583333333333330000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'nome'
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
      object QRDBText4: TQRDBText
        Left = 628
        Top = 4
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          10.583333333333330000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = 'R$ ###,##0.00'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object TitleBand2: TQRBand
      Left = 38
      Top = 65
      Width = 718
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1899.708333333333000000)
      BandType = rbTitle
      object qrlbl1: TQRLabel
        Left = 283
        Top = 3
        Width = 151
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          748.770833333333300000
          7.937500000000000000
          399.520833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio Venda'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 15
      end
    end
    object qrchldbndChildBand1: TQRChildBand
      Left = 38
      Top = 97
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
      ParentBand = TitleBand2
      object qrlbl6: TQRLabel
        Left = 4
        Top = 2
        Width = 77
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
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N'#186' de venda:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl2: TQRLabel
        Left = 180
        Top = 2
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          5.291666666666667000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C'#243'd. produto'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl3: TQRLabel
        Left = 372
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          984.250000000000000000
          5.291666666666667000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Quantidade'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl7: TQRLabel
        Left = 540
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1428.750000000000000000
          5.291666666666667000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl4: TQRLabel
        Left = 460
        Top = 2
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1217.083333333333000000
          5.291666666666667000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Custo'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl8: TQRLabel
        Left = 84
        Top = 2
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          5.291666666666667000
          246.062500000000000000)
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
      object qrlbl5: TQRLabel
        Left = 628
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1661.583333333333000000
          5.291666666666667000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl11: TQRLabel
        Left = 264
        Top = 2
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          698.500000000000000000
          5.291666666666667000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nome'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object qrbndPageFooterBand1: TQRBand
      Left = 38
      Top = 141
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
      object qrlbl10: TQRLabel
        Left = 4
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
          10.583333333333330000
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
      object QRExpr1: TQRExpr
        Left = 136
        Top = 3
        Width = 105
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
          277.812500000000000000)
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
      object qrlbl12: TQRLabel
        Left = 244
        Top = 3
        Width = 80
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          645.583333333333300000
          7.937500000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Total:'
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
      object QRDBvalorTotal: TQRDBText
        Left = 328
        Top = 3
        Width = 385
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          867.833333333333300000
          7.937500000000000000
          1018.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioVenda
        DataField = 'valor'
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
  object qryRelatorioVenda: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idvenda'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select venda.*, item_venda.item_unidades, item_venda.valor_item,' +
        ' produto.idproduto, '
      
        'produto.nome, cliente.nome, cliente.cpf, cliente.data_nascimento' +
        ', cliente.Endere'#231'o, cliente.Bairro, cliente.Cidade, item_venda.v' +
        'alor_item * item_venda.item_unidades as Total'
      'from item_venda'
      'inner join venda on venda.idvenda = item_venda.idvenda'
      'inner join cliente on cliente.idcliente = venda.idcliente'
      'inner join produto on produto.idproduto = item_venda.idproduto'
      'where venda.idvenda = :idvenda')
    Left = 944
    Top = 416
    object qryRelatorioVendaidvenda: TAutoIncField
      FieldName = 'idvenda'
      ReadOnly = True
    end
    object qryRelatorioVendavalor: TBCDField
      FieldName = 'valor'
      Precision = 19
    end
    object qryRelatorioVendaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qryRelatorioVendadata_venda: TDateField
      FieldName = 'data_venda'
    end
    object qryRelatorioVendaidpagamento: TIntegerField
      FieldName = 'idpagamento'
    end
    object qryRelatorioVendaobservacao_venda: TMemoField
      FieldName = 'observacao_venda'
      BlobType = ftMemo
    end
    object qryRelatorioVendaitem_unidades: TIntegerField
      FieldName = 'item_unidades'
    end
    object qryRelatorioVendavalor_item: TFloatField
      FieldName = 'valor_item'
    end
    object qryRelatorioVendaidproduto: TAutoIncField
      FieldName = 'idproduto'
      ReadOnly = True
    end
    object qryRelatorioVendanome: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 50
    end
    object qryRelatorioVendanome_1: TStringField
      FieldName = 'nome_1'
      Size = 50
    end
    object qryRelatorioVendacpf: TBCDField
      FieldName = 'cpf'
      Precision = 18
      Size = 0
    end
    object qryRelatorioVendadata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object qryRelatorioVendaEndereo: TStringField
      FieldName = 'Endere'#231'o'
      Size = 50
    end
    object qryRelatorioVendaBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qryRelatorioVendaCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object qryRelatorioVendaTotal: TFloatField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object dsRelatorioVenda: TDataSource
    DataSet = qryRelatorioVenda
    Left = 1008
    Top = 432
  end
end
