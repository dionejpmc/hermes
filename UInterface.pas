unit UInterface;

interface
uses UMenu;
type TInterface = class

      private

      protected
        UmMenu:TMenu;

      public
        Constructor Criar();
        Destructor Destruir();
        procedure AbrirMenu;
end;


implementation

{ TInterface }

procedure TInterface.AbrirMenu;
begin
  UmMenu.ShowModal;
end;

constructor TInterface.Criar;
begin
   UmMenu:=TMenu.Create(nil);
end;

destructor TInterface.Destruir;
begin
  UmMenu.Free;
end;

end.
