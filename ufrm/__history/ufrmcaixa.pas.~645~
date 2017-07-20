unit UFrmCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmmae, Grids, StdCtrls, Buttons, ExtCtrls, pngimage, UCtrlProduto,
  UProduto,UCtrlVenda,UVenda, MaskUtils, UFrmConsulta,UListaProduto;

type
  TFrmCaixa = class(TForm_mae)
    sgcaixa: TStringGrid;
    lblcodproduto: TLabeledEdit;
    lblvalor: TLabeledEdit;
    lblqtde: TLabeledEdit;
    Panel2: TPanel;
    Label1: TLabel;
    imageclose: TImage;
    imageadd: TImage;
    imagedelete: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    valortotal: TLabel;
    imageconcluirvenda: TImage;
    Label4: TLabel;
    lblcpf: TLabeledEdit;
    lblvalorpago: TLabeledEdit;
    lbltroco: TLabeledEdit;
    lbldescricao: TLabeledEdit;
    Label5: TLabel;
    edtvalortotal: TEdit;
    imagecleargrid: TImage;
    Label7: TLabel;
    ImgConsulta: TImage;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure imagecloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imageconcluirvendaClick(Sender: TObject);
    procedure lblcodprodutoExit(Sender: TObject);
    procedure imageaddClick(Sender: TObject);
    procedure lblcodprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure lblqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure imagedeleteClick(Sender: TObject);
    procedure lblcpfKeyPress(Sender: TObject; var Key: Char);
    procedure lblvalorpagoKeyPress(Sender: TObject; var Key: Char);
    procedure imagecleargridClick(Sender: TObject);
    procedure lblcpfExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lblvalorpagoExit(Sender: TObject);
    procedure ImgConsultaClick(Sender: TObject);
    //procedure sgcaixaDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
    //State: TGridDrawState);
  private
    { Private declarations }
    procedure limpargrid;
    function IdentificaDuplicidade():Boolean;
  public
    { Public declarations }
    UmaCtrlProduto:TCtrlProduto;
    UmProduto:TProduto;
    UmaCtrlVenda:TCtrlVenda;
    UmaVenda:Tvenda;
    LinhaDuplicada:integer;
    UmaLista:TListaProduto;
    Linha:integer;
  end;

var
  FrmCaixa: TFrmCaixa;

implementation
{$R *.dfm}
procedure TFrmCaixa.FormCreate(Sender: TObject);
begin
  inherited;
 // MessageDlg('', mtConfirmation,[mbYes,mbNo],0) = IDYes);
  self.sgcaixa.Cells[0,0]:='Código' ;
  self.sgcaixa.Cells[1,0]:='Descrição' ;
  self.sgcaixa.Cells[2,0]:='R$ Unid.' ;
  self.sgcaixa.Cells[3,0]:='Qtde' ;
  self.sgcaixa.Cells[4,0]:='Total Unit' ;
  UmaCtrlProduto:=TCtrlProduto.Criar;
  UmProduto:=TProduto.Create;
  UmaCtrlVenda:=TCtrlVenda.Criar;
  UmaVenda:=TVenda.Criar;
  Self.valortotal.Caption:='0.00';
  Self.Linha:= 1;

end;

//procedure TFrmCaixa.sgcaixaDrawCell(Sender: TObject; ACol, ARow: Integer;
 // Rect: TRect; State: TGridDrawState);
//var
  //S: string;
  //RectForText: TRect;
//begin
  //inherited;
  // Check for your cell here (in this case the cell in column 4 and row 2 will be colored)
  //if ((ACol = 0) and (ARow = 0)) then
  //begin
   // S := sgcaixa.Cells[ACol, ARow];
    // Fill rectangle with colour
    //sgcaixa.Canvas.Brush.Color := clSilver;
    //sgcaixa.Canvas.Font.Style := [fsBold];
    //sgcaixa.Canvas.FillRect(Rect);
    // Next, draw the text in the rectangle
   // sgcaixa.Canvas.Font.Color := clBlack;
   // RectForText := Rect;
    // Make the rectangle where the text will be displayed a bit smaller than the cell
    // so the text is not "glued" to the grid lines
   // InflateRect(RectForText, -2, -2);
    // Edit: using TextRect instead of TextOut to prevent overflowing of text
   // sgcaixa.Canvas.TextRect(RectForText, S);
  //end;
//end;

