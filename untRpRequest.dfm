object frmRpRequest: TfrmRpRequest
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1711#1586#1575#1585#1588' '#1583#1585#1582#1608#1575#1587#1578' '#1605#1588#1578#1585#1740#1575#1606
  ClientHeight = 749
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEdit: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 983
    Height = 118
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
    Fill.BorderColor = clGray
    Fill.BorderWidth = 2
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.6.0.1'
    Align = alTop
    TabOrder = 0
    DesignSize = (
      983
      118)
    TMSStyle = 4
    object pnlStufInfo: TAdvSmoothPanel
      Left = 261
      Top = 9
      Width = 713
      Height = 48
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
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 0
      DesignSize = (
        713
        48)
      TMSStyle = 4
      object Label3: TLabel
        Left = 690
        Top = 17
        Width = 11
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1575#1586':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 943
      end
      object Label1: TLabel
        Left = 556
        Top = 17
        Width = 11
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 809
      end
      object edtFromDate: TSolarDatePicker
        Left = 585
        Top = 12
        Width = 102
        Height = 24
        Anchors = [akTop, akRight]
        About = 'Created by : '#1575#1605#1740#1585' '#1601#1585#1586#1575#1605
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Enabled = True
        VisibleLayoutSwitch = False
        DateKind = dkSolar
        CheckInputOnExit = True
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtBlueArrowDown
        ShowDefaultDate = False
        AutoCheck = False
        AutoDeleteDelimiter = False
        EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
        MaskEnabled = False
        ColorCaptionStart = 13158600
        ColorCaptionStop = clWhite
        ColorBodyStart = clWhite
        ColorBodyStop = clWhite
        ColorTodayLine = clBlack
        ColorSelectBrush = 14474460
        ColorDisableMonth = clGray
        ColorVacationDay = clRed
        ColorNormalDay = clBlack
        ColorStyle = csWhiteGray
        ButtonStyle = bsRound
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
      object edtToDate: TSolarDatePicker
        Left = 451
        Top = 12
        Width = 102
        Height = 24
        Anchors = [akTop, akRight]
        About = 'Created by : '#1575#1605#1740#1585' '#1601#1585#1586#1575#1605
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '1398/05/21'
        Enabled = True
        VisibleLayoutSwitch = False
        DateKind = dkSolar
        CheckInputOnExit = True
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtBlueArrowDown
        ShowDefaultDate = True
        AutoCheck = False
        AutoDeleteDelimiter = False
        EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
        MaskEnabled = False
        ColorCaptionStart = 13158600
        ColorCaptionStop = clWhite
        ColorBodyStart = clWhite
        ColorBodyStop = clWhite
        ColorTodayLine = clBlack
        ColorSelectBrush = 14474460
        ColorDisableMonth = clGray
        ColorVacationDay = clRed
        ColorNormalDay = clBlack
        ColorStyle = csWhiteGray
        ButtonStyle = bsRound
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
      object rb1: TcxRadioButton
        Left = 356
        Top = 15
        Width = 76
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1583#1585' '#1575#1606#1578#1592#1575#1585' '#1578#1575#1740#1740#1583
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 2
        Transparent = True
      end
      object rb2: TcxRadioButton
        Left = 267
        Top = 15
        Width = 65
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1578#1575#1740#1740#1583' '#1588#1583#1607
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 3
        Transparent = True
      end
      object rb3: TcxRadioButton
        Left = 189
        Top = 14
        Width = 54
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1585#1583' '#1588#1583#1607
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 4
        Transparent = True
      end
      object rb4: TcxRadioButton
        Left = 94
        Top = 15
        Width = 70
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1575#1585#1587#1575#1604' '#1588#1583#1607
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 5
        Transparent = True
      end
      object cxRadioButton4: TcxRadioButton
        Left = 22
        Top = 14
        Width = 46
        Height = 19
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1607#1605#1607
        Checked = True
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 6
        TabStop = True
        Transparent = True
      end
    end
    object AdvSmoothPanel2: TAdvSmoothPanel
      Left = 8
      Top = 63
      Width = 484
      Height = 48
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
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 1
      DesignSize = (
        484
        48)
      TMSStyle = 4
      object Label6: TLabel
        Left = 370
        Top = 16
        Width = 104
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1580#1605#1593' '#1601#1575#1705#1578#1608#1585' '#1605#1588#1578#1585#1740' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 119
        Top = 16
        Width = 19
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1585#1740#1575#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbPriceSign: TComboBox
        Left = 245
        Top = 14
        Width = 120
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 2
        TabOrder = 0
        Text = #1576#1585#1575#1576#1585' '#1576#1575
        Items.Strings = (
          #1576#1586#1585#1711#1578#1585' '#1575#1586
          #1576#1586#1585#1711#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1576#1585#1575#1576#1585' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1575#1586)
      end
      object cmbIsPrice: TComboBox
        Left = 13
        Top = 14
        Width = 84
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 1
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object edtPrice: TEdit
        Left = 143
        Top = 14
        Width = 99
        Height = 21
        Alignment = taCenter
        Anchors = [akTop, akRight]
        NumbersOnly = True
        TabOrder = 2
      end
    end
    object AdvSmoothPanel1: TAdvSmoothPanel
      Left = 497
      Top = 63
      Width = 477
      Height = 48
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
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 2
      DesignSize = (
        477
        48)
      TMSStyle = 4
      object Label2: TLabel
        Left = 341
        Top = 16
        Width = 128
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583' '#1583#1585#1582#1608#1575#1587#1578' '#1605#1588#1578#1585#1740' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 319
      end
      object cmbCountSign: TComboBox
        Left = 219
        Top = 14
        Width = 119
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 2
        TabOrder = 0
        Text = #1576#1585#1575#1576#1585' '#1576#1575
        Items.Strings = (
          #1576#1586#1585#1711#1578#1585' '#1575#1586
          #1576#1586#1585#1711#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1576#1585#1575#1576#1585' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1575#1586)
      end
      object cmbIsCount: TComboBox
        Left = 15
        Top = 14
        Width = 88
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 1
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object edtCount: TEdit
        Left = 108
        Top = 14
        Width = 107
        Height = 21
        Alignment = taCenter
        Anchors = [akTop, akRight]
        NumbersOnly = True
        TabOrder = 2
      end
    end
    object AdvSmoothPanel3: TAdvSmoothPanel
      Left = 8
      Top = 9
      Width = 248
      Height = 48
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
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 8
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Anchors = [akTop, akRight]
      TabOrder = 3
      DesignSize = (
        248
        48)
      TMSStyle = 4
      object lblStuffBrandCode: TLabel
        Left = 142
        Top = 16
        Width = 97
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607' '#1605#1588#1578#1585#1740
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbMobileNumber: TComboBox
        Left = 12
        Top = 14
        Width = 123
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
      end
    end
  end
  object pnlBottom: TAdvSmoothPanel
    Left = 0
    Top = 693
    Width = 983
    Height = 56
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
    Fill.BorderColor = clWhite
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.6.0.1'
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      983
      56)
    TMSStyle = 4
    object btnOK: TAdvSmoothButton
      AlignWithMargins = True
      Left = 805
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 105
      Margins.Bottom = 10
      Anchors = [akTop, akRight]
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
      Caption = #1578#1607#1740#1607' '#1711#1586#1575#1585#1588
      Color = clMenuBar
      ParentFont = False
      TabOrder = 0
      Version = '2.1.3.0'
      OnClick = btnOKClick
      TMSStyle = 0
    end
    object AdvSmoothButton1: TAdvSmoothButton
      AlignWithMargins = True
      Left = 25
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 105
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
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
      TabOrder = 1
      Version = '2.1.3.0'
      ModalResult = 8
      TMSStyle = 0
    end
    object btnExcel: TAdvSmoothButton
      AlignWithMargins = True
      Left = 640
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 105
      Margins.Bottom = 10
      Anchors = [akTop, akRight]
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
      Caption = #1582#1585#1608#1580#1740' '#1576#1607' '#1575#1705#1587#1604
      Color = clMenuBar
      ParentFont = False
      TabOrder = 2
      Enabled = False
      Version = '2.1.3.0'
      OnClick = btnExcelClick
      TMSStyle = 0
    end
    object btnPreview: TAdvSmoothButton
      AlignWithMargins = True
      Left = 480
      Top = 10
      Width = 150
      Height = 41
      Margins.Left = 20
      Margins.Top = 10
      Margins.Right = 105
      Margins.Bottom = 10
      Anchors = [akTop, akRight]
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
      Caption = #1662#1740#1588' '#1606#1605#1575#1740#1588' '#1670#1575#1662
      Color = clMenuBar
      ParentFont = False
      TabOrder = 3
      Enabled = False
      Version = '2.1.3.0'
      OnClick = btnPreviewClick
      TMSStyle = 0
    end
  end
  object pnlGrid: TAdvSmoothPanel
    Left = 0
    Top = 118
    Width = 983
    Height = 575
    Cursor = crDefault
    Caption.Text = 'AdvSmoothPanel4'
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
    Fill.BorderColor = clNone
    Fill.BorderWidth = 2
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowOffset = 10
    Fill.Glow = gmNone
    Version = '1.6.0.1'
    Align = alClient
    TabOrder = 2
    TMSStyle = 4
    object grd: TDBGridEh
      Left = 0
      Top = 0
      Width = 983
      Height = 339
      ParentCustomHint = False
      Align = alClient
      Border.ExtendedDraw = True
      Color = clBtnFace
      ColumnDefValues.Title.TitleButton = True
      DataSource = ds
      DynProps = <>
      EvenRowColor = 14019837
      FixedColor = clActiveBorder
      Flat = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.FillStyle = cfstGradientEh
      FooterParams.Font.Charset = ARABIC_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -13
      FooterParams.Font.Name = 'Arial Narrow'
      FooterParams.Font.Style = []
      FooterParams.HorzLines = True
      FooterParams.ParentFont = False
      FooterParams.VertLines = True
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      IndicatorParams.Color = clWhite
      IndicatorParams.HorzLines = True
      IndicatorParams.VertLines = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      EmptyDataInfo.Active = True
      EmptyDataInfo.Font.Charset = ARABIC_CHARSET
      EmptyDataInfo.Font.Color = clGray
      EmptyDataInfo.Font.Height = -13
      EmptyDataInfo.Font.Name = 'Arabic Transparent'
      EmptyDataInfo.Font.Style = []
      EmptyDataInfo.ParentFont = False
      OddRowColor = 13696508
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentFont = False
      ParentShowHint = False
      RowDetailPanel.Color = 11662315
      RowDetailPanel.VertSizing = True
      SearchPanel.Enabled = True
      SelectionDrawParams.SelectionStyle = gsdsListViewThemedEh
      SelectionDrawParams.DrawFocusFrame = True
      SelectionDrawParams.DrawFocusFrameStored = True
      ShowHint = False
      SortLocal = True
      STFilter.InstantApply = False
      TabOrder = 0
      TitleParams.Font.Charset = ARABIC_CHARSET
      TitleParams.Font.Color = clWindowText
      TitleParams.Font.Height = -12
      TitleParams.Font.Name = 'Tahoma'
      TitleParams.Font.Style = []
      TitleParams.MultiTitle = True
      TitleParams.ParentFont = False
      Columns = <
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Width = 78
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MobileNumber'
          Footers = <>
          Width = 92
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RequestDateTime'
          Footers = <>
          Width = 174
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastName'
          Footers = <>
          Width = 146
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FirstName'
          Footers = <>
          Width = 91
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffCount'
          Footers = <>
          Width = 64
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SumPrice'
          Footers = <>
          Width = 87
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Accepted'
          Footers = <>
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AcceptedDateTime'
          Footers = <>
          Width = 170
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Sended'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object pnlReceiptItem: TAdvSmoothPanel
      Left = 0
      Top = 339
      Width = 983
      Height = 236
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
      Fill.BorderColor = clSilver
      Fill.BorderWidth = 2
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Version = '1.6.0.1'
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        983
        236)
      TMSStyle = 4
      object Label8: TLabel
        Left = 891
        Top = 11
        Width = 83
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1586#1574#1740#1575#1578' '#1583#1585#1582#1608#1575#1587#1578':'
      end
      object grdReceiptItem: TDBGridEh
        Left = 0
        Top = 31
        Width = 983
        Height = 205
        ParentCustomHint = False
        Align = alBottom
        AutoFitColWidths = True
        Border.ExtendedDraw = True
        Color = clBtnFace
        ColumnDefValues.Title.TitleButton = True
        DataSource = dsDetailes
        DynProps = <>
        EvenRowColor = 14019837
        FixedColor = clActiveBorder
        Flat = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.FillStyle = cfstGradientEh
        FooterParams.Font.Charset = ARABIC_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -13
        FooterParams.Font.Name = 'Arial Narrow'
        FooterParams.Font.Style = []
        FooterParams.HorzLines = True
        FooterParams.ParentFont = False
        FooterParams.VertLines = True
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorParams.Color = clWhite
        IndicatorParams.HorzLines = True
        IndicatorParams.VertLines = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        EmptyDataInfo.Active = True
        EmptyDataInfo.Font.Charset = ARABIC_CHARSET
        EmptyDataInfo.Font.Color = clGray
        EmptyDataInfo.Font.Height = -13
        EmptyDataInfo.Font.Name = 'Arabic Transparent'
        EmptyDataInfo.Font.Style = []
        EmptyDataInfo.ParentFont = False
        OddRowColor = 13696508
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ParentFont = False
        ParentShowHint = False
        RowDetailPanel.Color = 11662315
        RowDetailPanel.VertSizing = True
        SearchPanel.Enabled = True
        SelectionDrawParams.SelectionStyle = gsdsListViewThemedEh
        SelectionDrawParams.DrawFocusFrame = True
        SelectionDrawParams.DrawFocusFrameStored = True
        ShowHint = False
        SortLocal = True
        STFilter.InstantApply = False
        TabOrder = 0
        TitleParams.Font.Charset = ARABIC_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -12
        TitleParams.Font.Name = 'Tahoma'
        TitleParams.Font.Style = []
        TitleParams.MultiTitle = True
        TitleParams.ParentFont = False
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'StuffBrandCode'
            Footers = <>
            Width = 108
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'StuffBrandName'
            Footers = <>
            Width = 333
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'unitName'
            Footers = <>
            Width = 179
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Count'
            Footers = <>
            Width = 81
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Price'
            Footers = <>
            Width = 98
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sumPrice'
            Footers = <>
            Width = 106
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object qry: TUniQuery
    SQL.Strings = (
      'SELECT '
      '   r.ID,'
      '   r.RequestDateTime,'
      '   r.UserID,'
      '   r.StuffCount,'
      '   r.SumPrice,'
      '   r.Accepted,'
      '   r.AcceptedDateTime,'
      '   r.Sended,'
      '   u.LastName,'
      '   u.FirstName,'
      '   u.StoreName,'
      '   u.MobileNumber'
      'FROM Request AS r'
      'LEFT JOIN app.Users AS u ON (u.ID = r.UserID) ')
    Left = 24
    Top = 320
    object qryID: TFloatField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1588#1606#1575#1587#1607' '#1583#1585#1582#1608#1575#1587#1578
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object qryRequestDateTime: TDateTimeField
      DisplayLabel = #1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578
      DisplayWidth = 24
      FieldName = 'RequestDateTime'
      OnGetText = qryRequestDateTimeGetText
    end
    object qryUserID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1588#1578#1585#1740
      DisplayWidth = 10
      FieldName = 'UserID'
    end
    object qryStuffCount: TSmallintField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1705#1575#1604#1575
      DisplayWidth = 10
      FieldName = 'StuffCount'
    end
    object qrySumPrice: TIntegerField
      DisplayLabel = #1580#1605#1593' '#1601#1575#1705#1578#1608#1585
      DisplayWidth = 10
      FieldName = 'SumPrice'
      OnGetText = qrySumPriceGetText
    end
    object qryAccepted: TBooleanField
      DisplayLabel = #1608#1590#1593#1740#1578' '#1583#1585#1582#1608#1575#1587#1578
      DisplayWidth = 9
      FieldName = 'Accepted'
    end
    object qryAcceptedDateTime: TDateTimeField
      DisplayLabel = #1586#1605#1575#1606' '#1578#1575#1740#1740#1583' '#1583#1585#1582#1608#1575#1587#1578
      DisplayWidth = 23
      FieldName = 'AcceptedDateTime'
      OnGetText = qryAcceptedDateTimeGetText
    end
    object qrySended: TBooleanField
      DisplayLabel = #1608#1590#1593#1740#1578' '#1575#1585#1587#1575#1604
      DisplayWidth = 8
      FieldName = 'Sended'
      OnGetText = qrySendedGetText
    end
    object qryLastName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      DisplayWidth = 22
      FieldName = 'LastName'
      ReadOnly = True
      Size = 50
    end
    object qryFirstName: TWideStringField
      DisplayLabel = #1606#1575#1605' '
      DisplayWidth = 17
      FieldName = 'FirstName'
      ReadOnly = True
      Size = 50
    end
    object qryStoreName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
      DisplayWidth = 19
      FieldName = 'StoreName'
      ReadOnly = True
      Size = 50
    end
    object qryMobileNumber: TWideStringField
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      DisplayWidth = 14
      FieldName = 'MobileNumber'
      ReadOnly = True
      Size = 12
    end
  end
  object ds: TUniDataSource
    DataSet = qry
    Left = 24
    Top = 377
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 199
    Top = 642
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = #1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1594#1583#1740#1585
    Subject = #1711#1586#1575#1585#1588' '#1578#1585#1583#1583' '#1575#1601#1585#1575#1583' '
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 119
    Top = 642
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ExportEMF = True
    AsText = True
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 32
    Top = 642
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID='#1588#1606#1575#1587#1607' '#1583#1585#1582#1608#1575#1587#1578
      'RequestDateTime='#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578
      'UserID='#1588#1606#1575#1587#1607' '#1605#1588#1578#1585#1740
      'StuffCount='#1578#1593#1583#1575#1583' '#1705#1575#1604#1575
      'SumPrice='#1580#1605#1593' '#1601#1575#1705#1578#1608#1585
      'Accepted='#1608#1590#1593#1740#1578
      'AcceptedDateTime='#1586#1605#1575#1606' '#1578#1575#1740#1740#1583' '#1583#1585#1582#1608#1575#1587#1578
      'Sended='#1608#1590#1593#1740#1578' '#1575#1585#1587#1575#1604
      'LastName='#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      'FirstName='#1606#1575#1605
      'StoreName='#1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
      'MobileNumber='#1578#1604#1601#1606' '#1607#1605#1585#1575#1607)
    DataSource = ds
    BCDToCurrency = False
    Left = 88
    Top = 392
  end
  object frxReport: TfrxReport
    Version = '6.4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43369.083960856500000000
    ReportOptions.LastChange = 43369.083960856500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 568
    Datasets = <
      item
        DataSet = frxDBDetailes
        DataSetName = 'frxDBDetailes'
      end
      item
        DataSet = frxDB
        DataSetName = 'frxDB'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 290.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      ShowTitleOnPreviousPage = False
      ResetPageNumbers = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 117.626159180000000000
        Top = 211.653680000000000000
        Width = 1020.473100000000000000
        DataSet = frxDB
        DataSetName = 'frxDB'
        RowCount = 0
        StartNewPage = True
        Stretched = True
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 978.898270000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244590000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1578#1604#1601#1606' '#1607#1605#1585#1575#1607'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 86.929190000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB."'#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 884.410020000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1588#1606#1575#1587#1607' '#1583#1585#1582#1608#1575#1587#1578
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1588#1606#1575#1587#1607' '#1583#1585#1582#1608#1575#1587#1578'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 86.929190000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1580#1605#1593' '#1601#1575#1705#1578#1608#1585
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1580#1605#1593' '#1601#1575#1705#1578#1608#1585'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1578#1593#1583#1575#1583' '#1705#1575#1604#1575
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1578#1593#1583#1575#1583' '#1705#1575#1604#1575'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 86.929190000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1606#1575#1605
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDB."'#1606#1575#1605'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 86.929190000000000000
          Width = 147.401670000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1586#1605#1575#1606' '#1578#1575#1740#1740#1583' '#1583#1585#1582#1608#1575#1587#1578
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1586#1605#1575#1606' '#1578#1575#1740#1740#1583' '#1583#1585#1582#1608#1575#1587#1578'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1608#1590#1593#1740#1578' '#1575#1585#1587#1575#1604
          DataSet = frxDB
          DataSetName = 'frxDB'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB."'#1608#1590#1593#1740#1578' '#1575#1585#1587#1575#1604'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 978.898270000000000000
          Top = 56.692949999999990000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1583#1610#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 767.244590000000000000
          Top = 56.692949999999990000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1604#1601#1606' '#1607#1605#1585#1575#1607' '#1605#1588#1578#1585#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 56.692949999999990000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1587#1585' '#1580#1605#1593' '#1601#1575#1705#1578#1608#1585)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 56.692949999999990000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 884.410020000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1588#1606#1575#1587#1607' '#1583#1585#1582#1608#1575#1587#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1593#1583#1575#1583' '#1575#1602#1604#1575#1605' '#1705#1575#1604#1575)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1575#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 56.692949999999990000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 56.692949999999990000
          Width = 147.401670000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1586#1605#1575#1606' '#1578#1575#1740#1740#1583' '#1583#1585#1582#1608#1575#1587#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692949999999990000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1608#1590#1593#1740#1578' '#1575#1585#1587#1575#1604)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.309832720000000000
        Top = 430.866420000000000000
        Width = 1020.473100000000000000
        DataSet = frxDBDetailes
        DataSetName = 'frxDBDetailes'
        RowCount = 0
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850960000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1705#1583' '#1605#1581#1589#1608#1604
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1705#1583' '#1605#1581#1589#1608#1604'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Width = 215.433210000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1606#1575#1605' '#1605#1581#1589#1608#1604
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDetailes."'#1606#1575#1605' '#1605#1581#1589#1608#1604'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDetailes."'#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1578#1593#1583#1575#1583
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1578#1593#1583#1575#1583'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1602#1740#1605#1578
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1602#1740#1605#1578'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 68.031540000000010000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1583#1585#1589#1583' '#1578#1582#1601#1740#1601
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1583#1585#1589#1583' '#1578#1582#1601#1740#1601'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1587#1585' '#1580#1605#1593
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDetailes."'#1587#1585' '#1580#1605#1593'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Width = 211.653680000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataSet = frxDBDetailes
          DataSetName = 'frxDBDetailes'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.724799050000000000
        Top = 18.897650000000000000
        Width = 1020.473100000000000000
        object lblCo: TfrxMemoView
          AllowVectorExport = True
          Left = 739.753092750000000000
          Top = 2.190785370000000000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'B Lotus'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1587#1575#1605#1575#1606#1607' '#1662#1582#1588' '#1607#1608#1588#1605#1606#1583' '#1705#1575#1604#1575' '#1576#1607#1588#1585#1602)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.935683400000000000
        Top = 83.149660000000000000
        Width = 1020.473100000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 47.616883200000000000
          Top = 41.517625030000010000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 77.191713200000000000
          Top = 42.517625030000010000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ':'#1589#1601#1581#1607)
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 7.482993200000000000
          Top = 41.517625030000010000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TotalPages#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 33.719233200000000000
          Top = 39.297155030000100000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1586)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 83.073593200000000000
          Top = 8.985775919999995000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ':'#1578#1575#1585#1740#1582' '#1711#1586#1575#1585#1588)
          ParentFont = False
        end
        object lblDate: TfrxMemoView
          AllowVectorExport = True
          Left = 7.482993200000000000
          Top = 7.324365920000005000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'lblDate')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 372.283705000000100000
          Top = 18.208719660000000000
          Width = 275.905690000000000000
          Height = 34.015770000000010000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'B Lotus'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1711#1586#1575#1585#1588' '#1583#1585#1582#1608#1575#1587#1578' '#1605#1588#1578#1585#1740#1575#1606)
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 55.934446530000000000
        Top = 351.496290000000000000
        Width = 1020.473100000000000000
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850960000000000000
          Top = 26.456709999999990000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1705#1583' '#1605#1581#1589#1608#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 26.456709999999990000
          Width = 215.433210000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1606#1575#1605' '#1605#1581#1589#1608#1604)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 26.456709999999990000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1585#1583#1610#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 26.456709999999990000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 26.456709999999990000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1593#1583#1575#1583' / '#1605#1602#1583#1575#1585)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 26.456709999999990000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1602#1740#1605#1578' '#1608#1575#1581#1583' ('#1601#1740')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 26.456709999999990000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1583#1585#1589#1583' '#1578#1582#1601#1740#1601)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 26.456709999999990000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1605#1576#1604#1594' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456709999999990000
          Width = 211.653680000000000000
          Height = 30.236240000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8W = (
            #1578#1608#1590#1740#1581#1575#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Width = 1020.473100000000000000
          Height = 26.456710000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWindowFrame
          HAlign = haCenter
          Memo.UTF8W = (
            #1580#1586#1574#1740#1575#1578' '#1575#1602#1604#1575#1605' '#1587#1601#1575#1585#1588)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 87.177180000000000000
        Top = 521.575140000000100000
        Width = 1020.473100000000000000
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Width = 211.653680000000000000
          Height = 86.929190000000000000
          StretchMode = smMaxHeight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            #1605#1607#1585' '#1608' '#1575#1605#1590#1575#1740' '#1578#1575#1740#1740#1583' '#1705#1606#1606#1583#1607)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 207.874150000000000000
          Height = 86.929190000000000000
          StretchMode = smMaxHeight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            #1605#1607#1585' '#1608' '#1575#1605#1590#1575#1740' '#1575#1606#1576#1575#1585)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Width = 389.291590000000000000
          Height = 86.929190000000000000
          StretchMode = smMaxHeight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            #1578#1608#1590#1740#1581#1575#1578)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 211.653680000000000000
          Height = 86.929190000000000000
          StretchMode = smMaxHeight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            #1575#1605#1590#1575#1740' '#1605#1588#1578#1585#1740)
          ParentFont = False
        end
      end
    end
  end
  object qryDetailes: TUniQuery
    SQL.Strings = (
      '        SELECT ri.ID, '
      '        ri.RequestID, '
      '        ri.StuffBrandID, '
      '        ISNULL(ri.Count, 0) AS Count, '
      '        sb.Code AS StuffBrandCode, '
      '        s.Name AS StuffName, '
      '        b.Name AS BrandName, '
      '        s.Name + '#39' '#39' + b.Name AS StuffBrandName,  '
      '        ISNULL(sbp.Price, 0) AS Price, '
      '        ISNULL(sbp.Offer, 0) AS Offer, '
      
        '        (sbp.Price * ri.Count) - ((sbp.Price * ri.Count) * sbp.O' +
        'ffer) /100 as sumPrice, '
      '        u.Name AS unitName '
      '        FROM RequestItem AS ri '
      '        LEFT JOIN StuffBrand AS sb ON (ri.StuffBrandID = sb.ID) '
      '        LEFT JOIN Stuff AS s ON (sb.StuffID = s.ID) '
      '        LEFT JOIN Brand AS b ON (sb.BrandID = b.ID) '
      
        '        LEFT JOIN StuffBrandPrice AS sbp ON (ri.StuffBrandID = s' +
        'bp.StuffBrandID)  '
      '        LEFT JOIN Unit AS u ON (sb.UnitID = u.ID)'
      '')
    MasterSource = ds
    MasterFields = 'ID'
    DetailFields = 'RequestID'
    Left = 24
    Top = 536
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptInput
        Value = 140062.000000000000000000
      end>
    object qryDetailesID: TFloatField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1588#1606#1575#1587#1607' '#1580#1586#1574#1740#1575#1578' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object qryDetailesCount: TSmallintField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Count'
      ReadOnly = True
      Required = True
      OnGetText = qryDetailesCountGetText
    end
    object qryDetailesStuffBrandCode: TWideStringField
      DisplayLabel = #1705#1583' '#1605#1581#1589#1608#1604
      FieldName = 'StuffBrandCode'
      ReadOnly = True
      Size = 50
    end
    object qryDetailesStuffBrandName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1589#1608#1604
      FieldName = 'StuffBrandName'
      ReadOnly = True
      Size = 701
    end
    object qryDetailesPrice: TFloatField
      DisplayLabel = #1602#1740#1605#1578' '#1608#1575#1581#1583
      FieldName = 'Price'
      ReadOnly = True
      Required = True
      OnGetText = qryDetailesPriceGetText
      Precision = 10
    end
    object qryDetailesOffer: TSmallintField
      DisplayLabel = #1583#1585#1589#1583' '#1578#1582#1601#1740#1601
      FieldName = 'Offer'
      ReadOnly = True
      Required = True
    end
    object qryDetailessumPrice: TFloatField
      DisplayLabel = #1587#1585#1580#1605#1593' '#1605#1576#1604#1594
      FieldName = 'sumPrice'
      ReadOnly = True
      OnGetText = qryDetailessumPriceGetText
    end
    object qryDetailesunitName: TWideStringField
      DisplayLabel = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      FieldName = 'unitName'
      ReadOnly = True
      Size = 50
    end
    object qryDetailesStuffName: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1705#1575#1604#1575
      FieldName = 'StuffName'
      ReadOnly = True
      Size = 200
    end
    object qryDetailesBrandName: TWideStringField
      DisplayLabel = #1576#1585#1606#1583
      FieldName = 'BrandName'
      ReadOnly = True
      Size = 500
    end
    object qryDetailesRequestID: TFloatField
      FieldName = 'RequestID'
      LookupCache = True
    end
  end
  object dsDetailes: TUniDataSource
    DataSet = qryDetailes
    Left = 24
    Top = 593
  end
  object frxDBDetailes: TfrxDBDataset
    UserName = 'frxDBDetailes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID='#1588#1606#1575#1587#1607' '#1575#1602#1604#1575#1605' '#1583#1585#1582#1608#1575#1587#1578
      'Count='#1578#1593#1583#1575#1583
      'StuffBrandCode='#1705#1583' '#1605#1581#1589#1608#1604
      'StuffBrandName='#1606#1575#1605' '#1605#1581#1589#1608#1604
      'Price='#1602#1740#1605#1578
      'Offer='#1583#1585#1589#1583' '#1578#1582#1601#1740#1601
      'sumPrice='#1587#1585' '#1580#1605#1593
      'unitName='#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1740#1585#1740
      'StuffName='#1606#1608#1593' '#1705#1575#1604#1575
      'BrandName='#1576#1585#1606#1583)
    DataSource = dsDetailes
    BCDToCurrency = False
    Left = 96
    Top = 584
  end
end
