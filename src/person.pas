unit person;

interface

uses
  myInterface;

type
  TPerson = class(TInterfacedObject, iPerson)
    public
      Fname: string;
      Forder : string;
      function nameWrite():string;
      function setName(name:string): iPerson;
      function setOrder(order:string): iPerson;
      function GetOrder(): string;
  end;

implementation

{ TPessoa }



{ TPessoa }


function TPerson.GetOrder: string;
begin
     Result := Forder;
end;

function TPerson.nameWrite: String;
begin
  Result := Fname;
end;

function TPerson.setName(name: string): iPerson;
begin
    Result := Self;
    Fname := name;
end;

function TPerson.setOrder(order: string): iPerson;
begin
   Result := Self;
   Forder := order;
end;

end.