procedure TFrmCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F1 then
      Self.lblcodproduto.SetFocus
  else if key = VK_F2 then
      Self.lblqtde.SetFocus
  else if key = VK_F3 then
      Self.imageaddClick(Sender)
  else if key = VK_F10 then
      Self.ImgConsultaClick(Sender)
  else if key = VK_F4 then
      Self.imagedeleteClick(Sender)
  else if key = VK_F5 then
      Self.imagecleargridClick(Sender)
  else if key = VK_F6 then
      Self.lblvalorpago.SetFocus
  else if key = VK_F7 then
      Self.lblcpf.SetFocus
  else if key = vk_Escape then
      Self.Close
  else if key = VK_F8 then
      Self.imageconcluirvendaClick(Sender);
end;

procedure TFrmCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

function TFrmCaixa.IdentificaDuplicidade: Boolean;
var I:integer;
    duplicidade:boolean;
begin
    LinhaDuplicada:=0;
    duplicidade:=False;
    if Self.sgcaixa.RowCount <= 1 then
    exit ;
    for I := 1 to Self.sgcaixa.RowCount  do
    begin
        if (self.sgcaixa.Cells[0,I] = Self.lblcodproduto.Text) and (Trim(self.sgcaixa.Cells[0,I]) <> '') then
           duplicidade:=True;
        if duplicidade = True then
        begin
          Result:=True;
          LinhaDuplicada:=I;
          exit;
        end
        else
          Result:=False;
    end;
end;
procedure TFrmCaixa.ImgConsultaClick(Sender: TObject);
var UmFrmConsulta:TFrmCOnsulta;
    I:integer;
begin
  inherited;
  UmFrmConsulta:=TFrmConsulta.Create(nil);
  UmFrmConsulta.StringGridConsulta.Cells[0,0]:=  'Cod. Produto';
  UmFrmConsulta.StringGridConsulta.ColWidths[0]:=200;
  UmFrmConsulta.StringGridConsulta.Cells[1,0]:=  'Descrição' ;
  UmFrmConsulta.StringGridConsulta.ColWidths[1]:=500;
  UmFrmConsulta.StringGridConsulta.Cells[2,0]:=  'Valor R$' ;
  UmFrmConsulta.StringGridConsulta.ColWidths[2]:=200;
  UmaLista:=TListaProduto.Criar;
  UmaLista:=UmaCtrlProduto.carregarListaProdutos(UmaLista);
  for I := 1 to UmaLista.ContarItens do
  begin
    UmFrmConsulta.StringGridConsulta.Cells[0,I]:=  UmaLista.getProdutos(i-1).CodBarrasProduto;
    UmFrmConsulta.StringGridConsulta.Cells[1,I]:=   UmaLista.getProdutos(i-1).DescricaoProduto ;
    UmFrmConsulta.StringGridConsulta.Cells[2,I]:=  FloatToStr( UmaLista.getProdutos(i-1).ValorVendaProduto);
    UmFrmConsulta.StringGridConsulta.RowCount:= UmFrmConsulta.StringGridConsulta.RowCount +1;
  end;
  UmFrmConsulta.ShowModal;
  UmaLista.Clear;
  UmaLista.destruir;
  Self.lblcodproduto.Text:=UmFrmConsulta.Value1;
  UmFrmConsulta.Free;
end;

procedure TFrmCaixa.imagecleargridClick(Sender: TObject);
begin
  inherited;
  limpargrid;
end;

procedure TFrmCaixa.imageaddClick(Sender: TObject);
var valor, qtdeconvert:Double;
  I: Integer;
