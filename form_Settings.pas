unit form_Settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPlacementDimensions = record
     ComponentX:Extended;
     ComponentY:Extended;
     GapX:Extended;
     GapY:Extended;
     Rotation:Integer;
     PartNo:string;
  end;

type
  TformSettings = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnOk: TButton;
    Image1: TImage;
    Edit6: TEdit;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSettings: TformSettings;

implementation

uses
  form_Main;

{$R *.dfm}

procedure TformSettings.btnOkClick(Sender: TObject);
begin
pdComponent.ComponentX:=StrToFloat(Edit1.Text);
pdComponent.ComponentY:=StrToFloat(Edit2.Text);
pdComponent.GapX:=StrToFloat(Edit3.Text);
pdComponent.GapY:=StrToFloat(Edit4.Text);
pdComponent.Rotation:=StrToInt(Edit5.Text);
pdComponent.PartNo:=Edit6.Text;
Hide;
end;

procedure TformSettings.FormShow(Sender: TObject);
begin
Edit1.Text:=FloatToStr(pdComponent.ComponentX);
Edit2.Text:=FloatToStr(pdComponent.ComponentY);
Edit3.Text:=FloatToStr(pdComponent.GapX);
Edit4.Text:=FloatToStr(pdComponent.GapY);
Edit5.Text:=IntToStr(pdComponent.Rotation);
Edit6.Text:=pdComponent.PartNo;
end;

end.
