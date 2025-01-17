unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, jpeg, ExtCtrls;

type
  TFLogin = class(TForm)
    ZConn: TZConnection;
    Username: TLabel;
    Password: TLabel;
    OK: TButton;
    Cancel: TButton;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Registrasi: TButton;
    procedure OKClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure RegistrasiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;
  i, z:integer;
  b, c, a: string;
  userID: Integer;

implementation
uses MenuApp,Var_uni,tools,Karyawan,Register;
{$R *.dfm}

procedure TFLogin.OKClick(Sender: TObject);
begin
 tools1.User_zq.SQL.Text:= 'select * from user';
  tools1.User_zq.Active := True;
  userID := 0;
  while not tools1.User_zq.Eof do
  begin
  if ((Edit1.Text = tools1.User_zq['username']) and (Edit2.Text = tools1.User_zq['password'])) then
  begin
    userID := tools1.User_zq['id_user']; // Simpan ID user yang berhasil login
    Break; // Keluar dari loop jika login berhasil
  end
  else
    tools1.User_zq.Next;
  end;

  if userID <> 0 then // Jika ID user ditemukan
  begin
// Cek peran user (roles)
  if tools1.User_zq['role'] = 'admin' then
  begin
    Edit1.Text := '';
    Edit2.Text := '';
    MessageDlg('Selamat datang Admin', mtInformation, [mbOK], 0);
    Database_Admin.Show;
    Fkaryawan.Hide;
    FMenu.Hide;
    FLogin.Hide;
  end
  else if tools1.User_zq['role'] = 'karyawan' then
  begin
  Edit1.Text := '';
  Edit2.Text := '';
  MessageDlg('Selamat datang Karyawan Terhormat!', mtInformation, [mbOK], 0);
  Fkaryawan.Show;
  FMenu.Hide;
  Database_Admin.Hide;
  FLogin.Hide;
// Gunakan ID user untuk mencari data pelanggan dari tabel customer
  with tools1.User_zq do
  begin
    if not IsEmpty then // Jika data ditemukan
  begin
    Fkaryawan.Label1.Caption := FieldByName('id_user').AsString;
    Fkaryawan.Label3.Caption := FieldByName('nama').AsString;
  end;
  Close;
  end;
end;
end
else
  MessageDlg('Login gagal karena username dan password salah', mtInformation, [mbOK], 0);
end;

procedure TFLogin.CancelClick(Sender: TObject);
begin
 FLogin.Close;
end;


procedure TFLogin.RegistrasiClick(Sender: TObject);
begin
  Fregistrasi.Show;
end;  

end.
