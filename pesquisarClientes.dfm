object pesquisarCliente: TpesquisarCliente
  Left = 495
  Top = 199
  Width = 760
  Height = 562
  Caption = 'pesquisarCliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisarClienteGeral: TPanel
    Left = 100
    Top = 56
    Width = 525
    Height = 381
    Color = clWhite
    TabOrder = 0
    object pnlTopoPesqCliente: TPanel
      Left = 1
      Top = 1
      Width = 523
      Height = 32
      Align = alTop
      Color = 13423300
      TabOrder = 0
      object lbl8: TLabel
        Left = 4
        Top = 4
        Width = 146
        Height = 24
        Caption = 'Pesquisar Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object cbbConsulta: TComboBox
      Left = 12
      Top = 44
      Width = 69
      Height = 28
      AutoDropDown = True
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'ID'
      Items.Strings = (
        'ID'
        'Nome'
        'CPF')
    end
    object edtConsulta: TEdit
      Left = 88
      Top = 44
      Width = 357
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = edtConsultaKeyDown
    end
    object btnbuscar: TButton
      Left = 450
      Top = 40
      Width = 61
      Height = 33
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnbuscarClick
    end
    object dbgrdconsultacli: TDBGrid
      Left = 12
      Top = 76
      Width = 501
      Height = 257
      DataSource = dsConsultaCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgrdconsultacliDblClick
      OnKeyDown = dbgrdconsultacliKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'idcliente'
          Title.Caption = 'Id'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Title.Caption = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_nascimento'
          Title.Caption = 'Data de nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endere'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Visible = True
        end>
    end
    object btnSelecionarCli: TButton
      Left = 359
      Top = 336
      Width = 73
      Height = 37
      Caption = 'Selecionar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnSelecionarCliClick
    end
    object btnSaircli: TButton
      Left = 439
      Top = 336
      Width = 73
      Height = 37
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnSaircliClick
    end
    object btnCadastrarCliente: TButton
      Left = 11
      Top = 336
      Width = 73
      Height = 37
      Caption = 'Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnCadastrarClienteClick
    end
  end
  object qryConsultaCliente: TADOQuery
    Connection = LojaMenu.conLoja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from cliente')
    Left = 656
    Top = 68
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
    Left = 652
    Top = 128
  end
end
