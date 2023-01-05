object CadastroVendas: TCadastroVendas
  Left = 426
  Top = 57
  Width = 1112
  Height = 782
  Caption = 'Cadastro Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeral: TPanel
    Left = 0
    Top = 40
    Width = 645
    Height = 629
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object lblNvenda: TLabel
      Left = 16
      Top = 248
      Width = 68
      Height = 20
      Caption = 'N'#186' Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFormaPagamento: TLabel
      Left = 108
      Top = 248
      Width = 131
      Height = 20
      Caption = 'Forma pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 8
      Top = 579
      Width = 89
      Height = 20
      Caption = 'Observa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object pgcClienteEmissao: TPageControl
      Left = 0
      Top = 80
      Width = 645
      Height = 161
      ActivePage = tsCliente
      TabOrder = 2
      object tsCliente: TTabSheet
        Caption = 'Cliente'
        object lblcodcli: TLabel
          Left = 12
          Top = 16
          Width = 44
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblnomecli: TLabel
          Left = 88
          Top = 16
          Width = 37
          Height = 16
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblcpfcli: TLabel
          Left = 12
          Top = 68
          Width = 26
          Height = 16
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblendcli: TLabel
          Left = 124
          Top = 68
          Width = 59
          Height = 16
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblbairrocli: TLabel
          Left = 344
          Top = 68
          Width = 36
          Height = 16
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl1: TLabel
          Left = 472
          Top = 68
          Width = 44
          Height = 16
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbedtcodCliente: TDBEdit
          Left = 12
          Top = 36
          Width = 65
          Height = 24
          Color = 15395562
          DataField = 'idcliente'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object dbedtcpfcli: TDBEdit
          Left = 12
          Top = 88
          Width = 101
          Height = 24
          Color = 15395562
          DataField = 'cpf'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbedtnomecli: TDBEdit
          Left = 88
          Top = 36
          Width = 245
          Height = 24
          Color = 15395562
          DataField = 'nome'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dbedtendcli: TDBEdit
          Left = 124
          Top = 88
          Width = 209
          Height = 24
          Color = 15395562
          DataField = 'Endere'#231'o'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbedtbairrocli: TDBEdit
          Left = 344
          Top = 88
          Width = 117
          Height = 24
          Color = 15395562
          DataField = 'Bairro'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dbedtcidcli: TDBEdit
          Left = 472
          Top = 88
          Width = 145
          Height = 24
          Color = 15395562
          DataField = 'Cidade'
          DataSource = dsConsultaCliente
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btnBuscar: TButton
          Left = 344
          Top = 32
          Width = 65
          Height = 31
          Caption = 'Buscar'
          TabOrder = 6
          OnClick = btnBuscarClick
        end
      end
    end
    object pnlsuperior: TPanel
      Left = 0
      Top = 0
      Width = 645
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 13423300
      TabOrder = 0
      object lblNomeTela: TLabel
        Left = 8
        Top = 8
        Width = 132
        Height = 25
        Caption = 'NOVA VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnlDataHora: TPanel
      Left = 0
      Top = 40
      Width = 645
      Height = 41
      BevelOuter = bvSpace
      Color = clWhite
      TabOrder = 1
      object lblData: TLabel
        Left = 16
        Top = 8
        Width = 35
        Height = 20
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblHora: TLabel
        Left = 156
        Top = 8
        Width = 35
        Height = 20
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnlDataAtual: TPanel
        Left = 56
        Top = 4
        Width = 89
        Height = 29
        Alignment = taLeftJustify
        Caption = 'DataAtual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object pnlHoraAtual: TPanel
        Left = 200
        Top = 4
        Width = 89
        Height = 29
        Alignment = taLeftJustify
        Caption = 'HoraAtual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object pgcItem: TPageControl
      Left = 0
      Top = 304
      Width = 645
      Height = 273
      ActivePage = tsItem
      TabOrder = 3
      object tsItem: TTabSheet
        Caption = 'Item'
        object lblCodProduto: TLabel
          Left = 44
          Top = 21
          Width = 74
          Height = 20
          Caption = 'Cod. Prod.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDesc: TLabel
          Left = 124
          Top = 21
          Width = 71
          Height = 20
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblQTD: TLabel
          Left = 316
          Top = 21
          Width = 30
          Height = 20
          Caption = 'Qtd.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblValorTotal: TLabel
          Left = 400
          Top = 21
          Width = 111
          Height = 20
          Caption = 'Valor Total (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnConsultaItem: TSpeedButton
          Left = 8
          Top = 20
          Width = 23
          Height = 25
          Glyph.Data = {
            82060000424D8206000000000000420000002800000014000000140000000100
            20000300000040060000000000000000000000000000000000000000FF0000FF
            0000FF000000F5F5F5FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF8F8
            F8FFF9F9F9FFB2B2B2FF212121FF111111FF848484FFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7
            F7FFF6F6F6FFF6F6F6FFF7F7F7FFF9F9F9FFB8B8B8FF222222FF000000FF0000
            00FF111111FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF9F9F9FFB8B8
            B8FF212121FF000000FF000000FF000000FF212121FFF6F6F6FFF7F7F7FFF7F7
            F7FFF6F6F6FFF7F7F7FFF6F6F6FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFF9F9F9FFB8B8B8FF212121FF000000FF000000FF000000FF2222
            22FFB2B2B2FFF7F7F7FFF6F6F6FFF6F6F6FFF8F8F8FFF9F9F9FFF3F3F3FFE3E3
            E3FFDCDCDCFFE4E4E4FFF2F2F2FFFBFBFBFFF9F9F9FFB9B9B9FF1F1F1FFF0000
            00FF000000FF000000FF212121FFB9B9B9FFF9F9F9FFF6F6F6FFF7F7F7FFF9F9
            F9FFE5E5E5FF9D9D9DFF515151FF292929FF1E1E1EFF292929FF515151FF9C9C
            9CFFE9E9E9FFADADADFF1A1A1AFF000000FF000000FF212121FFB8B8B8FFF9F9
            F9FFF8F8F8FFF7F7F7FFF9F9F9FFC5C5C5FF414141FF000000FF040404FF2020
            20FF2E2E2EFF202020FF040404FF000000FF434343FFC8C8C8FFB6B6B6FF1A1A
            1AFF1F1F1FFFB8B8B8FFF9F9F9FFF7F7F7FFF6F6F6FFFAFAFAFFC5C5C5FF2727
            27FF000000FF4A4A4AFFB0B0B0FFDDDDDDFFE7E7E7FFDDDDDDFFAEAEAEFF4C4C
            4CFF000000FF282828FFC8C8C8FFADADADFFB9B9B9FFF9F9F9FFF7F7F7FFF6F6
            F6FFF7F7F7FFE3E3E3FF434343FF000000FF6F6F6FFFEBEBEBFFFAFAFAFFF8F8
            F8FFF7F7F7FFF8F8F8FFFBFBFBFFEBEBEBFF737373FF000000FF434343FFE9E9
            E9FFF9F9F9FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FF909090FF020202FF4A4A
            4AFFEBEBEBFFF8F8F8FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF9F9
            F9FFEBEBEBFF4C4C4CFF000000FF9C9C9CFFFBFBFBFFF6F6F6FFF7F7F7FFF7F7
            F7FFF6F6F6FF3A3A3AFF060606FFB0B0B0FFFAFAFAFFF7F7F7FFF6F6F6FFF7F7
            F7FFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFFBFBFBFFAEAEAEFF040404FF5151
            51FFF2F2F2FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FF0D0D0DFF222222FFDDDD
            DDFFFBFBFBFFF8F8F8FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7
            F7FFF8F8F8FFDDDDDDFF202020FF2A2A2AFFE4E4E4FFF7F7F7FFF7F7F7FFF7F7
            F7FFF6F6F6FF000000FF303030FFE1E1E1FF989898FFC5C5C5FFF9F9F9FFF6F6
            F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE7E7E7FF2E2E2EFF1E1E
            1EFFDCDCDCFFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FF0D0D0DFF222222FFD8D8
            D8FF494949FF6A6A6AFFF9F9F9FFF7F7F7FFF6F6F6FFF6F6F6FFF7F7F7FFF6F6
            F6FFF8F8F8FFDDDDDDFF202020FF292929FFE3E3E3FFF8F8F8FFF7F7F7FFF6F6
            F6FFF7F7F7FF3B3B3BFF060606FFB1B1B1FF9C9C9CFF202020FFB8B8B8FFF9F9
            F9FFF9F9F9FFF7F7F7FFF6F6F6FFF7F7F7FFFAFAFAFFB0B0B0FF040404FF5151
            51FFF3F3F3FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FF8F8F8FFF020202FF4D4D
            4DFFE0E0E0FF666666FF202020FF6A6A6AFFC5C5C5FFF8F8F8FFF7F7F7FFF8F8
            F8FFEBEBEBFF4A4A4AFF000000FF9D9D9DFFF9F9F9FFF7F7F7FFF7F7F7FFF6F6
            F6FFF7F7F7FFE6E6E6FF444444FF000000FF747474FFE0E0E0FF9C9C9CFF4949
            49FF989898FFFBFBFBFFFAFAFAFFEBEBEBFF707070FF000000FF414141FFE5E5
            E5FFF8F8F8FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF9F9F9FFC6C6C6FF2828
            28FF000000FF4D4D4DFFB1B1B1FFD8D8D8FFE1E1E1FFDDDDDDFFB0B0B0FF4A4A
            4AFF000000FF272727FFC5C5C5FFF9F9F9FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
            F7FFF7F7F7FFF6F6F6FFF9F9F9FFC6C6C6FF444444FF020202FF060606FF2222
            22FF303030FF222222FF060606FF020202FF434343FFC5C5C5FFF9F9F9FFF7F7
            F7FFF6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF7F7F7FFF8F8F8FFF6F6F6FFF9F9
            F9FFE6E6E6FF8F8F8FFF3B3B3BFF0D0D0DFF000000FF0D0D0DFF3A3A3AFF9090
            90FFE3E3E3FFFAFAFAFFF7F7F7FFF6F6F6FFF7F7F7FFF6F6F6FFF7F7F7FFF7F7
            F7FFF5F5F5FF}
          OnClick = btnConsultaItem1Click
        end
        object btnNovoItem: TSpeedButton
          Left = 8
          Top = 52
          Width = 23
          Height = 25
          Glyph.Data = {
            82060000424D8206000000000000420000002800000014000000140000000100
            20000300000040060000C30E0000C30E000000000000000000000000FF0000FF
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000190000003E000000560000
            00560000003F0000001A00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000270000
            008C000000DA000000F8000000FD000000FD000000F8000000DB0000008D0000
            0027000000000000000000000000000000000000000000000000000000000000
            00000000000000000051000000DB000000FC000000C500000082000000600000
            006000000082000000C5000000FC000000DC0000005200000000000000000000
            00000000000000000000000000000000000000000051000000ED000000E20000
            00610000000F000000000000000000000000000000000000000E000000600000
            00E1000000EE0000005200000000000000000000000000000000000000000000
            0026000000DB000000E20000003F0000000000000000000000030000002E0000
            002E0000000300000000000000000000003E000000E1000000DC000000270000
            00000000000000000000000000000000008B000000FC00000062000000000000
            0000000000000000000B000000BF000000C00000000C00000000000000000000
            000000000060000000FC0000008C000000000000000000000000000000190000
            00D9000000C70000000F0000000000000000000000000000000B000000C90000
            00CA0000000C0000000000000000000000000000000E000000C5000000DA0000
            001900000000000000000000003D000000F80000008400000000000000030000
            000C0000000C00000018000000CB000000CC000000180000000C0000000C0000
            00030000000000000083000000F80000003E0000000000000000000000540000
            00FD00000061000000000000002D000000C1000000CB000000CD000000F40000
            00F4000000CD000000CB000000C10000002E0000000000000060000000FD0000
            0056000000000000000000000054000000FD00000062000000000000002D0000
            00BF000000C9000000CB000000F3000000F4000000CB000000C9000000BF0000
            002E0000000000000060000000FD0000005600000000000000000000003D0000
            00F80000008500000000000000030000000B0000000B00000017000000CB0000
            00CC000000170000000B0000000B000000030000000000000083000000F80000
            003E000000000000000000000018000000D9000000C700000010000000000000
            0000000000000000000B000000C9000000CA0000000C00000000000000000000
            00000000000F000000C6000000DA000000190000000000000000000000000000
            008A000000FD000000630000000000000000000000000000000B000000BF0000
            00BF0000000C00000000000000000000000000000062000000FC0000008B0000
            000000000000000000000000000000000025000000D9000000E3000000410000
            000000000000000000030000002C0000002C0000000300000000000000000000
            0040000000E2000000DA00000026000000000000000000000000000000000000
            00000000004F000000EC000000E3000000630000001000000000000000000000
            0000000000000000000F00000062000000E3000000ED00000050000000000000
            000000000000000000000000000000000000000000000000004F000000D90000
            00FD000000C800000085000000620000006200000085000000C7000000FD0000
            00DA000000500000000000000000000000000000000000000000000000000000
            000000000000000000000000002500000089000000D8000000F7000000FD0000
            00FD000000F7000000D90000008A000000260000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000180000003C00000054000000540000003D00000018000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000}
          OnClick = btnNovoItemClick
        end
        object dbgrdprodutos: TDBGrid
          Left = 8
          Top = 104
          Width = 613
          Height = 133
          DataSource = dsIncluirItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'idproduto'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nomeproduto'
              Title.Caption = 'Nome'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor_item'
              Title.Caption = 'Valor (R$)'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'item_unidades'
              Title.Caption = 'Unidades'
              Width = 97
              Visible = True
            end>
        end
        object edtCodProduto: TEdit
          Left = 44
          Top = 44
          Width = 69
          Height = 28
          Color = 15395562
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0'
          OnExit = edtCodProdutoExit
          OnKeyDown = edtCodProdutoKeyDown
          OnKeyPress = edtCodProdutoKeyPress
          OnMouseDown = edtCodProdutoMouseDown
        end
        object dbedtnome: TDBEdit
          Left = 124
          Top = 44
          Width = 181
          Height = 28
          Color = 15395562
          DataField = 'nome'
          DataSource = dsConsultaItem
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtqtdproduto: TEdit
          Left = 316
          Top = 44
          Width = 73
          Height = 28
          Color = 15395562
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '0'
          OnChange = edtqtdprodutoChange
          OnExit = edtqtdprodutoExit
          OnKeyDown = edtqtdprodutoKeyDown
          OnKeyPress = edtqtdprodutoKeyPress
          OnMouseDown = edtqtdprodutoMouseDown
        end
        object pnlvalorTotal: TPanel
          Left = 400
          Top = 44
          Width = 113
          Height = 29
          Alignment = taLeftJustify
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object btnIncluir: TButton
          Left = 540
          Top = 4
          Width = 81
          Height = 41
          Caption = 'Incluir'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btnIncluirClick
          OnKeyDown = btnIncluirKeyDown
        end
        object btnRemoverItemVenda: TButton
          Left = 540
          Top = 56
          Width = 81
          Height = 41
          Caption = 'Remover'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnRemoverItemVendaClick
        end
      end
    end
    object btnConfirmar: TButton
      Left = 424
      Top = 594
      Width = 97
      Height = 29
      Caption = 'Confirmar'
      Enabled = False
      TabOrder = 4
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 527
      Top = 594
      Width = 97
      Height = 29
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btnCancelarClick
    end
    object dbedtNumeroVenda: TDBEdit
      Left = 16
      Top = 268
      Width = 69
      Height = 28
      Color = 15395562
      DataField = 'idvenda'
      DataSource = dsEmitirVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object btnNovaVenda: TButton
      Left = 300
      Top = 256
      Width = 81
      Height = 41
      Caption = 'Nova venda'
      Enabled = False
      TabOrder = 7
      OnClick = btnNovaVendaClick
    end
    object dblkcbbidpagamento: TDBLookupComboBox
      Left = 108
      Top = 268
      Width = 181
      Height = 28
      Color = 15395562
      DataField = 'idpagamento'
      DataSource = dsEmitirVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'idpagamento'
      ListField = 'nomepagamento'
      ListSource = dsPagamento
      ParentFont = False
      TabOrder = 8
    end
    object edtobservacaovenda: TEdit
      Left = 8
      Top = 602
      Width = 365
      Height = 21
      TabOrder = 9
      OnMouseDown = edtobservacaovendaMouseDown
    end
  end
  object qryConsultaCliente: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idcliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from cliente'
      'where cliente.idcliente = :idcliente')
    Left = 744
    Top = 116
    object qryConsultaClienteidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
    end
    object qryConsultaClientenome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qryConsultaClientecpf: TBCDField
      FieldName = 'cpf'
      Precision = 18
      Size = 0
    end
    object dtfldConsultaClientedata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object qryConsultaClienteEndereo: TStringField
      FieldName = 'Endere'#231'o'
      Size = 50
    end
    object qryConsultaClienteBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object qryConsultaClienteCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 50
    end
  end
  object dsConsultaCliente: TDataSource
    DataSet = qryConsultaCliente
    Left = 836
    Top = 116
  end
  object qryEmitirVenda: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    AfterOpen = qryEmitirVendaAfterOpen
    DataSource = dsConsultaCliente
    Parameters = <>
    SQL.Strings = (
      'Select venda.*, pagamento.idpagamento, pagamento.nomepagamento'
      'from venda'
      
        'inner join pagamento on pagamento.idpagamento = venda.idpagament' +
        'o'
      'where 1 = 0')
    Left = 724
    Top = 336
    object qryEmitirVendaidvenda: TAutoIncField
      FieldName = 'idvenda'
      ReadOnly = True
    end
    object qryEmitirVendavalor: TFloatField
      FieldName = 'valor'
    end
    object qryEmitirVendaidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object qryEmitirVendadata_venda: TDateField
      FieldName = 'data_venda'
    end
    object qryEmitirVendaidpagamento: TIntegerField
      FieldName = 'idpagamento'
    end
    object qryEmitirVendanomepagamento: TWideStringField
      FieldName = 'nomepagamento'
      FixedChar = True
      Size = 50
    end
    object qryEmitirVendaobservacao_venda: TMemoField
      FieldName = 'observacao_venda'
      BlobType = ftMemo
    end
  end
  object dsEmitirVenda: TDataSource
    DataSet = qryEmitirVenda
    Left = 800
    Top = 328
  end
  object dsConsultaItem: TDataSource
    DataSet = qryConsultaItem
    Left = 992
    Top = 284
  end
  object qryConsultaItem: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from produto'
      ''
      '')
    Left = 936
    Top = 284
    object qryConsultaItemidproduto: TAutoIncField
      FieldName = 'idproduto'
      ReadOnly = True
    end
    object qryConsultaItemnome: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 50
    end
    object qryConsultaItemvalor_produto: TFloatField
      FieldName = 'valor_produto'
    end
  end
  object dsIncluirItem: TDataSource
    DataSet = qryIncluirItem
    Left = 800
    Top = 384
  end
  object qryIncluirItem: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    AfterOpen = qryIncluirItemAfterOpen
    Parameters = <>
    SQL.Strings = (
      'Select item_venda.*'
      'from item_venda'
      'where 1 = 0')
    Left = 724
    Top = 384
    object qryIncluirItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object qryIncluirItemidvenda: TAutoIncField
      FieldName = 'idvenda'
    end
    object qryIncluirItemitem_unidades: TIntegerField
      FieldName = 'item_unidades'
    end
    object qryIncluirItemvalor_item: TFloatField
      FieldName = 'valor_item'
    end
    object qryIncluirItemnomeproduto: TStringField
      FieldName = 'nomeproduto'
      FixedChar = True
      Size = 30
    end
    object qryIncluirItemiditem_venda: TAutoIncField
      FieldName = 'iditem_venda'
      ReadOnly = True
    end
  end
  object dsPagamento: TDataSource
    DataSet = qryPagamento
    Left = 996
    Top = 380
  end
  object qryPagamento: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from pagamento')
    Left = 920
    Top = 384
    object qryPagamentonomepagamento: TWideStringField
      FieldName = 'nomepagamento'
      FixedChar = True
      Size = 50
    end
    object qryPagamentoidpagamento: TAutoIncField
      FieldName = 'idpagamento'
      ReadOnly = True
    end
  end
end
