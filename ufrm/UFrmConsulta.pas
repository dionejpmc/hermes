unit UFrmConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmmae, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, UCtrlProduto, UDM;

type
  TFrmConsulta = class(TForm_mae)
    Panel2: TPanel;
    Label1: TLabel;
    imageclose: TImage;
    Label5: TLabel;
    StringGridConsulta: TStringGrid;
    procedure imagecloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StringGridConsultaFixedCellClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure StringGridConsultaSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Value1:String;
    Value2:String;
    Value3:String;
    Value4:String;
    Value5:String;
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

procedure TFrmConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_ESCAPE then
      Self.imagecloseClick(Sender);
end;

procedure TFrmConsulta.imagecloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmConsulta.StringGridConsultaFixedCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  inherited;
  Value1:= Self.StringGridConsulta.Cells[0,ARow];
  Self.Close;

end;

procedure TFrmConsulta.StringGridConsultaSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  Value1:= Self.StringGridConsulta.Cells[0,ARow];
  Self.Close;
end;

end.
