program Aplikasi;

uses
  Forms,
  MenuApp in 'MenuApp.pas' {FMenu},
  Login in 'Login.pas' {FLogin},
  Var_uni in 'Var_uni.pas' {Database_Admin},
  tools in 'tools.pas' {tools1: TDataModule},
  Karyawan in 'Karyawan.pas' {Fkaryawan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TDatabase_Admin, Database_Admin);
  Application.CreateForm(Ttools1, tools1);
  Application.CreateForm(TFkaryawan, Fkaryawan);
  Application.Run;
end.
