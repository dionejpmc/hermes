unit ufrmmae;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm_mae = class(TForm)
    Panel1: TPanel;
    btnsalvar: TBitBtn;
    btneditar: TBitBtn;
    btnexcluir: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_mae: TForm_mae;

implementation

{$R *.dfm}

procedure TForm_mae.FormCreate(Sender: TObject);
begin
    Self.KeyPreview:=True;
end;

end.
