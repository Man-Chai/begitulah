unit tools;

interface

uses
  SysUtils, Classes, mxExport, SMDBFltr, SMDBFind, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,Windows;

type
  Ttools1 = class(TDataModule)
    gaji_ds: TDataSource;
    Karyawan_find: TSMDBFindDialog;
    Karyawan_filter: TSMDBFilterDialog;
    Gaji_find: TSMDBFindDialog;
    Gaji_filter: TSMDBFilterDialog;
    Karyawan_export: TmxDBGridExport;
    departemen_zq: TZQuery;
    departemen_ds: TDataSource;
    Departemen_find: TSMDBFindDialog;
    Departemen_filter: TSMDBFilterDialog;
    Presensi_zq: TZQuery;
    Presensi_ds: TDataSource;
    Presensi_find: TSMDBFindDialog;
    Presensi_filter: TSMDBFilterDialog;
    gaji_zq: TZQuery;
    gaji_zqid_gaji: TIntegerField;
    gaji_zqid_karyawan: TIntegerField;
    gaji_zqbasic_salary: TFloatField;
    gaji_zqovertime_hours: TFloatField;
    gaji_zqovertime_pay: TFloatField;
    gaji_zqnet_salary: TFloatField;
    gaji_zqStatus: TBooleanField;
    gaji_zqtotal_gaji: TIntegerField;
    Karyawan_zq: TZQuery;
    Karyawan_zqid_karyawan: TIntegerField;
    Karyawan_zqnama_depan: TStringField;
    Karyawan_zqnama_belakang: TStringField;
    Karyawan_zqdepartemen_id: TIntegerField;
    Karyawan_zqgender: TStringField;
    Karyawan_zqtgl_lahir: TDateField;
    Karyawan_zqStatus: TBooleanField;
    Karyawan_zqJobdesk: TStringField;
    Karyawan_zqnama_dep: TStringField;
    Karyawan_zqket_status: TStringField;
    Karyawan_ds: TDataSource;
    Presensi_zqid_kehadiran: TIntegerField;
    Presensi_zqid_karyawan: TIntegerField;
    Presensi_zqcheck_in: TTimeField;
    Presensi_zqcheck_out: TTimeField;
    Presensi_zqStatus: TBooleanField;
    departemen_zqid_departemen: TIntegerField;
    departemen_zqnama_departemen: TStringField;
    departemen_zqid_gaji: TIntegerField;
    departemen_zqStatus: TBooleanField;
    Gaji_export: TmxDBGridExport;
    Departemen_export: TmxDBGridExport;
    presensi_export: TmxDBGridExport;
    User_zq: TZQuery;
    User_ds: TDataSource;
    User_zqid_user: TIntegerField;
    User_zqusername: TStringField;
    User_zqpassword: TStringField;
    User_zqemail: TStringField;
    User_zqrole: TStringField;
    User_zqnama: TStringField;
    procedure Karyawan_zqPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure departemen_zqPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Karyawan_zqDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TabelAktif(b:Boolean);
    procedure RefreshAllQueries(DataModule: TDataModule);
  end;

var
  tools1: Ttools1;

implementation
uses Login,Var_uni;
{$R *.dfm}
 procedure Ttools1.RefreshAllQueries(DataModule: TDataModule);
var
  i: Integer;
begin
  for i := 0 to DataModule.ComponentCount - 1 do
  begin
    if DataModule.Components[i] is TZQuery then
    begin
      with TZQuery(DataModule.Components[i]) do
      begin
        Close; // Tutup query
        Open;  // Buka kembali query
        // Refresh;
      end;
    end;
  end;
end;

procedure Ttools1.TabelAktif(b:Boolean);
begin
  Karyawan_zq.Active:=b;
  gaji_zq.Active:=b;
  Presensi_zq.Active:=b;
  departemen_zq.Active:=b;
  User_zq.Active:=b;
end;

procedure Ttools1.Karyawan_zqPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
  var
     msg,ref,tbl_p1,tbl_pK1,tbl_p2,tbl_pK2 : string;
begin
msg := E.Message;
  tbl_p1 :='karyawan';
  tbl_pK1 :='id_karyawan';
  tbl_p2 :='departemen';
  tbl_pK2 :='id_departemen';

  ref := LowerCase('Cannot add or update a child row');
  If Pos(ref,LowerCase(Msg)) > 0 then begin
    if Pos(tbl_pK1,msg) > 0 then   // terhadap nim yg di tabel mhs
     begin
       msg := 'Record tidak dapat ditambah / dirubah karena '+#13#10+
               'ID Karyawan tidak terdaftar pada tabel '+tbl_p1;
     end
    Else
      if Pos(tbl_pK2,msg) > 0 then begin  // terhadap kdmk yg di tabel matakuliah
       begin
           msg := 'Record tidak dapat ditambah / dirubah karena '+#13#10+
               'ID Departemen tidak terdaftar pada tabel '+tbl_p2;
       end;
   end;
   Action := daAbort;
    // Dataset.Cancel;
    MessageBox(0, PChar(msg), 'Add/Update Error', MB_ICONERROR or MB_OK);
end;
end;

procedure Ttools1.departemen_zqPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
  var
    msg,ref,tbl_c : string;
begin
  msg := E.Message;
   tbl_c :=  'Nama Departemen';

   ref := LowerCase('Cannot delete or update a parent row');
   If Pos(ref,LowerCase(Msg)) > 0 then begin
      msg := 'Record tidak dapat dihapus/dirubah karena '+#13#10+
             'masih mempunyai relasi dengan tabel  '+tbl_c;
  end;
   Action := daAbort;  // eksekusi dibatalkan
  MessageBox(0, PChar(msg), 'Add/Update Error', MB_ICONERROR or MB_OK);
end;

procedure Ttools1.Karyawan_zqDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
  var
    msg,ref,tbl_c : string;
begin
  msg := E.Message;
  tbl_c := 'Nama Departemen';
                                                                          // Ambil pesan Error dari mySQL
   ref := LowerCase('Cannot delete or update a parent row');  // ubah menjadi huruf kecil semua
   If Pos(ref,LowerCase(Msg)) > 0 then begin                              // apakah error ref ada di msg ?
      msg := 'Record tidak dapat dihapus/dirubah karena '+#13#10+
             'masih mempunyai relasi dengan tabel '+tbl_c;
  end;
  MessageBox(0, PChar(msg), 'Delete Error', MB_ICONERROR or MB_OK);
end;

end.
