unit FormData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TformDt = class(TForm)
    Panel1: TPanel;
    edtName: TEdit;
    Label1: TLabel;
    btnFinish: TButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    editOrder: TEdit;
    Label3: TLabel;
    procedure btnFinishClick(Sender: TObject);
  private
    ForderMemo : TMemo;
    { Private declarations }
  public
    { Public declarations }
  constructor Create(memo:Tmemo); virtual;
  end;

var
  formDt: TformDt;

implementation

uses
  factory, myInterface;

{$R *.dfm}

procedure TformDt.btnFinishClick(Sender: TObject);
begin
  try
    ForderMemo.Clear;

    ForderMemo.Lines.Add(
      Tfactory.Create
        .GetName(TTypeName(ComboBox1.ItemIndex))
        .setName(edtName.Text)
        .nameWrite
    );

    ForderMemo.Lines.Add(
      Tfactory.Create
        .GetName(TTypeName(ComboBox1.ItemIndex))
        .setOrder(editOrder.Text)
        .GetOrder
    );

  finally
    edtName.Clear;
    editOrder.Clear;
  end;
end;

constructor TformDt.Create(memo: Tmemo);
begin
  ForderMemo := memo;
end;

end.
