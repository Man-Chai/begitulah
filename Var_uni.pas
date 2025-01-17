unit Var_uni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, SMDBCtrl,
  SMDBGrid, ExtCtrls, DBCtrls, Grids, DBGrids, SMDBFltr, SMDBFind, mxExport;

type
  TDatabase_Admin = class(TForm)
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    SMDBNavigator1: TSMDBNavigator;
    SMDBNavigator2: TSMDBNavigator;
    SMDBNavigator3: TSMDBNavigator;
    SMDBNavigator4: TSMDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBNavigator1Click(Sender: TObject; Button: TSMNavigateBtn);
    procedure SMDBNavigator3Click(Sender: TObject; Button: TSMNavigateBtn);
    procedure SMDBNavigator2Click(Sender: TObject; Button: TSMNavigateBtn);
    procedure SMDBNavigator4Click(Sender: TObject; Button: TSMNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Database_Admin: TDatabase_Admin;

implementation
uses Login,tools;
{$R *.dfm}

procedure TDatabase_Admin.FormShow(Sender: TObject);
begin
  tools1.TabelAktif(True);
end;

procedure TDatabase_Admin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tools1.TabelAktif(False);
end;
procedure TDatabase_Admin.SMDBNavigator1Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
case Button of
    sbFilter:tools1.Karyawan_filter.Execute;
    sbFind:tools1.Karyawan_find.Execute;
    sbExport:tools1.Karyawan_export.Select;
end;
end;

procedure TDatabase_Admin.SMDBNavigator3Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFilter:tools1.Departemen_filter.Execute;
    sbFind:tools1.Departemen_find.Execute;
    sbExport:tools1.Departemen_export.Select;
end;
end;

procedure TDatabase_Admin.SMDBNavigator2Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
   case Button of
    sbFilter:tools1.Presensi_filter.Execute;
    sbFind:tools1.Presensi_find.Execute;
    sbExport:tools1.presensi_export.Select;
end;
end;

procedure TDatabase_Admin.SMDBNavigator4Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
   case Button of
    sbFilter:tools1.Gaji_filter.Execute;
    sbFind:tools1.Gaji_find.Execute;
    sbExport:tools1.Gaji_export.Select;
end;
end;

end.

