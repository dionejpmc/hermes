unit UDAO;

interface
uses UDM, DB;
   type    TDao = class

   private

   protected
    FDM:TDataModule1;

   public
    constructor Create;                           virtual;
    destructor Destroy;                           virtual;






end;

implementation

{ TDao }



constructor TDao.Create;
begin
    FDM:=TDataModule1.Create(nil);
end;

destructor TDao.Destroy;
begin
    FDM.Destroy;
end;


end.
