object RelatorioCProdutos: TRelatorioCProdutos
  Left = 320
  Top = 143
  Width = 1088
  Height = 563
  Caption = 'RelatorioCProdutos'
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
  object qckrpRelatorioCProdutos: TQuickRep
    Left = 120
    Top = 28
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPreview = qckrpRelatorioCProdutosAfterPreview
    DataSet = qryRelatorioConsultaP
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
    Units = MM
    Zoom = 100
    object qrbndPageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 27
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
        71.437500000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 593
        Top = 4
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1568.979166666667000000
          10.583333333333330000
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
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object qrbndTitleBand1: TQRBand
      Left = 38
      Top = 65
      Width = 718
      Height = 28
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
        74.083333333333330000
        1899.708333333333000000)
      BandType = rbTitle
      object qrlbl1: TQRLabel
        Left = 250
        Top = 1
        Width = 208
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          661.458333333333300000
          2.645833333333333000
          550.333333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Produtos'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
    end
    object qrbndDetailBand1: TQRBand
      Left = 38
      Top = 117
      Width = 718
      Height = 24
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
        63.500000000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
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
        Color = clWhite
        DataSet = qryRelatorioConsultaP
        DataField = 'idproduto'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 84
        Top = 2
        Width = 453
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
          1198.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioConsultaP
        DataField = 'nome'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 540
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
          1428.750000000000000000
          5.291666666666667000
          457.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorioConsultaP
        DataField = 'valor_produto'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object qrchldbndChildBand1: TQRChildBand
      Left = 38
      Top = 93
      Width = 718
      Height = 24
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
        63.500000000000000000
        1899.708333333333000000)
      ParentBand = qrbndTitleBand1
      object qrlbl2: TQRLabel
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
        Caption = 'C'#243'd. Produto'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object qrlbl3: TQRLabel
        Left = 84
        Top = 2
        Width = 453
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
          1198.562500000000000000)
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
      object qrlbl4: TQRLabel
        Left = 540
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
          1428.750000000000000000
          5.291666666666667000
          457.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Valor'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object qryRelatorioConsultaP: TADOQuery
    Active = True
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from produto')
    Left = 952
    Top = 64
  end
  object dsRelatorioConsultaP: TDataSource
    DataSet = qryRelatorioConsultaP
    Left = 952
    Top = 112
  end
end
