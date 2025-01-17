unit MenuApp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFMenu = class(TForm)
    btn_login: TBitBtn;
    VarUni_btn: TBitBtn;
    Image1: TImage;
    procedure btn_loginClick(Sender: TObject);
    procedure VarUni_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation
uses Login,Var_uni;
{$R *.dfm}

procedure TFMenu.btn_loginClick(Sender: TObject);
begin
  FLogin.ShowModal;
end;

procedure TFMenu.VarUni_btnClick(Sender: TObject);
begin
  if FLogin.ZConn.Connected then
    Database_Admin.ShowModal
  else
    ShowMessage('SILAHKAN LOGIN DAHULU');
end;

end.
