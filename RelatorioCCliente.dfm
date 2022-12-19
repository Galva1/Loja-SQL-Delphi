object RelatorioCClientes: TRelatorioCClientes
  Left = 211
  Top = 140
  Width = 1372
  Height = 682
  Caption = 'RelatorioCClientes'
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
  object qckrpRelatorioCCliente: TQuickRep
    Left = 124
    Top = -8
    Width = 793
    Height = 633
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPreview = qckrpRelatorioCClienteAfterPreview
    DataSet = qryRelatorioCCliente
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
    Units = Native
    Zoom = 100
    object qrbndColumnHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 717
      Height = 27
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1897.062500000000000000)
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 584
        Top = 4
        Width = 119
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1545.166666666667000000
          10.583333333333330000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        FontSize = 10
      end
    end
    object qrbndDetailBand1: TQRBand
      Left = 38
      Top = 101
      Width = 717
      Height = 80
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        211.666666666666700000
        1897.062500000000000000)
      BandType = rbDetail
      object qrlbl2: TQRLabel
        Left = 12
        Top = 12
        Width = 136
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          31.750000000000000000
          31.750000000000000000
          359.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#211'DIGO DO CLIENTE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 156
        Top = 12
        Width = 49
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          412.750000000000000000
          31.750000000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioCCliente
        DataField = 'idcliente'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl3: TQRLabel
        Left = 224
        Top = 12
        Width = 44
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          592.666666666666700000
          31.750000000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOME:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 276
        Top = 12
        Width = 33
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          730.250000000000000000
          31.750000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioCCliente
        DataField = 'nome'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl4: TQRLabel
        Left = 368
        Top = 12
        Width = 31
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          973.666666666666700000
          31.750000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 404
        Top = 12
        Width = 18
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1068.916666666667000000
          31.750000000000000000
          47.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioCCliente
        DataField = 'cpf'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl5: TQRLabel
        Left = 512
        Top = 12
        Width = 79
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1354.666666666667000000
          31.750000000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA NASC:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 600
        Top = 12
        Width = 100
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1587.500000000000000000
          31.750000000000000000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioCCliente
        DataField = 'data_nascimento'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl6: TQRLabel
        Left = 12
        Top = 44
        Width = 78
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          31.750000000000000000
          116.416666666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ENDERE'#199'O:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 96
        Top = 44
        Width = 56
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          254.000000000000000000
          116.416666666666700000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioCCliente
        DataField = 'Endere'#231'o'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl7: TQRLabel
        Left = 308
        Top = 44
        Width = 53
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          814.916666666666700000
          116.416666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CIDADE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 368
        Top = 44
        Width = 41
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          973.666666666666700000
          116.416666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioCCliente
        DataField = 'Cidade'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl8: TQRLabel
        Left = 540
        Top = 44
        Width = 54
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1428.750000000000000000
          116.416666666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BAIRRO:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 600
        Top = 44
        Width = 35
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1587.500000000000000000
          116.416666666666700000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioCCliente
        DataField = 'Bairro'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object qrbnd1: TQRBand
      Left = 38
      Top = 65
      Width = 717
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        95.250000000000000000
        1897.062500000000000000)
      BandType = rbTitle
      object qrlbl1: TQRLabel
        Left = 265
        Top = 8
        Width = 184
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          701.145833333333300000
          21.166666666666670000
          486.833333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Clientes'
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
  end
  object qryRelatorioCCliente: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from cliente')
    Left = 948
    Top = 180
    object qryRelatorioCClienteidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
    end
    object qryRelatorioCClientenome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qryRelatorioCClientecpf: TBCDField
      FieldName = 'cpf'
      Precision = 18
      Size = 0
    end
    object qryRelatorioCClientedata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object qryRelatorioCClienteEndereo: TStringField
      FieldName = 'Endere'#231'o'
      Size = 50
    end
    object qryRelatorioCClienteBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qryRelatorioCClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
  end
  object dsRelatorioCCliente: TDataSource
    DataSet = qryRelatorioCCliente
    Left = 948
    Top = 228
  end
end
