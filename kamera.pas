unit kamera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SMDBFltr, SMDBFind, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, SMDBGrid, ExtCtrls, SMDBCtrl, jpeg, frxClass,
  frxDBSet, frxExportPDF, mxExport;

type
  TDatabase = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Books_ds: TDataSource;
    Books_zq: TZQuery;
    Books_Find: TSMDBFindDialog;
    Books_Filter: TSMDBFilterDialog;
    SMDBNavigator1: TSMDBNavigator;
    Image1: TImage;
    Books_export: TmxDBGridExport;
    Image2: TImage;
    Image3: TImage;
    User_ds: TDataSource;
    User_zq: TZQuery;
    User_Find: TSMDBFindDialog;
    User_Filter: TSMDBFilterDialog;
    User_export: TmxDBGridExport;
    SMDBNavigator2: TSMDBNavigator;
    SMDBNavigator3: TSMDBNavigator;
    SMDBGrid2: TSMDBGrid;
    Borrow_zq: TZQuery;
    Borrow_ds: TDataSource;
    Borrow_Find: TSMDBFindDialog;
    Borrow_Filter: TSMDBFilterDialog;
    Borrow_export: TmxDBGridExport;
    SMDBGrid3: TSMDBGrid;
    Book_frx: TfrxReport;
    procedure SMDBNavigator1Click(Sender: TObject; Button: TSMNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBNavigator2Click(Sender: TObject; Button: TSMNavigateBtn);
    procedure SMDBNavigator3Click(Sender: TObject; Button: TSMNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Database: TDatabase;

implementation
uses Login;
{$R *.dfm}

procedure TDatabase.FormShow(Sender: TObject);
begin
Books_zq.Active:=True;
Borrow_zq.Active:=True;
User_zq.Active:=True;
end;

procedure TDatabase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Books_zq.Active:=False;
Borrow_zq.Active:=False;
User_zq.Active:=False;
end;

procedure TDatabase.SMDBNavigator1Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
 case Button of
  sbFilter:Books_Filter.Execute;
  sbFind:Books_Find.Execute;
  sbExport:Books_export.Select;
end;
end;

procedure TDatabase.SMDBNavigator2Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
 case Button of
 sbFilter:Borrow_Filter.Execute;
 sbFind:Borrow_Find.Execute;
 sbExport:Borrow_export.Select;
end;
end;

procedure TDatabase.SMDBNavigator3Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
 case Button of
 sbFilter:User_Filter.Execute;
 sbFind:User_Find.Execute;
 sbExport:User_export.Select;
end;
end;

end.
