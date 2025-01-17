object tools1: Ttools1
  OldCreateOrder = False
  Left = 732
  Top = 160
  Height = 416
  Width = 386
  object gaji_ds: TDataSource
    DataSet = gaji_zq
    Left = 90
    Top = 88
  end
  object Karyawan_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = Karyawan_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 32
    Top = 136
  end
  object Karyawan_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = Karyawan_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 32
    Top = 192
  end
  object Gaji_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = gaji_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 82
    Top = 136
  end
  object Gaji_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = gaji_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 79
    Top = 192
  end
  object Karyawan_export: TmxDBGridExport
    Captions.Strings = (
      'Id Departemen')
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    Left = 32
    Top = 252
  end
  object departemen_zq: TZQuery
    Connection = FLogin.ZConn
    AutoCalcFields = False
    OnPostError = departemen_zqPostError
    SQL.Strings = (
      'SELECT*FROM departemen ORDER BY nama_departemen')
    Params = <>
    Left = 137
    Top = 31
    object departemen_zqid_departemen: TIntegerField
      FieldName = 'id_departemen'
      Required = True
    end
    object departemen_zqnama_departemen: TStringField
      FieldName = 'nama_departemen'
      Required = True
      Size = 50
    end
    object departemen_zqid_gaji: TIntegerField
      FieldName = 'id_gaji'
      Required = True
    end
    object departemen_zqStatus: TBooleanField
      FieldName = 'Status'
    end
  end
  object departemen_ds: TDataSource
    DataSet = departemen_zq
    Left = 137
    Top = 87
  end
  object Departemen_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = departemen_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 135
    Top = 136
  end
  object Departemen_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = departemen_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 133
    Top = 192
  end
  object Presensi_zq: TZQuery
    Connection = FLogin.ZConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT*FROM presensi ORDER BY check_in')
    Params = <>
    Left = 185
    Top = 31
    object Presensi_zqid_kehadiran: TIntegerField
      FieldName = 'id_kehadiran'
      Required = True
    end
    object Presensi_zqid_karyawan: TIntegerField
      FieldName = 'id_karyawan'
      Required = True
    end
    object Presensi_zqcheck_in: TTimeField
      FieldName = 'check_in'
      Required = True
    end
    object Presensi_zqcheck_out: TTimeField
      FieldName = 'check_out'
      Required = True
    end
    object Presensi_zqStatus: TBooleanField
      FieldName = 'Status'
    end
  end
  object Presensi_ds: TDataSource
    DataSet = Presensi_zq
    Left = 185
    Top = 87
  end
  object Presensi_find: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = Presensi_ds
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 183
    Top = 136
  end
  object Presensi_filter: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = Presensi_zq
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 183
    Top = 192
  end
  object gaji_zq: TZQuery
    Connection = FLogin.ZConn
    SQL.Strings = (
      'SELECT*FROM gaji ORDER BY basic_salary')
    Params = <>
    Left = 85
    Top = 32
    object gaji_zqid_gaji: TIntegerField
      FieldName = 'id_gaji'
      Required = True
    end
    object gaji_zqid_karyawan: TIntegerField
      FieldName = 'id_karyawan'
      Required = True
    end
    object gaji_zqbasic_salary: TFloatField
      FieldName = 'basic_salary'
      Required = True
    end
    object gaji_zqovertime_hours: TFloatField
      FieldName = 'overtime_hours'
      Required = True
    end
    object gaji_zqovertime_pay: TFloatField
      FieldName = 'overtime_pay'
      Required = True
    end
    object gaji_zqnet_salary: TFloatField
      FieldName = 'net_salary'
      Required = True
    end
    object gaji_zqStatus: TBooleanField
      FieldName = 'Status'
    end
    object gaji_zqtotal_gaji: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'total_gaji'
      Calculated = True
    end
  end
  object Karyawan_zq: TZQuery
    Connection = FLogin.ZConn
    AutoCalcFields = False
    OnDeleteError = Karyawan_zqDeleteError
    OnPostError = Karyawan_zqPostError
    SQL.Strings = (
      'SELECT*FROM karyawan ORDER BY nama_depan')
    Params = <>
    Left = 36
    Top = 29
    object Karyawan_zqid_karyawan: TIntegerField
      FieldName = 'id_karyawan'
      Required = True
    end
    object Karyawan_zqnama_depan: TStringField
      FieldName = 'nama_depan'
      Required = True
      Size = 30
    end
    object Karyawan_zqnama_belakang: TStringField
      FieldName = 'nama_belakang'
      Required = True
      Size = 10
    end
    object Karyawan_zqdepartemen_id: TIntegerField
      FieldName = 'departemen_id'
      Required = True
    end
    object Karyawan_zqgender: TStringField
      FieldName = 'gender'
      Required = True
      Size = 6
    end
    object Karyawan_zqtgl_lahir: TDateField
      FieldName = 'tgl_lahir'
      Required = True
    end
    object Karyawan_zqStatus: TBooleanField
      FieldName = 'Status'
    end
    object Karyawan_zqJobdesk: TStringField
      FieldName = 'Jobdesk'
      Size = 50
    end
    object Karyawan_zqnama_dep: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_dep'
      LookupDataSet = departemen_zq
      LookupKeyFields = 'id_departemen'
      LookupResultField = 'nama_departemen'
      KeyFields = 'departemen_id'
      Size = 30
      Lookup = True
    end
    object Karyawan_zqket_status: TStringField
      FieldKind = fkCalculated
      FieldName = 'ket_status'
      Size = 10
      Calculated = True
    end
  end
  object Karyawan_ds: TDataSource
    DataSet = Karyawan_zq
    Left = 36
    Top = 85
  end
  object Gaji_export: TmxDBGridExport
    Captions.Strings = (
      'Id Departemen')
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    Left = 80
    Top = 252
  end
  object Departemen_export: TmxDBGridExport
    Captions.Strings = (
      'Id Departemen')
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    Left = 128
    Top = 252
  end
  object presensi_export: TmxDBGridExport
    Captions.Strings = (
      'Id Departemen')
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    Left = 184
    Top = 252
  end
  object User_zq: TZQuery
    Connection = FLogin.ZConn
    SQL.Strings = (
      'SELECT*FROM user ORDER BY role')
    Params = <>
    Left = 241
    Top = 31
    object User_zqid_user: TIntegerField
      FieldName = 'id_user'
      Required = True
    end
    object User_zqusername: TStringField
      FieldName = 'username'
      Size = 50
    end
    object User_zqpassword: TStringField
      FieldName = 'password'
      Size = 250
    end
    object User_zqemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object User_zqrole: TStringField
      FieldName = 'role'
      Required = True
      Size = 8
    end
    object User_zqnama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 50
    end
  end
  object User_ds: TDataSource
    DataSet = User_zq
    Left = 241
    Top = 87
  end
end