begin
  inherited;
  valor:=0.00;
  Windows.Beep(1000, 120);
  qtdeconvert:=0;
  if (Self.lblqtde.Text <> '') and (Self.lblqtde.Text <> '0') then
  begin
      qtdeconvert:= StrToFloat(Self.lblqtde.Text);
      if qtdeconvert <= 0 then
      begin
        ShowMessage('QUANTIDADE INAPROPRIADA');
        Self.lblqtde.Clear;
        Self.lblqtde.SetFocus;
        exit;
      end;
  end
  else if qtdeconvert <= 0  then
  begin
    ShowMessage('QUANTIDADE INAPROPRIADA');
    exit;
  end;
  if IdentificaDuplicidade() then
  begin
    self.sgcaixa.Cells[3,LinhaDuplicada]:= FloatToStr( StrToFloat(self.sgcaixa.Cells[3,LinhaDuplicada]) + StrToFloat(Self.lblqtde.Text));
    self.sgcaixa.Cells[4,LinhaDuplicada]:=  FloatToStr(StrToFloat(self.sgcaixa.Cells[4,LinhaDuplicada]) + (StrToFloat(Self.lblqtde.Text) * StrToFloat(Self.lblvalor.Text))  );
    valor:=0;
    for I := 1 to  self.sgcaixa.RowCount  -1 do
    begin
      valor:= valor + (StrToFloat(self.sgcaixa.Cells[2,I])* StrToFloat(self.sgcaixa.Cells[3,I]));
    end;
    Self.valortotal.Caption:= FloatToStr(valor);
    self.edtvalortotal.Text:= FloatToStr(valor);
  end
  else if (Length(Self.lbldescricao.Text) > 2) then
  begin
    Self.sgcaixa.RowCount:=  Self.sgcaixa.RowCount +1;
    self.sgcaixa.Cells[0,self.Linha]:=Self.lblcodproduto.Text ;
    self.sgcaixa.Cells[1,self.Linha]:=Self.lbldescricao.Text ;
    self.sgcaixa.Cells[2,self.Linha]:=Self.lblvalor.Text ;
    self.sgcaixa.Cells[3,self.Linha]:=Self.lblqtde.Text ;
    Windows.Beep(1000, 120);
    for I := 1 to Self.Linha do
    begin
      valor:= valor + (StrToFloat(self.sgcaixa.Cells[2,I])* StrToFloat(self.sgcaixa.Cells[3,I]));
      self.sgcaixa.Cells[4,I]:=FloatToStr( StrToFloat(self.sgcaixa.Cells[2,I])* StrToFloat(self.sgcaixa.Cells[3,I]));
    end;
    Self.valortotal.Caption:= FloatToStr(valor) + ' R$';
    self.edtvalortotal.Text:= FloatToStr(valor);
    Linha:=Linha+1;
  end;
  Self.lblcodproduto.SetFocus;
  Self.lblcodproduto.Clear;
  Self.lblvalor.Clear;
  Self.lblqtde.Clear;
  Self.lbldescricao.Clear;
end;

procedure TFrmCaixa.imagecloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
  UmProduto.Destroy;
  UmaCtrlVenda.Destruir;
  UmaVenda.Destruir;
end;

procedure TFrmCaixa.imageconcluirvendaClick(Sender: TObject);
var I:integer;
begin
  inherited;
     if Self.sgcaixa.RowCount <= 1 then
     begin
       ShowMessage('GRID VASIA');
       Exit;
     end;
     Windows.Beep(1000, 120);
     if MessageDlg('FINALIZAR VENDA?', mtConfirmation,[mbYes,mbNo],0) = IDYes  then
     begin
        UmaVenda.Serie:='1';
        UmaVenda.ValorTotalVenda:=StrToFloat(Self.edtvalortotal.Text);
        UmaVenda.DataVenda:= DateToStr(Now);
        for I := 1 to Linha -1 do
        begin
          UmProduto:=TProduto.Create;
          //UmProduto.CodBarrasProduto:= self.sgcaixa.Cells[0,I];
          UmProduto.IdProduto:= self.sgcaixa.Cells[0,I] ;
          UmProduto.QtdeProduto:=StrToFloat( self.sgcaixa.Cells[3,I]);
          UmaVenda.UmaListaProduto.Add(UmProduto);
          UmProduto:=nil;
        end;
        ShowMessage(UmaCtrlVenda.SalvarVendaTemp(UmaVenda));
//       UmRelatorio.frxReport1.LoadFromFile('Y:\Projetos Delphi\relatorios\ucfFR.fr3');
//       TfrxMemoView(UmRelatorio.frxReport1.FindObject('endereco')).Text:='Rua Guaraqueçaba, 333, Belvedere II, Foz do Iguaçu - PR.';
//       TfrxMemoView(UmRelatorio.frxReport1.FindObject('tel')).Text:='(045)30290842';
//       TfrxMemoView(UmRelatorio.frxReport1.FindObject('ie')).Text:='IE: 99.23.45/34-5';
//       TfrxMemoView(UmRelatorio.frxReport1.FindObject('cnpj')).Text:='CNPJ: 84.45.456/220-4';
//       UmRelatorio.frxReport1.ShowReport;
      Self.Close;
      UmProduto.Free;
      UmaCtrlVenda.Free;
      UmaVenda.Free;
     end;
