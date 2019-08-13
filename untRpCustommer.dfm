object frmRpCustommer: TfrmRpCustommer
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  Caption = #1711#1586#1575#1585#1588' '#1604#1740#1587#1578' '#1605#1588#1578#1585#1740#1575#1606
  ClientHeight = 580
  ClientWidth = 981
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
    Width = 981
    Height = 167
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
      981
      167)
    TMSStyle = 4
    object pnlStufInfo: TAdvSmoothPanel
      Left = 8
      Top = 8
      Width = 964
      Height = 43
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
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      DesignSize = (
        964
        43)
      TMSStyle = 4
      object lblStuffBrandCode: TLabel
        Left = 857
        Top = 12
        Width = 96
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' '#1607#1605#1585#1575#1607':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 859
      end
      object lblStuffBrandName: TLabel
        Left = 626
        Top = 12
        Width = 73
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 628
      end
      object Label1: TLabel
        Left = 385
        Top = 12
        Width = 26
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605'  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 387
      end
      object Label2: TLabel
        Left = 163
        Top = 12
        Width = 55
        Height = 14
        Caption = #1601#1585#1608#1588#1711#1575#1607'  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbMobileNumber: TComboBox
        Left = 724
        Top = 10
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        OnExit = cmbMobileNumberExit
      end
      object cmbLastName: TComboBox
        Left = 443
        Top = 10
        Width = 180
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        OnExit = cmbLastNameExit
      end
      object cmbStoreName: TComboBox
        Left = 9
        Top = 10
        Width = 151
        Height = 21
        TabOrder = 2
        OnExit = cmbStoreNameExit
      end
      object cmbFirstName: TComboBox
        Left = 248
        Top = 10
        Width = 135
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        OnExit = cmbFirstNameExit
      end
    end
    object AdvSmoothPanel1: TAdvSmoothPanel
      Left = 8
      Top = 57
      Width = 503
      Height = 103
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
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      DesignSize = (
        503
        103)
      TMSStyle = 4
      object Label3: TLabel
        Left = 333
        Top = 16
        Width = 107
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582' '#1606#1589#1576' '#1575#1662#1604#1740#1705#1740#1588#1606' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 335
      end
      object Label4: TLabel
        Left = 333
        Top = 43
        Width = 136
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1575#1662#1604#1740#1705#1740#1588#1606' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 335
      end
      object Label5: TLabel
        Left = 333
        Top = 71
        Width = 157
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582' '#1570#1582#1585#1740#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1605#1588#1578#1585#1740' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 335
      end
      object cmbCreateDateSign: TComboBox
        Left = 205
        Top = 14
        Width = 124
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
      object cmbIsCreateDate: TComboBox
        Left = 9
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
      object cmbLastUsedSign: TComboBox
        Left = 205
        Top = 41
        Width = 124
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 2
        TabOrder = 2
        Text = #1576#1585#1575#1576#1585' '#1576#1575
        Items.Strings = (
          #1576#1586#1585#1711#1578#1585' '#1575#1586
          #1576#1586#1585#1711#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1576#1585#1575#1576#1585' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1575#1586)
      end
      object cmbIsLastUsed: TComboBox
        Left = 9
        Top = 41
        Width = 84
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 3
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object cmbLastRequestSign: TComboBox
        Left = 205
        Top = 69
        Width = 124
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 2
        TabOrder = 4
        Text = #1576#1585#1575#1576#1585' '#1576#1575
        Items.Strings = (
          #1576#1586#1585#1711#1578#1585' '#1575#1586
          #1576#1586#1585#1711#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1576#1585#1575#1576#1585' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1605#1587#1575#1608#1740' '#1576#1575
          #1705#1608#1670#1705#1578#1585' '#1575#1586)
      end
      object cmbIsLastRequest: TComboBox
        Left = 9
        Top = 69
        Width = 84
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemIndex = 0
        TabOrder = 5
        Text = #1576#1575#1588#1583
        Items.Strings = (
          #1576#1575#1588#1583
          #1606#1576#1575#1588#1583)
      end
      object edtCreateDate: TSolarDatePicker
        Left = 98
        Top = 13
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
        TabOrder = 6
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
      object edtLastUsed: TSolarDatePicker
        Left = 98
        Top = 40
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
        TabOrder = 7
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
      object edtLastRequest: TSolarDatePicker
        Left = 98
        Top = 68
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
        TabOrder = 8
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
    end
    object AdvSmoothPanel2: TAdvSmoothPanel
      Left = 517
      Top = 57
      Width = 455
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
        455
        48)
      TMSStyle = 4
      object Label6: TLabel
        Left = 319
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
      end
      object cmbCntRequestSign: TComboBox
        Left = 203
        Top = 14
        Width = 112
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
      object cmbIsCntRequest: TComboBox
        Left = 9
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
      object edtCntRequest: TEdit
        Left = 97
        Top = 14
        Width = 102
        Height = 21
        Alignment = taCenter
        Anchors = [akTop, akRight]
        NumbersOnly = True
        TabOrder = 2
      end
    end
    object AdvSmoothPanel3: TAdvSmoothPanel
      Left = 517
      Top = 111
      Width = 455
      Height = 49
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
        455
        49)
      TMSStyle = 4
      object Label9: TLabel
        Left = 319
        Top = 17
        Width = 94
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582' '#1578#1608#1604#1583' '#1605#1588#1578#1585#1740' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object CmbBirthDateSign: TComboBox
        Left = 203
        Top = 15
        Width = 112
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
      object cmbIsBirthDate: TComboBox
        Left = 9
        Top = 15
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
      object edtBirthDate: TSolarDatePicker
        Left = 97
        Top = 14
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
        TabOrder = 2
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
    end
  end
  object pnlBottom: TAdvSmoothPanel
    Left = 0
    Top = 519
    Width = 981
    Height = 61
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
      981
      61)
    TMSStyle = 4
    object btnOK: TAdvSmoothButton
      AlignWithMargins = True
      Left = 803
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
      Left = 638
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
      Left = 478
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
    Top = 167
    Width = 981
    Height = 352
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
      Width = 981
      Height = 352
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
          FieldName = 'MobileNumber'
          Footers = <>
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastName'
          Footers = <>
          Width = 164
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FirstName'
          Footers = <>
          Width = 97
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreName'
          Footers = <>
          Width = 114
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PhoneNumber'
          Footers = <>
          Width = 94
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BirthDate'
          Footers = <>
          Width = 84
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Createdate'
          Footers = <>
          Width = 88
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastLoginDate'
          Footers = <>
          Width = 84
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CntRequest'
          Footers = <>
          Width = 70
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastRequest'
          Footers = <>
          Width = 81
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Address'
          Footers = <>
          Width = 372
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
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
    Left = 191
    Top = 450
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
    Left = 111
    Top = 450
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
    Left = 24
    Top = 450
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID='#1588#1606#1575#1587#1607' '#1605#1588#1578#1585#1740
      'FirstName='#1606#1575#1605
      'LastName='#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      'StoreName='#1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
      'MobileNumber='#1588#1605#1575#1585#1607' '#1601#1585#1608#1588#1711#1575#1607
      'PhoneNumber='#1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      'Address='#1570#1583#1585#1587
      'BirthDate='#1578#1575#1585#1740#1582' '#1578#1608#1604#1583
      'Createdate='#1606#1589#1576' '#1575#1662#1604#1740#1705#1740#1588#1606
      'LastLoginDate='#1570#1582#1585#1740#1606' '#1575#1587#1578#1601#1575#1583#1607' '
      'CntRequest='#1578#1593#1583#1575#1583' '#1583#1585#1582#1608#1575#1587#1578
      'LastRequest='#1570#1582#1585#1740#1606' '#1583#1585#1582#1608#1575#1587#1578)
    DataSource = ds
    BCDToCurrency = False
    Left = 96
    Top = 320
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
    Left = 96
    Top = 376
    Datasets = <
      item
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 119.280303330000000000
        Top = 18.897650000000000000
        Width = 1020.473100000000000000
        ReprintOnNewPage = True
        Stretched = True
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 86.929190000000000000
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
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Top = 86.929190000000000000
          Width = 166.299320000000000000
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
            #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
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
            #1578#1575#1585#1740#1582' '#1570#1582#1585#1740#1606' '#1583#1585#1582#1608#1575#1587#1578)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 86.929190000000000000
          Width = 86.929190000000000000
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
            #1606#1575#1605)
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 60.118738500000000000
          Top = 50.620284490000000000
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
          Left = 89.693568500000000000
          Top = 51.620284490000000000
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
          Left = 19.984848500000000000
          Top = 50.620284490000000000
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
          Left = 46.221088500000000000
          Top = 48.399814490000000000
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
          Left = 87.713048980000000000
          Top = 21.856524490000000000
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
        object Memo8: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 372.283705000000000000
          Top = 26.326221430000000000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'B Lotus'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1711#1586#1575#1585#1588' '#1604#1740#1587#1578' '#1605#1588#1578#1585#1740#1575#1606)
          ParentFont = False
        end
        object lblDate: TfrxMemoView
          AllowVectorExport = True
          Left = 12.122448980000000000
          Top = 20.195114490000000000
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
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 857.953310000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
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
            #1578#1604#1601#1606' '#1607#1605#1585#1575#1607)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
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
            #1578#1593#1583#1575#1583' '#1583#1585#1582#1608#1575#1587#1578' '#1578#1575#1705#1606#1608#1606)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 86.929190000000000000
          Width = 105.826840000000000000
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
            #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607)
          ParentFont = False
          VAlign = vaCenter
        end
        object lblCo: TfrxMemoView
          AllowVectorExport = True
          Left = 735.549011120000000000
          Top = 3.680272100000000000
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
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 264.567100000000000000
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
            #1570#1583#1585#1587)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 31.671150000000000000
        Top = 162.519790000000000000
        Width = 1020.473100000000000000
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Width = 166.299320000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."'#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1606#1575#1605
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1606#1575#1605'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 857.953310000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          Clipped = False
          DataField = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1578#1604#1601#1606' '#1607#1605#1585#1575#1607'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1570#1582#1585#1740#1606' '#1583#1585#1582#1608#1575#1587#1578
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1570#1582#1585#1740#1606' '#1583#1585#1582#1608#1575#1587#1578'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1578#1593#1583#1575#1583' '#1583#1585#1582#1608#1575#1587#1578
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1578#1593#1583#1575#1583' '#1583#1585#1582#1608#1575#1587#1578'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000000000017819
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = #1570#1583#1585#1587
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'B Nazanin'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."'#1570#1583#1585#1587'"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qry: TUniQuery
    SQL.Strings = (
      '  SELECT [ID] '
      '        ,[FirstName] '
      '        ,[LastName] '
      '        ,[StoreName] '
      '        ,[MobileNumber] '
      '        ,[PhoneNumber] '
      '        ,[Address] '
      '        ,[BirthDate] '
      '        ,[Description]'
      '        ,Cast([CreatedDate] AS Date) AS Createdate'
      '        ,Cast([LastLoginDate] AS Date) AS LastLoginDate'
      '        ,[CntRequest] '
      '        ,Cast(LastRequest AS Date) AS LastRequest'
      '  FROM [Pakhsh].[dbo].[CustommerInfo] '
      '  WHERE 1 = 1')
    Left = 24
    Top = 320
    object qryID: TFloatField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1588#1578#1585#1740
      FieldName = 'ID'
      Required = True
    end
    object qryFirstName: TWideStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'FirstName'
      Required = True
      Size = 50
    end
    object qryLastName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'LastName'
      Required = True
      Size = 50
    end
    object qryStoreName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1608#1588#1711#1575#1607
      FieldName = 'StoreName'
      Size = 50
    end
    object qryMobileNumber: TWideStringField
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'MobileNumber'
      Required = True
      Size = 12
    end
    object qryPhoneNumber: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1608#1588#1711#1575#1607
      FieldName = 'PhoneNumber'
      Size = 12
    end
    object qryAddress: TWideStringField
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'Address'
      Size = 200
    end
    object qryBirthDate: TWideStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1578#1608#1604#1583
      FieldName = 'BirthDate'
      Size = 12
    end
    object qryCreatedate: TDateField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1606#1589#1576' '#1575#1662#1604#1740#1705#1740#1588#1606
      FieldName = 'Createdate'
      ReadOnly = True
      OnGetText = qryCreatedateGetText
    end
    object qryLastLoginDate: TDateField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1570#1582#1585#1740#1606' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1575#1662#1604#1740#1705#1740#1588#1606
      FieldName = 'LastLoginDate'
      ReadOnly = True
      OnGetText = qryLastLoginDateGetText
    end
    object qryCntRequest: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'CntRequest'
      ReadOnly = True
    end
    object qryLastRequest: TDateField
      DisplayLabel = #1570#1582#1585#1740#1606' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'LastRequest'
      ReadOnly = True
      OnGetText = qryLastRequestGetText
    end
  end
end
