unit form_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ExtDlgs, form_Settings, form_Resize,
  Vcl.Menus, Vcl.ComCtrls;

type
  TformMain = class(TForm)
    Image1: TImage;
    MainMenu: TMainMenu;
    Main1: TMenuItem;
    LoadImage1: TMenuItem;
    Exit1: TMenuItem;
    Resize1: TMenuItem;
    N1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    StatusBar1: TStatusBar;
    Settings1: TMenuItem;
    PlacementSetup1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Export1: TMenuItem;
    CoordinatesTXT1: TMenuItem;
    SaveDialog1: TSaveDialog;

    procedure LoadAndResizeBitmap();
    procedure ProcessParametersInfo();

    procedure FormCreate(Sender: TObject);
    procedure PlacementSetup1Click(Sender: TObject);
    procedure LoadImage1Click(Sender: TObject);
    procedure Resize1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure CoordinatesTXT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;
  pdComponent: TPlacementDimensions;
  ipImage: TImageParameters;

implementation

{$R *.dfm}

procedure TformMain.FormCreate(Sender: TObject);
begin
ClientHeight:=600+StatusBar1.Height;
ClientWidth:=600;

pdComponent.ComponentX:=0.8;
pdComponent.ComponentY:=1.6;
pdComponent.GapX:=0.2;
pdComponent.GapY:=0.2;
pdComponent.Rotation:=90;
pdComponent.PartNo:='1213282';

ipImage.X:=300;
ipImage.Y:=300;
ipImage.Source:='';

ProcessParametersInfo;
end;

procedure TformMain.Image1Click(Sender: TObject);
begin
LoadAndResizeBitmap;
ProcessParametersInfo;
end;

procedure TformMain.LoadAndResizeBitmap;
var
  bTemp: TBitmap;
begin
  if Length(ipImage.Source) > 0 then
  begin
  bTemp:=TBitmap.Create;
  bTemp.LoadFromFile(ipImage.Source);

  with Image1.Picture.Bitmap do
    begin
//FreeImage;
//PixelFormat := pf1bit;

  Width := ipImage.X;
  Height := ipImage.Y;
  PixelFormat := pf1bit;
  TransparentMode := tmAuto;
  Canvas.CopyMode := cmSrcCopy;
  Canvas.FillRect(Rect(0, 0, Width, Height));
  Canvas.StretchDraw(Rect(0, 0, Width, Height), bTemp);

    end;

  bTemp.Free;
  end;
end;

procedure TformMain.ProcessParametersInfo;
begin
StatusBar1.Panels[0].Text:= FloatToStr(pdComponent.ComponentX)+', '+
                            FloatToStr(pdComponent.ComponentY)+', '+
                            FloatToStr(pdComponent.GapX)+', '+
                            FloatToStr(pdComponent.GapY)+', '+
                            IntToStr(pdComponent.Rotation);
StatusBar1.Panels[1].Text:=IntToStr(ipImage.X)+' x '+IntToStr(ipImage.Y)
end;

procedure TformMain.LoadImage1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute() = true then
begin
 ipImage.Source:=OpenPictureDialog1.FileName;
 LoadAndResizeBitmap;
end;
end;

procedure TformMain.PlacementSetup1Click(Sender: TObject);
begin
formSettings.ShowModal;
ProcessParametersInfo;
end;

procedure TformMain.Resize1Click(Sender: TObject);
begin
formResize.ShowModal;
ProcessParametersInfo;
LoadAndResizeBitmap;
end;

procedure TformMain.CoordinatesTXT1Click(Sender: TObject);
var
  output: TextFile;
  X,Y: Integer;
  bTemp: TBitmap;
  xTemp,yTemp: Extended;

begin
if SaveDialog1.Execute() = True then
begin

AssignFile(output,SaveDialog1.FileName);
Rewrite(output);
bTemp:=TBitmap.Create;

with bTemp do
begin

Height:=round(Image1.Picture.Bitmap.Height/((pdComponent.GapY+pdComponent.ComponentY)/(pdComponent.GapX+pdComponent.ComponentX)));
Width:=Image1.Picture.Bitmap.Width;
  PixelFormat := pf1bit;
  TransparentMode := tmAuto;
  Canvas.CopyMode := cmSrcCopy;
  Canvas.FillRect(Rect(0, 0, Width, Height));
  Canvas.StretchDraw(Rect(0, 0, Width, Height), Image1.Picture.Bitmap);
end;

for Y := 0 to bTemp.Height-1 do
begin
  for X := 0 to bTemp.Width-1 do
  begin

    if bTemp.Canvas.Pixels[X,Y] = 0 then
    begin
    xTemp:=
    ((x+1)*(pdComponent.GapX+(pdComponent.ComponentX/2)))
    +
    (x*(pdComponent.GapX+(pdComponent.ComponentX/2)));

    yTemp:=
    ((y+1)*(pdComponent.GapY+(pdComponent.ComponentY/2)))
    +
    (y*(pdComponent.GapY+(pdComponent.ComponentY/2)));

    Writeln(output, FloatToStr(xTemp)+';'+
                    FloatToStr(yTemp)+';'+
                    IntToStr(pdComponent.Rotation)+';'+
                    pdComponent.PartNo);

    end;

  end;
end;
bTemp.Free;
CloseFile(output);
end;
end;

end.
