object pesquisarCliente: TpesquisarCliente
  Left = 494
  Top = 198
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisarClienteGeral: TPanel
    Left = 152
    Top = 68
    Width = 405
    Height = 281
    Color = clWhite
    TabOrder = 0
    object pnlTopoPesqCliente: TPanel
      Left = 1
      Top = 1
      Width = 403
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
      Height = 21
      ItemHeight = 13
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
      Width = 241
      Height = 21
      TabOrder = 2
      OnKeyDown = edtConsultaKeyDown
    end
    object btnbuscar: TButton
      Left = 336
      Top = 44
      Width = 49
      Height = 21
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = btnbuscarClick
    end
    object dbgrdconsultacli: TDBGrid
      Left = 12
      Top = 76
      Width = 373
      Height = 161
      DataSource = dsConsultaCliente
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idcliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_nascimento'
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
      Left = 268
      Top = 244
      Width = 53
      Height = 29
      Caption = 'Selecionar'
      Enabled = False
      TabOrder = 5
      OnClick = btnSelecionarCliClick
    end
    object btnSaircli: TButton
      Left = 332
      Top = 244
      Width = 53
      Height = 29
      Caption = 'Sair'
      TabOrder = 6
      OnClick = btnSaircliClick
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