end;

procedure TFrmCaixa.imagedeleteClick(Sender: TObject);
var valor:double;
I: Integer;
begin
  inherited;
  valor:=0.0;
  Windows.Beep(1000, 120);
  if Self.sgcaixa.RowCount > 1 then
  begin
    self.sgcaixa.Cells[0,Linha]:='' ;
    self.sgcaixa.Cells[1,Linha]:='' ;
    self.sgcaixa.Cells[2,Linha]:='' ;
    self.sgcaixa.Cells[3,Linha]:='' ;
    Self.sgcaixa.RowCount:=  Self.sgcaixa.RowCount - 1;
    Linha:= Linha -1;
    if (self.sgcaixa.Cells[3,1] <> '')  then
    begin
        for I := 1 to Linha -1 do
        begin
          valor:= valor + (StrToFloat(Self.sgcaixa.Cells[2,I])* StrToFloat(self.sgcaixa.Cells[3,I]));
          Self.Sgcaixa.Cells[4,I]:=FloatToStr( StrToFloat(Self.Sgcaixa.Cells[2,I])* StrToFloat(Self.Sgcaixa.Cells[3,I]));
        end;
        Self.valortotal.Caption:=FormatFloat('#0.00',valor);
        Self.edtvalortotal.Text :=FormatFloat('#0.00',valor);
    end;
  end
  else
    ShowMessage('GRID VASIA');
end;
procedure TFrmCaixa.lblcpfExit(Sender: TObject);
begin
  inherited;
//  Self.lblcpf.Text:=  FormatMaskText('999.999.999-99;0',  Self.lblcpf.Text);
end;

procedure TFrmCaixa.lblcpfKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if not (key in ['0'..'9',#8]) then
    key:=#0;
end;
procedure TFrmCaixa.lblcodprodutoExit(Sender: TObject);
begin
  inherited;
  if (Self.lblcodproduto.Text <> '') and (Self.lblcodproduto.Text <> '0') and (Self.lblcodproduto.Text <> ' ') then
  begin
      UmProduto.IdProduto:=Self.lblcodproduto.Text;
      UmProduto.CodBarrasProduto:=Self.lblcodproduto.Text;
      UmaCtrlProduto.Carregar(UmProduto);
      if (UmProduto.IdProduto <> '0') or (UmProduto.IdProduto <> '') then
      begin
        Self.lbldescricao.Text:=UmProduto.DescricaoProduto;
        Self.lblvalor.Text:=FormatFloat('#0.00',UmProduto.ValorVendaProduto);
        if Length( Self.lbldescricao.Text) <= 3  then
        begin
          ShowMessage('Produto não encontrado!');
          Self.lblcodproduto.Clear;
          Self.lbldescricao.Clear;
          Self.lblvalor.Clear;
        end;
      end
      else
      begin
        ShowMessage('PRODUTO NÃO ENCONTRADO.');
        Self.lbldescricao.Clear;
        Self.lblvalor.Clear;
        Self.lblcodproduto.Clear;
        Self.lblcodproduto.SetFocus;
      end;
  end
  else
    Self.lblcodproduto.Clear;
end;
procedure TFrmCaixa.lblcodprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

procedure TFrmCaixa.lblqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

procedure TFrmCaixa.lblvalorpagoExit(Sender: TObject);
var outvalue:Double;
begin
  inherited;
  if TryStrToFloat(Self.lblvalorpago.Text,outvalue) then
  begin
    Self.lbltroco.Text:= FloatToStr(StrToFloat(Self.lblvalorpago.Text) - StrToFloat(Self.edtvalortotal.text)) + ' R$';
  end
  else
    Self.lblvalorpago.Text:='0,00';
end;

procedure TFrmCaixa.lblvalorpagoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then
    key:=#0;
end;

procedure TFrmCaixa.limpargrid;
var L,C:integer;
begin
  for L := 1 to Linha do
    for C := 0 to Self.sgcaixa.ColCount do
      Self.sgcaixa.Cells[C,L]:='';
  Linha:=1;
  Self.sgcaixa.RowCount:=Linha;
  Self.valortotal.Caption:= '0,00';
  Self.edtvalortotal.Text:='0,00';
end;
end.