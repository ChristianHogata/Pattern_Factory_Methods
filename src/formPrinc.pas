unit formPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btnStart: TButton;
    Memo1: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
FormData;

{$R *.dfm}

procedure TForm1.btnStartClick(Sender: TObject);
begin
    formDt.Create(Memo1).ShowModal;
end;

end.
