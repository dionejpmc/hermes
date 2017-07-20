unit UFrmConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmmae, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage,FileCtrl;

type
  TFrmConfig = class(TForm_mae)
    PageControlConfig: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    RadioGroupVendas: TRadioGroup;
    Panel2: TPanel;
    Label1: TLabel;
    imgclose: TImage;
    Label2: TLabel;
    TLblEdtCaminhoCertificado: TLabeledEdit;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    procedure imgcloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}

procedure TFrmConfig.BitBtn1Click(Sender: TObject);
var Path:String;
begin
  inherited;
  OpenDialog1.Title := 'Diret�rio';
  OpenDialog1.InitialDir := 'C:\\';
  if OpenDialog1.Execute then
  Begin
    TLblEdtCaminhoCertificado.Text := OpenDialog1.FileName;
  End
  else
    ShowMessage('ERRO AO ABRIR DIRET�RIO');
end;

procedure TFrmConfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_Escape then
      Self.imgcloseClick(Sender);
end;

procedure TFrmConfig.imgcloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
  Self.CloseModal;
end;

procedure TFrmConfig.LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8]) then
    key:=#0;
end;

procedure TFrmConfig.LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not (key in ['0'..'9',#8]) then
    key:=#0;
end;

end.
