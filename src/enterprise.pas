unit enterprise;

interface

uses
  myInterface;

type
  Tenterprise = class(TInterfacedObject, iPerson)
    public
      Fname: string;
      Forder : string;
      function nameWrite():string;
      function setName(name:string): iPerson;
      function setOrder(order:string): iPerson;
      function GetOrder(): string;
  end;

implementation

{ Tenterprise }

function Tenterprise.GetOrder: string;
begin
    Result := Forder;
end;

function Tenterprise.nameWrite: string;
begin
  Result := Fname + ' LTDA';
end;

function Tenterprise.setName(name: string): iPerson;
begin
  Result := Self;
  Fname := name;
end;

function Tenterprise.setOrder(order: string): iPerson;
begin
   Result := Self;
   Forder := order;
end;

end.
