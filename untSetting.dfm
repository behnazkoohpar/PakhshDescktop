object frmSetting: TfrmSetting
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1578#1606#1592#1740#1605#1575#1578
  ClientHeight = 551
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object AdvSmoothPanel1: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 494
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Fill.Color = clWhite
    Fill.ColorTo = clWhite
    Fill.ColorMirror = clWhite
    Fill.ColorMirrorTo = clWhite
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 10066329
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.5.2.1'
    Align = alClient
    TabOrder = 0
    ExplicitTop = -3
    ExplicitHeight = 488
    TMSStyle = 4
    object pnlStatusVersion: TAdvSmoothPanel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 578
      Height = 59
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clGray
      Fill.Rounding = 10
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.5.2.1'
      Align = alTop
      TabOrder = 0
      DesignSize = (
        578
        59)
      TMSStyle = 4
      object Label7: TLabel
        Left = 459
        Top = 6
        Width = 104
        Height = 14
        Caption = #1608#1590#1593#1740#1578' '#1575#1580#1585#1575#1740' '#1576#1585#1606#1575#1605#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rbServer: TcxRadioButton
        Left = 455
        Top = 33
        Width = 108
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1575#1580#1585#1575' '#1575#1586' '#1585#1608#1740' '#1587#1585#1608#1585
        Checked = True
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 0
        TabStop = True
        OnClick = rbServerClick
        Transparent = True
      end
      object rbClient: TcxRadioButton
        Left = 204
        Top = 33
        Width = 202
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1575#1580#1585#1575' '#1575#1586' '#1585#1608#1740' '#1705#1604#1575#1740#1606#1578' '#1576#1575' '#1588#1576#1705#1607' '#1583#1575#1582#1604#1740
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 1
        OnClick = rbClientClick
        Transparent = True
      end
      object rbInternet: TcxRadioButton
        Left = 18
        Top = 33
        Width = 127
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1575#1580#1585#1575' '#1575#1586' '#1591#1585#1740#1602' '#1575#1740#1606#1578#1585#1606#1578
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 2
        OnClick = rbInternetClick
        Transparent = True
      end
    end
    object pnlNotify: TAdvSmoothPanel
      AlignWithMargins = True
      Left = 10
      Top = 315
      Width = 578
      Height = 166
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clGray
      Fill.Rounding = 10
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.5.2.1'
      Align = alTop
      TabOrder = 1
      ExplicitTop = 291
      DesignSize = (
        578
        166)
      TMSStyle = 4
      object Label3: TLabel
        Left = 419
        Top = 9
        Width = 144
        Height = 14
        Caption = #1578#1606#1592#1740#1605#1575#1578' '#1575#1585#1587#1575#1604' '#1606#1608#1578#1740#1601#1740#1705#1740#1588#1606' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object chkNotifyAccept: TcxCheckBox
        Left = 157
        Top = 38
        Anchors = [akTop, akRight]
        Caption = #1576#1593#1583' '#1575#1586' '#1607#1585' '#1576#1575#1585' '#1578#1575#1740#1740#1583' '#1583#1585#1582#1608#1575#1587#1578' '#1705#1575#1604#1575' '#1576#1585#1575#1740' '#1605#1588#1578#1585#1740' '#1606#1608#1578#1740#1601#1740#1705#1740#1588#1606' '#1575#1585#1587#1575#1604' '#1588#1608#1583
        Properties.Alignment = taRightJustify
        State = cbsChecked
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        TabOrder = 0
        Transparent = True
      end
      object chkUnAccept: TcxCheckBox
        Left = 130
        Top = 71
        Anchors = [akTop, akRight]
        Caption = 
          #1576#1593#1583' '#1575#1586' '#1607#1585' '#1576#1575#1585' '#1593#1583#1605' '#1578#1575#1740#1740#1583' '#1583#1585#1582#1608#1575#1587#1578' '#1705#1575#1604#1575' '#1576#1585#1575#1740' '#1605#1588#1578#1585#1740' '#1606#1608#1578#1740#1601#1740#1705#1740#1588#1606' '#1575#1585#1587#1575#1604 +
          ' '#1588#1608#1583
        Properties.Alignment = taRightJustify
        State = cbsChecked
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        TabOrder = 1
        Transparent = True
      end
      object chkSended: TcxCheckBox
        Left = 206
        Top = 103
        Anchors = [akTop, akRight]
        Caption = #1576#1593#1583' '#1575#1586' '#1607#1585' '#1576#1575#1585' '#1575#1585#1587#1575#1604' '#1705#1575#1604#1575' '#1576#1585#1575#1740' '#1605#1588#1578#1585#1740' '#1606#1608#1578#1740#1601#1740#1705#1740#1588#1606' '#1575#1585#1587#1575#1604' '#1588#1608#1583
        Properties.Alignment = taRightJustify
        State = cbsChecked
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        TabOrder = 2
        Transparent = True
      end
      object cxCheckBox3: TcxCheckBox
        Left = 81
        Top = 134
        Anchors = [akTop, akRight]
        Caption = 
          #1576#1593#1583' '#1575#1586' '#1578#1587#1608#1740#1607' '#1581#1587#1575#1576' '#1705#1575#1605#1604' '#1605#1585#1576#1608#1591' '#1576#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1576#1585#1575#1740' '#1605#1588#1578#1585#1740' '#1606#1608#1578#1740#1601#1740#1705#1740#1588#1606' '#1575#1585 +
          #1587#1575#1604' '#1588#1608#1583
        Enabled = False
        Properties.Alignment = taRightJustify
        Style.BorderStyle = ebsOffice11
        Style.HotTrack = True
        TabOrder = 3
        Transparent = True
      end
    end
    object pnlServer: TAdvSmoothPanel
      AlignWithMargins = True
      Left = 10
      Top = 79
      Width = 578
      Height = 68
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clGray
      Fill.Rounding = 10
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.5.2.1'
      Align = alTop
      TabOrder = 2
      ExplicitTop = 97
      TMSStyle = 4
      object lblServerAddress: TLabel
        Left = 410
        Top = 38
        Width = 153
        Height = 14
        Caption = #1570#1583#1585#1587' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1585#1608#1740#1587' '#1583#1607#1606#1583#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPortServer: TLabel
        Left = 77
        Top = 38
        Width = 143
        Height = 14
        Caption = #1588#1605#1575#1585#1607' '#1662#1608#1585#1578' '#1587#1585#1608#1740#1587' '#1583#1607#1606#1583#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 454
        Top = 7
        Width = 109
        Height = 14
        Caption = #1578#1606#1592#1740#1605#1575#1578' '#1606#1587#1582#1607' '#1587#1585#1608#1585':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtPortServer: TEdit
        Left = 18
        Top = 34
        Width = 54
        Height = 24
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 0
        Text = '3000'
      end
      object IpAddressServer: TAdvIPEdit
        Left = 266
        Top = 34
        Width = 140
        Height = 24
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Color = clWindow
        Enabled = True
        MaxLength = 3
        ParentBiDiMode = False
        TabOrder = 1
        Visible = True
        AutoFocus = False
        Flat = False
        FlatLineColor = clBlack
        FlatParentColor = True
        ShowModified = False
        FocusBorder = False
        FocusFontColor = clBlack
        LabelAlwaysEnabled = False
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        ModifiedColor = clRed
        SelectFirstChar = False
        Version = '1.1.1.1'
        EditMask = ''
        IPAddress = '127.0.0.1'
        IPAddressType = ipv4
      end
    end
    object pnlInternet: TAdvSmoothPanel
      AlignWithMargins = True
      Left = 10
      Top = 236
      Width = 578
      Height = 69
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clGray
      Fill.Rounding = 10
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.5.2.1'
      Align = alTop
      TabOrder = 3
      ExplicitTop = 194
      TMSStyle = 4
      object lblInternetAddress: TLabel
        Left = 410
        Top = 39
        Width = 153
        Height = 14
        Caption = #1570#1583#1585#1587' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1585#1608#1740#1587' '#1583#1607#1606#1583#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPortInternet: TLabel
        Left = 77
        Top = 39
        Width = 143
        Height = 14
        Caption = #1588#1605#1575#1585#1607' '#1662#1608#1585#1578' '#1587#1585#1608#1740#1587' '#1583#1607#1606#1583#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 447
        Top = 8
        Width = 116
        Height = 14
        Caption = #1578#1606#1592#1740#1605#1575#1578' '#1606#1587#1582#1607' '#1575#1740#1606#1578#1585#1606#1578':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtPortInternet: TEdit
        Left = 18
        Top = 35
        Width = 54
        Height = 24
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 0
        Text = '3000'
      end
      object IpAddressInternet: TAdvIPEdit
        Left = 266
        Top = 35
        Width = 140
        Height = 24
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Color = clWindow
        Enabled = True
        MaxLength = 3
        ParentBiDiMode = False
        TabOrder = 1
        Visible = True
        AutoFocus = False
        Flat = False
        FlatLineColor = clBlack
        FlatParentColor = True
        ShowModified = False
        FocusBorder = False
        FocusFontColor = clBlack
        LabelAlwaysEnabled = False
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        ModifiedColor = clRed
        SelectFirstChar = False
        Version = '1.1.1.1'
        EditMask = ''
        IPAddress = '109.125.141.71'
        IPAddressType = ipv4
      end
    end
    object pnlClient: TAdvSmoothPanel
      AlignWithMargins = True
      Left = 10
      Top = 157
      Width = 578
      Height = 69
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clWhite
      Fill.ColorMirrorTo = clWhite
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clGray
      Fill.Rounding = 10
      Fill.ShadowColor = clNone
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.5.2.1'
      Align = alTop
      TabOrder = 4
      ExplicitTop = 194
      TMSStyle = 4
      object lblClientAddress: TLabel
        Left = 410
        Top = 39
        Width = 153
        Height = 14
        Caption = #1570#1583#1585#1587' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1585#1608#1740#1587' '#1583#1607#1606#1583#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPortClient: TLabel
        Left = 77
        Top = 39
        Width = 143
        Height = 14
        Caption = #1588#1605#1575#1585#1607' '#1662#1608#1585#1578' '#1587#1585#1608#1740#1587' '#1583#1607#1606#1583#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 447
        Top = 8
        Width = 116
        Height = 14
        Caption = #1578#1606#1592#1740#1605#1575#1578' '#1606#1587#1582#1607' '#1705#1604#1575#1740#1606#1578':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtPortClient: TEdit
        Left = 18
        Top = 35
        Width = 54
        Height = 24
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 0
        Text = '3000'
      end
      object IpAddressClient: TAdvIPEdit
        Left = 266
        Top = 35
        Width = 140
        Height = 24
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Color = clWindow
        Enabled = True
        MaxLength = 3
        ParentBiDiMode = False
        TabOrder = 1
        Visible = True
        AutoFocus = False
        Flat = False
        FlatLineColor = clBlack
        FlatParentColor = True
        ShowModified = False
        FocusBorder = False
        FocusFontColor = clBlack
        LabelAlwaysEnabled = False
        LabelPosition = lpLeftTop
        LabelMargin = 4
        LabelTransparent = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        ModifiedColor = clRed
        SelectFirstChar = False
        Version = '1.1.1.1'
        EditMask = ''
        IPAddress = '192.168.1.10'
        IPAddressType = ipv4
      end
    end
  end
  object AdvSmoothPanel2: TAdvSmoothPanel
    Left = 0
    Top = 494
    Width = 598
    Height = 57
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Fill.Color = clWhite
    Fill.ColorTo = clWhite
    Fill.ColorMirror = clWhite
    Fill.ColorMirrorTo = clWhite
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 10066329
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.5.2.1'
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 488
    TMSStyle = 4
    object btnClose: TAdvSmoothButton
      AlignWithMargins = True
      Left = 130
      Top = 10
      Width = 150
      Height = 37
      Margins.Left = 130
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.FocusColor = clHighlight
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = #1575#1606#1589#1585#1575#1601
      Color = clMenuBar
      ParentFont = False
      TabOrder = 0
      Version = '2.1.1.5'
      ModalResult = 8
      ExplicitLeft = 106
      ExplicitTop = 13
      TMSStyle = 0
    end
    object btnOK: TAdvSmoothButton
      AlignWithMargins = True
      Left = 318
      Top = 10
      Width = 150
      Height = 37
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 130
      Margins.Bottom = 10
      Align = alRight
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -13
      Appearance.Font.Name = 'Tahoma'
      Appearance.Font.Style = []
      Appearance.FocusColor = clHighlight
      Status.Caption = '0'
      Status.Appearance.Fill.Color = clRed
      Status.Appearance.Fill.ColorMirror = clNone
      Status.Appearance.Fill.ColorMirrorTo = clNone
      Status.Appearance.Fill.GradientType = gtSolid
      Status.Appearance.Fill.GradientMirrorType = gtSolid
      Status.Appearance.Fill.BorderColor = clGray
      Status.Appearance.Fill.Rounding = 0
      Status.Appearance.Fill.ShadowOffset = 0
      Status.Appearance.Fill.Glow = gmNone
      Status.Appearance.Font.Charset = DEFAULT_CHARSET
      Status.Appearance.Font.Color = clWhite
      Status.Appearance.Font.Height = -11
      Status.Appearance.Font.Name = 'Tahoma'
      Status.Appearance.Font.Style = []
      BevelColor = clBlack
      Caption = #1579#1576#1578
      Color = clMenuBar
      ParentFont = False
      TabOrder = 1
      Version = '2.1.1.5'
      OnClick = btnOKClick
      ExplicitLeft = 350
      TMSStyle = 0
    end
  end
end
