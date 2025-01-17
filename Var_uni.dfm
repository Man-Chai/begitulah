object Database_Admin: TDatabase_Admin
  Left = 178
  Top = 137
  Width = 905
  Height = 448
  Caption = 'Dashboard Admin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 16
    Top = 16
    Width = 465
    Height = 161
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    Bands.Strings = (
      'departemen')
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clBtnHighlight
    GridStyle.EvenColor = clYellow
    GridStyle.Title.Direction = fdTopToBottom
    GridStyle.Title.StartColor = clAqua
    GridStyle.Title.EndColor = clAqua
    GridStyle.FilterColor = clHighlightText
    TitleHeight.Kind = hkPixelCount
    TitleHeight.PixelCount = 14
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoDrawBands, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_karyawan'
        Title.Alignment = taCenter
        Title.Caption = 'ID Karyawan'
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'departemen_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID Departemen'
        Width = 100
        Visible = True
        BandIndex = 0
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_dep'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Departemen'
        Visible = True
        BandIndex = 0
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_depan'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Depan'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_belakang'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Belakang'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'gender'
        Title.Alignment = taCenter
        Title.Caption = 'Gender'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl_lahir'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Lahir'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Title.Caption = 'Status'#13#10
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ket_status'
        Visible = True
      end>
  end
  object SMDBGrid2: TSMDBGrid
    Left = 512
    Top = 16
    Width = 353
    Height = 153
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clLime
    GridStyle.Title.Direction = fdTopToBottom
    GridStyle.Title.StartColor = clRed
    GridStyle.Title.EndColor = clRed
    TitleHeight.Kind = hkPixelCount
    TitleHeight.PixelCount = 14
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_departemen'
        Title.Alignment = taCenter
        Title.Caption = 'ID Departemen'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_departemen'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Departemen'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_gaji'
        Title.Alignment = taCenter
        Title.Caption = 'ID Gaji'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object SMDBGrid3: TSMDBGrid
    Left = 504
    Top = 216
    Width = 369
    Height = 145
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clRed
    GridStyle.Title.Direction = fdTopToBottom
    GridStyle.Title.StartColor = clYellow
    GridStyle.Title.EndColor = clYellow
    GridStyle.FilterColor = clGrayText
    TitleHeight.Kind = hkPixelCount
    TitleHeight.PixelCount = 14
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_kehadiran'
        Title.Caption = 'ID Kehadiran'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_karyawan'
        Title.Alignment = taCenter
        Title.Caption = 'ID Karyawan'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'check_in'
        Title.Alignment = taCenter
        Title.Caption = 'Check IN'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'check_out'
        Title.Alignment = taCenter
        Title.Caption = 'Check OUT'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object SMDBGrid4: TSMDBGrid
    Left = 8
    Top = 216
    Width = 473
    Height = 153
    DataSource = tools1.gaji_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clFuchsia
    GridStyle.Title.Direction = fdTopToBottom
    GridStyle.Title.StartColor = clFuchsia
    GridStyle.Title.EndColor = clFuchsia
    TitleHeight.Kind = hkPixelCount
    TitleHeight.PixelCount = 14
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_gaji'
        Title.Alignment = taCenter
        Title.Caption = 'ID Gaji'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_karyawan'
        Title.Alignment = taCenter
        Title.Caption = 'ID Karyawan'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'basic_salary'
        Title.Alignment = taCenter
        Title.Caption = 'Basic Salary'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'overtime_hours'
        Title.Alignment = taCenter
        Title.Caption = 'Overtime Hours'#13#10
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'overtime_pay'
        Title.Alignment = taCenter
        Title.Caption = 'Overtime Pay'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'net_salary'
        Title.Alignment = taCenter
        Title.Caption = 'Net Salary'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'total_gaji'
        Title.Alignment = taCenter
        Title.Caption = 'Total Gaji'
        Visible = True
      end>
  end
  object SMDBNavigator1: TSMDBNavigator
    Left = 16
    Top = 176
    Width = 455
    Height = 25
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 4
    OnClick = SMDBNavigator1Click
  end
  object SMDBNavigator2: TSMDBNavigator
    Left = 500
    Top = 368
    Width = 377
    Height = 25
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 5
    OnClick = SMDBNavigator2Click
  end
  object SMDBNavigator3: TSMDBNavigator
    Left = 512
    Top = 168
    Width = 351
    Height = 25
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 6
    OnClick = SMDBNavigator3Click
  end
  object SMDBNavigator4: TSMDBNavigator
    Left = 8
    Top = 368
    Width = 468
    Height = 25
    DataSource = tools1.gaji_ds
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 7
    OnClick = SMDBNavigator4Click
  end
end
