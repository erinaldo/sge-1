inherited ViewVendaMobileVendedor: TViewVendaMobileVendedor
  Caption = 'ViewVendaMobileVendedor'
  ClientHeight = 447
  ClientWidth = 811
  Color = 16515018
  ExplicitWidth = 827
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContent: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 447
    Align = alClient
    BevelOuter = bvNone
    FullRepaint = False
    ParentBackground = False
    ParentColor = True
    TabOrder = 0
    StyleElements = []
    object pnlHeader: TPanel
      Left = 0
      Top = 0
      Width = 811
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblMenu: TLabel
        AlignWithMargins = True
        Left = 15
        Top = 12
        Width = 93
        Height = 26
        Margins.Left = 15
        Margins.Top = 12
        Margins.Bottom = 12
        Align = alLeft
        Caption = 'Sincronizar >'
        Font.Charset = ANSI_CHARSET
        Font.Color = 1848330
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 21
      end
      object lblEtata: TLabel
        AlignWithMargins = True
        Left = 211
        Top = 12
        Width = 64
        Height = 26
        Margins.Left = 0
        Margins.Top = 12
        Margins.Bottom = 12
        Align = alLeft
        Caption = 'Etapa . . .'
        Font.Charset = ANSI_CHARSET
        Font.Color = 1848330
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 229
        ExplicitHeight = 21
      end
      object lblRotina: TLabel
        AlignWithMargins = True
        Left = 111
        Top = 12
        Width = 97
        Height = 26
        Margins.Left = 0
        Margins.Top = 12
        Margins.Bottom = 12
        Align = alLeft
        Caption = 'Vendedores >'
        Font.Charset = ANSI_CHARSET
        Font.Color = 1848330
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 110
      end
    end
    object pnlFooter: TPanel
      Left = 0
      Top = 397
      Width = 811
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
end
