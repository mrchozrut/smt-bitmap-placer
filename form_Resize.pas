unit form_Resize;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TImageParameters = record
     X:Integer;
     Y:Integer;
     Source:String;
  end;

type
  TformResize = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnOK: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formResize: TformResize;

implementation

uses
  form_Main;
{$R *.dfm}

procedure TformResize.btnOKClick(Sender: TObject);
begin
ipImage.X:=StrToInt(Edit1.Text);
ipImage.Y:=StrToInt(Edit2.Text);
Hide;
end;

procedure TformResize.FormShow(Sender: TObject);
begin
Edit1.Text:=IntToStr(ipImage.X);
Edit2.Text:=IntToStr(ipImage.Y);
end;

end.
