unit Register;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFregistrasi = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Create: TButton;
    Cancel: TButton;
    Edit5: TEdit;
    procedure CreateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fregistrasi: TFregistrasi;

implementation
uses Login, tools;
{$R *.dfm}

procedure TFregistrasi.CreateClick(Sender: TObject);
begin
   tools1.User_zq.Append;
  tools1.User_zq.FieldByName('id_user').AsString := Edit1.Text;
  tools1.User_zq.FieldByName('username').AsString := Edit2.Text;
  tools1.User_zq.FieldByName('password').AsString := Edit3.Text;
  tools1.User_zq.FieldByName('email').AsString := Edit4.Text;
  tools1.User_zq.FieldByName('nama').AsString := Edit5.Text;
  tools1.User_zq.Post;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Application.MessageBox('Data Ditambahkan Yatta', 'Informazione', MB_OK);
  FLogin.Show;
end;

end.
