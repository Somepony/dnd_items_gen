{
      Код страшный шопездец.

}

unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.MagnifierGlass, DWMAPI, FMX.Platform.Win, Windows,
  FMX.Layouts, Winapi.UxTheme, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, System.Rtti, FMX.Grid, FMX.ListView, FMX.StdCtrls,
  FMX.Effects, FMX.Filter.Effects, FMX.Objects, FMX.ExtCtrls, FMX.ScrollBox,
  FMX.Memo, FMX.Edit, FMX.Ani, SomeponyUtils_FMX, FMX.ListBox, FMX.Platform,
  FMX.Colors, ShellAPI, FMX.GifUtils, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdGlobal, IdContext, IdCustomTCPServer,
  IdTCPServer;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    ListView1: TListView;
    SomeponyLabel: TLabel;
    LabelBlur: TBlurEffect;
    Blur: TBlurEffect;
    Ntf: TPanel;
    NtfBGLow: TGlowEffect;
    NtfCaption: TLabel;
    NtfText: TLabel;
    NtfBtn: TButton;
    Protector: TRectangle;
    Memo1: TMemo;
    Qu: TPanel;
    QuBGlow: TGlowEffect;
    QuCaption: TLabel;
    QuText: TLabel;
    QuBtn: TButton;
    QuTxt: TEdit;
    BtnNewTable: TButton;
    BtnDelTable: TButton;
    BtnSaveTable: TButton;
    BtnCnclTable: TButton;
    Cnf: TPanel;
    GlowEffect1: TGlowEffect;
    CnfCaption: TLabel;
    CnfText: TLabel;
    CnfYB: TButton;
    CnfNB: TButton;
    ListBox1: TListBox;
    GN: TButton;
    GD: TButton;
    GCaption: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    GTSavB: TButton;
    RIName: TEdit;
    RIStats: TMemo;
    RIDesc1: TMemo;
    RIDesc2: TMemo;
    FGen: TButton;
    ComboBox2: TComboBox;
    FCN: TButton;
    FCD: TButton;
    QuCnclBtn: TButton;
    SyntaxHelp: TButton;
    SH: TPanel;
    SHGlow: TGlowEffect;
    SHCaption: TLabel;
    SHB: TButton;
    SHMem: TMemo;
    TabItem4: TTabItem;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    ComboBox3: TComboBox;
    Memo5: TMemo;
    Button3: TButton;
    Button4: TButton;
    TabItem5: TTabItem;
    Edit3: TEdit;
    Memo8: TMemo;
    Button5: TButton;
    ComboBox4: TComboBox;
    TabItem6: TTabItem;
    Label2: TLabel;
    About_Memo: TMemo;
    Rectangle1: TRectangle;
    Label3: TLabel;
    Label4: TLabel;
    Rectangle2: TRectangle;
    Label5: TLabel;
    Rectangle3: TRectangle;
    Label6: TLabel;
    Label7: TLabel;
    Rectangle4: TRectangle;
    Label8: TLabel;
    Rectangle5: TRectangle;
    Label9: TLabel;
    Image1: TImage;
    Button6: TButton;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    Button7: TButton;
    FloatAnimation5: TFloatAnimation;
    Image2: TImage;
    BitmapListAnimation1: TBitmapListAnimation;
    FloatAnimation6: TFloatAnimation;
    Button8: TButton;
    TCPClient: TIdTCPClient;
    Button9: TButton;
    GL: TPanel;
    GlowEffect2: TGlowEffect;
    Label10: TLabel;
    GLB: TButton;
    ListBox3: TListBox;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    GUIDListChoose: TComboBox;
    RB2: TRadioButton;
    CustomGUID: TEdit;
    GUIDList: TButton;
    GLN: TButton;
    GLD: TButton;
    TCPServer: TIdTCPServer;
    CheckBox1: TCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    ComboBox5: TComboBox;
    CC: TPanel;
    GlowEffect3: TGlowEffect;
    Label13: TLabel;
    CCB: TButton;
    ListBox4: TListBox;
    CCN: TButton;
    CCD: TButton;
    CCList: TButton;
    Image3: TImage;
    ComboBox6: TComboBox;
    Image4: TImage;
    StyleBook1: TStyleBook;
    BlackLivesMatter: TPanel;
    BLMHeader: TLabel;
    BLMText: TLabel;
    BLMTimer: TTimer;
    BLMFadeOut: TFloatAnimation;
    CnfF4QB: TButton;
    CnfF4SB: TButton;
    CnfF4NB: TButton;
    CnfF4YB: TButton;
    procedure ShowNtf(Caption,Text,BtnText:String);
    procedure ShowSH;
    procedure ShowGL;
    procedure ShowCC;
    function ShowQu(Caption,Text,BtnText:String;Value:string=''):String;
    function ShowCnf(Caption,Text:string):Boolean;
    procedure NewRandomItem;
    procedure NewRandomQN;
    procedure InitDirs;
    procedure TSExecLua(LuaCode:string);
    procedure TSShowMsg(Msg:string);
    procedure SpawnTS(RC:Boolean=False);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject; Canvas: TCanvas;
      const [Ref] ARect: TRectF);
    procedure NtfBtnClick(Sender: TObject);
    procedure QuBtnClick(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure BtnCnclTableClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CnfYBClick(Sender: TObject);
    procedure CnfNBClick(Sender: TObject);
    procedure BtnSaveTableClick(Sender: TObject);
    procedure GTSavBClick(Sender: TObject);
    procedure ListBox1Change(Sender: TObject);
    procedure FGenClick(Sender: TObject);
    procedure FCNClick(Sender: TObject);
    procedure FCDClick(Sender: TObject);
    procedure QuCnclBtnClick(Sender: TObject);
    procedure BtnNewTableMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure BtnDelTableMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure GNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure GDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ComboBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure SHBClick(Sender: TObject);
    procedure SyntaxHelpMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Memo2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Memo2DblClick(Sender: TObject);
    procedure Memo3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Memo4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Edit1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ListBox2Change(Sender: TObject);
    procedure Button1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Button2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Edit2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Memo5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Button5Click(Sender: TObject);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Rectangle1Click(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation3Finish(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation4Finish(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure GLBClick(Sender: TObject);
    procedure GUIDListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure GLNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ListBox3DblClick(Sender: TObject);
    procedure GLDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure TCPServerExecute(AContext: TIdContext);
    procedure CheckBox1Change(Sender: TObject);
    procedure ComboBox5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure CCNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure CCDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure CCBClick(Sender: TObject);
    procedure CCListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ListBox4DblClick(Sender: TObject);
    procedure BLMTimerTimer(Sender: TObject);
    procedure BLMFadeOutFinish(Sender: TObject);
    procedure ListItemMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ListView1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ListBox4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure CnfF4QBClick(Sender: TObject);
    procedure CnfF4SBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTable=record
   Name:String;
   Content:TStringList;
  end;

  TGenTemplate=record
   Name,IName,Stats,Desc1,Desc2,GUID:String;
   Quality,GUIDType:Byte;
  end;

  TQNGenTemplate=record
   Name,IName,Desc:String;
   Difficulty:Byte;
  end;

  TBagGuid=record
   Name,GUID:String;
  end;

  TCalcConst=record
   Name:String;
   Value:String;
  end;

  TIDs=array of Integer;

const
  DATA_DIR='itg_data\';
  TABLES_DIR=DATA_DIR+'tables\';
  GEN_DIR=DATA_DIR+'gen\';
  QNGEN_DIR=DATA_DIR+'qngen\';
  BAG_GUIDS_DIR=DATA_DIR+'bagguids\';
  CALC_CONST_DIR=DATA_DIR+'calcconst\';
  DESCRIPTIONS='_descriptions\';
  TABLES_DESC_DIR=DATA_DIR+'tables'+DESCRIPTIONS;
  CALC_CONST_DESC_DIR=DATA_DIR+'calcconst'+DESCRIPTIONS;

  QC:array[0..4] of String=('858585','ffffff','05972f','2575c9','b10000');
  DG='3ca73d';
  DY='ffff00';

  BANNED_CHARS=['\','/',':','*','?','"','<','>','|','%','#','!',',','$'];
  BANNED_CHARS_STR='\ / : * ? " < > | % # ! , $';

  GUID_LIST=0;
  GUID_CUSTOM=1;

  SN=#13#10;
  LuaSN='"..string.char(13)..string.char(10).."';

var
  Form1: TForm1;
  Quh1:Boolean=False;
  Quh2:Boolean=False;
  Quc:Boolean=False;
  Cnfh1:Boolean=False;
  Cnfh2:Boolean=False;
  Closing:Boolean=False;
  DBC:Boolean=False;
  Tables:array of TTable;
  CurrentTable:Integer;
  DRoot:String;
  GTs:array of TGenTemplate;
  QNGTs:array of TQNGenTemplate;
  BGs:array of TBagGuid;
  CCs:array of TCalcConst;
  Clipboard:IFMXClipboardService;
  LastQuality:Byte=0;
  LastDifficulty:Byte=0;
  LastGUID:String;
  LastGTName:String;
  LastTier:Integer;
  LastQ:Integer;

  TSRCConnected:Boolean=False;
  TSRCGUID:String;
  TSRCQuality:String;
  TSRCArmorType:String;
  TSRCItemType:String;

implementation
uses Unit2;

{$R *.fmx}

procedure ParseRData(data:String;var Key:String;var Value:String);
var
 i,L,z,x:Integer;
 CMConfirmed:Boolean;
begin
 L:=Length(data);
 i:=0;
 CMConfirmed:=False;
 repeat
  i:=i+1;
  if Copy(data,i,13)='customMessage' then
   begin
    CMConfirmed:=True;
    Break;
   end;
 until i>=L;
 if CMConfirmed then
  begin
   i:=0;
   repeat
    i:=i+1;
    if Copy(data,i,4)='": "' then
     begin
      z:=i;
      repeat
       z:=z-1;
      until data[z]='"';
      Key:=Copy(data,z+1,i-z-1);
      x:=i+4;
      repeat
       x:=x+1;
      until data[x]='"';
      Value:=Copy(data,i+4,x-i-4);
      Break;
     end;
   until i>=L;
  end;
end;

function EscapeQuotes(str:String):String;
var
 i,L:Integer;
begin
 L:=Length(str);
 if L>0 then
  begin
   i:=0;
   repeat
    i:=i+1;
    if str[i]='"' then
     begin
      Insert('\',str,i);
      i:=i+1;
      L:=L+1;
     end;
   until i>=L;
  end;
 Result:=str;
end;

function StrContainBannedChars(str:String):Boolean;
var
 i,L:Integer;
begin
 L:=Length(str);
 Result:=False;
 for i := 1 to L do
  if str[i] in BANNED_CHARS then
   begin
    Result:=True;
    Exit;
   end;
end;

function EnumCount(EnumStr:String):Integer;
var
 i,L:Integer;
begin
 Result:=0;
 L:=Length(EnumStr);
 if L>0 then
  begin
   Result:=1;
   for i:= 1 To L Do
    if EnumStr[i]=',' then
     Result:=Result+1;
  end;
end;

function GetEnumPos(EnumStr:String;Num:Integer):Integer;
var
 i,L,count:Integer;
begin
 count:=0;
 Result:=0;
 L:=Length(EnumStr);
 if L>0 then
  begin
   if Num=1 then
    begin
     Result:=1;
     Exit;
    end
   else
    for i:= 1 To L Do
     begin
      if EnumStr[i]=',' then
       begin
        count:=count+1;
        if count=Num-1 then
         begin
          Result:=i+1;
          Exit;
         end;
       end;
     end;
  end;
end;

function ExtEnum(EnumStr:String;Num:Integer):String;
var
 start,i,L,c:Integer;
begin
 start:=GetEnumPos(EnumStr,Num);
 L:=Length(EnumStr);
 for i:= start To L Do
  begin
   if (EnumStr[i]=',') or (i=L) then
    begin
     c:=i-start;
     if i=L then c:=c+1;
     Result:=Trim(Copy(EnumStr,start,c));
     Exit;
    end;
  end;
end;

function NewTable(Name:String):Integer;
var
 L:Integer;
begin
 L:=Length(Tables);
 SetLength(Tables,L+1);
 Tables[L].Name:=Name;
 Tables[L].Content:=TStringList.Create;
 Result:=L;
end;

function NewGT(Name:String;Load:Boolean=True):Integer;
var
 L:Integer;
begin
 L:=Length(GTs);
 SetLength(GTs,L+1);
 if not Load then
  GTs[L].Name:=Name+' T1'
 else
  GTs[L].Name:=Name;
 GTs[L].IName:='';
 GTs[L].Stats:='';
 GTs[L].Desc1:='';
 GTs[L].Desc2:='';
 GTs[L].Quality:=0;
 GTs[L].GUID:='000000';
 GTs[L].GUIDType:=GUID_LIST;
 Result:=L;
end;

function NewQNGT(Name:String):Integer;
var
 L:Integer;
begin
 L:=Length(QNGTs);
 SetLength(QNGTs,L+1);
 QNGTs[L].Name:=Name;
 QNGTs[L].IName:='';
 QNGTs[L].Desc:='';
 QNGTs[L].Difficulty:=0;
 Result:=L;
end;

function NewBG(Name:String):Integer;
var
 L:Integer;
begin
 L:=Length(BGs);
 SetLength(BGs,L+1);
 BGs[L].Name:=Name;
 BGs[L].GUID:='000000';
 Result:=L;
end;

function NewCC(Name:String):Integer;
var
 L:Integer;
begin
 L:=Length(CCs);
 SetLength(CCs,L+1);
 CCs[L].Name:=Name;
 CCs[L].Value:='0';
 Result:=L;
end;

procedure DelTableFile(n:Integer);
begin
 DeleteFile(PWideChar(DRoot+TABLES_DIR+Tables[n].Name));
end;

procedure DelGTFile(n:Integer);
begin
 DeleteFile(PWideChar(DRoot+GEN_DIR+GTs[n].Name));
end;

procedure DelQNGTFile(n:Integer);
begin
 DeleteFile(PWideChar(DRoot+QNGEN_DIR+QNGTs[n].Name));
end;

procedure DelBGFile(n:Integer);
begin
 DeleteFile(PWideChar(DRoot+BAG_GUIDS_DIR+BGs[n].Name));
end;

procedure DelCCFile(n:Integer);
begin
 DeleteFile(PWideChar(DRoot+CALC_CONST_DIR+CCs[n].Name));
end;

function DelTable(n:Integer):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(Tables);
 if (L>0) and (n>-1) and (n<L) then
  begin
   DelTableFile(n);
   FreeAndNil(Tables[n].Content);
   if (L>1) and (n<(L-1)) then
    for i := n to L-2 do
     Tables[i]:=Tables[i+1];
   SetLength(Tables,L-1);
   Result:=True;
  end;
end;

function DelGT(n:Integer):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(GTs);
 if (L>0) and (n>-1) and (n<L) then
  begin
   DelGTFile(n);
   if (L>1) and (n<(L-1)) then
    for i := n to L-2 do
     GTs[i]:=GTs[i+1];
   SetLength(GTs,L-1);
   Result:=True;
  end;
end;

function DelQNGT(n:Integer):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(QNGTs);
 if (L>0) and (n>-1) and (n<L) then
  begin
   DelQNGTFile(n);
   if (L>1) and (n<(L-1)) then
    for i := n to L-2 do
     QNGTs[i]:=QNGTs[i+1];
   SetLength(QNGTs,L-1);
   Result:=True;
  end;
end;

function DelBG(n:Integer):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(BGs);
 if (L>0) and (n>-1) and (n<L) then
  begin
   DelBGFile(n);
   if (L>1) and (n<(L-1)) then
    for i := n to L-2 do
     BGs[i]:=BGs[i+1];
   SetLength(BGs,L-1);
   Result:=True;
  end;
end;

function DelCC(n:Integer):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(CCs);
 if (L>0) and (n>-1) and (n<L) then
  begin
   DelCCFile(n);
   if (L>1) and (n<(L-1)) then
    for i := n to L-2 do
     CCs[i]:=CCs[i+1];
   SetLength(CCs,L-1);
   Result:=True;
  end;
end;

function TableNameExists(name:String):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(Tables);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(Tables[i].Name)=WideLowerCase(name) then
    begin
     Result:=True;
     Exit;
    end;
end;

function GTNameExists(name:String):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(GTs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(GTs[i].Name)=WideLowerCase(name) then
    begin
     Result:=True;
     Exit;
    end;
end;

function QNGTNameExists(name:String):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(QNGTs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(QNGTs[i].Name)=WideLowerCase(name) then
    begin
     Result:=True;
     Exit;
    end;
end;

function GUIDNameExists(name:String):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Length(BGs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(BGs[i].Name)=WideLowerCase(name) then
    begin
     Result:=True;
     Exit;
    end;
end;

function GTUIListNameExists(name:String):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 L:=Form1.ListBox1.Items.Count;
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(Form1.ListBox1.Items.Strings[i])=WideLowerCase(name) then
    begin
     Result:=True;
     Exit;
    end;
end;

function CCNameExists(name:String):Boolean;
var
 L,i:Integer;
begin
 Result:=False;
 if (WideLowerCase(name)='тир') or
    (WideLowerCase(name)='качество') then
  begin
   Result:=True;
   Exit;
  end;
 L:=Length(CCs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(CCs[i].Name)=WideLowerCase(name) then
    begin
     Result:=True;
     Exit;
    end;
end;

function GetTableByName(name:String):Integer;
var
 L,i:Integer;
begin
 Result:=-1;
 if WideLowerCase(name)='качество' then
  begin
   Result:=-3;
   Exit;
  end;
 L:=Length(Tables);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(Tables[i].Name)=WideLowerCase(name) then
    begin
     Result:=i;
     Exit;
    end;
end;

function GetGTByName(name:String):Integer;
var
 L,i:Integer;
begin
 Result:=-1;
 L:=Length(GTs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(GTs[i].Name)=WideLowerCase(name) then
    begin
     Result:=i;
     Exit;
    end;
end;

function GetQNGTByName(name:String):Integer;
var
 L,i:Integer;
begin
 Result:=-1;
 L:=Length(QNGTs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(QNGTs[i].Name)=WideLowerCase(name) then
    begin
     Result:=i;
     Exit;
    end;
end;

function GetBGByName(name:String):Integer;
var
 L,i:Integer;
begin
 Result:=-1;
 L:=Length(BGs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(BGs[i].Name)=WideLowerCase(name) then
    begin
     Result:=i;
     Exit;
    end;
end;

function GetCCByName(name:String):Integer;
var
 L,i:Integer;
begin
 Result:=-1;
 if WideLowerCase(name)='тир' then
  begin
   Result:=-2;
   Exit;
  end;
 if WideLowerCase(name)='качество' then
  begin
   Result:=-3;
   Exit;
  end;
 L:=Length(CCs);
 if L>0 then
  for i := 0 to L-1 do
   if WideLowerCase(CCs[i].Name)=WideLowerCase(name) then
    begin
     Result:=i;
     Exit;
    end;
end;

procedure SaveTable(n:Integer);
var
 td:TStringList;
begin
 Tables[n].Content.SaveToFile(DRoot+TABLES_DIR+Tables[n].Name);
 td:=TStringList.Create;
 td.Text:=(Form1.ListView1.Items.Item[n] as TListViewItem).Data['Description'].ToString;
 td.SaveToFile(DRoot+TABLES_DESC_DIR+Tables[n].Name);
 FreeAndNil(td);
end;

procedure SaveTables;
var
 i,L:Integer;
begin
 L:=Length(Tables);
 if L>0 then
  for i := 0 to L-1 do
   SaveTable(i);
end;

procedure SaveGT(n:Integer);
var
 lul:TFileStream;
begin
 lul:=TFileStream.Create(DRoot+GEN_DIR+GTs[n].Name,fmCreate or fmOpenWrite);
 lul.Write(GTs[n].Quality,1);
 WriteStrToFile(GTs[n].IName,lul,True);
 WriteStrToFile(GTs[n].Stats,lul,True);
 WriteStrToFile(GTs[n].Desc1,lul,True);
 WriteStrToFile(GTs[n].Desc2,lul,True);
 WriteStrToFile(GTs[n].GUID,lul,True);
 lul.Write(GTs[n].GUIDType,1);
 FreeAndNil(lul);
end;

procedure SaveGTs;
var
 i,L:Integer;
begin
 L:=Length(GTs);
 if L>0 then
  for i := 0 to L-1 do
   SaveGT(i);
end;

procedure SaveQNGT(n:Integer);
var
 lul:TFileStream;
begin
 lul:=TFileStream.Create(DRoot+QNGEN_DIR+QNGTs[n].Name,fmCreate or fmOpenWrite);
 lul.Write(QNGTs[n].Difficulty,1);
 WriteStrToFile(QNGTs[n].IName,lul,True);
 WriteStrToFile(QNGTs[n].Desc,lul,True);
 FreeAndNil(lul);
end;

procedure SaveQNGTs;
var
 i,L:Integer;
begin
 L:=Length(QNGTs);
 if L>0 then
  for i := 0 to L-1 do
   SaveQNGT(i);
end;

procedure SaveBG(n:Integer);
var
 lul:TFileStream;
begin
 lul:=TFileStream.Create(DRoot+BAG_GUIDS_DIR+BGs[n].Name,fmCreate or fmOpenWrite);
 WriteStrToFile(BGs[n].GUID,lul,True);
 FreeAndNil(lul);
end;

procedure SaveBGs;
var
 i,L:Integer;
begin
 L:=Length(BGs);
 if L>0 then
  for i := 0 to L-1 do
   SaveBG(i);
end;

procedure SaveCC(n:Integer);
var
 lul:TFileStream;
begin
 lul:=TFileStream.Create(DRoot+CALC_CONST_DIR+CCs[n].Name,fmCreate or fmOpenWrite);
 WriteStrToFile(CCs[n].Value,lul,True);
 FreeAndNil(lul);
end;

procedure SaveCCs;
var
 i,L:Integer;
begin
 L:=Length(CCs);
 if L>0 then
  for i := 0 to L-1 do
   SaveCC(i);
end;

procedure LoadTables;
var
 flist,td:TStringList;
 C,i,nt:Integer;
 n:String;
 nit:TListViewItem;
begin
 flist:=TStringList.Create;
 ScanDir(DRoot+TABLES_DIR,'*',flist,False);
 C:=flist.Count;
 if C>0 then
  for i := 0 to C-1 do
   begin
    n:=ExtractFileName(flist.Strings[i]);
    if not StrContainBannedChars(n) then
     begin
      nit:=Form1.ListView1.Items.Add;
      nit.Text:=n;
      nt:=NewTable(n);
      if FileExists(DRoot+TABLES_DESC_DIR+n) then
       begin
        td:=TStringList.Create;
        td.LoadFromFile(DRoot+TABLES_DESC_DIR+n);
        nit.Data['Description']:=td.Text;
        FreeAndNil(td);
       end;
      Tables[nt].Content.LoadFromFile(flist.Strings[i]);
     end;
   end;
 FreeAndNil(flist);
end;

procedure LoadGTs;
var
 flist:TStringList;
 C,i,nt:Integer;
 n,nn:String;
 lul:TFileStream;
begin
 flist:=TStringList.Create;
 ScanDir(DRoot+GEN_DIR,'*',flist,False);
 C:=flist.Count;
 if C>0 then
  for i := 0 to C-1 do
   begin
    n:=ExtractFileName(flist.Strings[i]);
    nn:=Copy(n,1,Length(n)-3);
    if not StrContainBannedChars(n) then
     begin
      if not GTNameExists(n) then
       begin
        if not GTUIListNameExists(nn) then
         begin
          Form1.ListBox1.Items.Add(nn);
          Form1.ComboBox2.Items.Add(nn);
         end;
        nt:=NewGT(n);
        lul:=TFileStream.Create(flist.Strings[i],fmOpenRead);
        lul.Read(GTs[nt].Quality,1);
        GTs[nt].IName:=ReadStrFromFile(lul,0,True);
        GTs[nt].Stats:=ReadStrFromFile(lul,0,True);
        GTs[nt].Desc1:=ReadStrFromFile(lul,0,True);
        GTs[nt].Desc2:=ReadStrFromFile(lul,0,True);
        if lul.Position<lul.Size then
         begin
          GTs[nt].GUID:=ReadStrFromFile(lul,0,True);
          lul.Read(GTs[nt].GUIDType,1);
         end
        else
         begin
          GTs[nt].GUID:='000000';
          GTs[nt].GUIDType:=GUID_LIST;
         end;
        FreeAndNil(lul);
       end;
     end;
   end;
 FreeAndNil(flist);
end;

procedure LoadQNGTs;
var
 flist:TStringList;
 C,i,nt:Integer;
 n:String;
 lul:TFileStream;
begin
 flist:=TStringList.Create;
 ScanDir(DRoot+QNGEN_DIR,'*',flist,False);
 C:=flist.Count;
 if C>0 then
  for i := 0 to C-1 do
   begin
    n:=ExtractFileName(flist.Strings[i]);
    if not StrContainBannedChars(n) then
     begin
      Form1.ListBox2.Items.Add(n);
      Form1.ComboBox4.Items.Add(n);
      nt:=NewQNGT(n);
      lul:=TFileStream.Create(flist.Strings[i],fmOpenRead);
      lul.Read(QNGTs[nt].Difficulty,1);
      QNGTs[nt].IName:=ReadStrFromFile(lul,0,True);
      QNGTs[nt].Desc:=ReadStrFromFile(lul,0,True);
      FreeAndNil(lul);
     end;
   end;
 FreeAndNil(flist);
end;

procedure LoadBGs;
var
 flist:TStringList;
 C,i,nt,nnn:Integer;
 n:String;
 nit:TListBoxItem;
 lul:TFileStream;
begin
 flist:=TStringList.Create;
 ScanDir(DRoot+BAG_GUIDS_DIR,'*',flist,False);
 C:=flist.Count;
 if C>0 then
  for i := 0 to C-1 do
   begin
    n:=ExtractFileName(flist.Strings[i]);
    if not StrContainBannedChars(n) then
     begin
      nnn:=Form1.ListBox3.Items.Add(n);
      Form1.GUIDListChoose.Items.Add(n);
      nit:=Form1.ListBox3.ItemByIndex(nnn);
      nt:=NewBG(n);
      lul:=TFileStream.Create(flist.Strings[i],fmOpenRead);
      BGs[nt].GUID:=ReadStrFromFile(lul,0,True);
      FreeAndNil(lul);
      nit.StyleLookup:='listboxitemrightdetail';
      nit.ItemData.Detail:=BGs[nt].GUID;
     end;
   end;
 FreeAndNil(flist);
end;

procedure LoadCCs;
var
 flist:TStringList;
 C,i,nt,nnn:Integer;
 n:String;
 nit:TListBoxItem;
 lul:TFileStream;
begin
 flist:=TStringList.Create;
 ScanDir(DRoot+CALC_CONST_DIR,'*',flist,False);
 C:=flist.Count;
 if C>0 then
  for i := 0 to C-1 do
   begin
    n:=ExtractFileName(flist.Strings[i]);
    if not StrContainBannedChars(n) then
     begin
      nnn:=Form1.ListBox4.Items.Add(n);
      nit:=Form1.ListBox4.ItemByIndex(nnn);
      nt:=NewCC(n);
      lul:=TFileStream.Create(flist.Strings[i],fmOpenRead);
      CCs[nt].Value:=ReadStrFromFile(lul,0,True);
      FreeAndNil(lul);
      nit.StyleLookup:='listboxitemrightdetail';
      nit.ItemData.Detail:=CCs[nt].Value;
     end;
   end;
 FreeAndNil(flist);
end;

procedure UpdateGT;
var
 c:Integer;
begin
 if Form1.ListBox1.ItemIndex<>-1 then
  begin
   c:=GetGTByName(Form1.ListBox1.Items.Strings[Form1.ListBox1.ItemIndex]+' '+Form1.ComboBox1.Items.Strings[Form1.ComboBox1.ItemIndex]);
   if c<>-1 then
    begin
     GTs[c].IName:=Form1.Edit1.Text;
     GTs[c].Stats:=Form1.Memo2.Text;
     GTs[c].Desc1:=Form1.Memo3.Text;
     GTs[c].Desc2:=Form1.Memo4.Text;
     GTs[c].Quality:=Form1.ComboBox1.ItemIndex;
     if Form1.RB1.IsChecked then
      GTs[c].GUIDType:=GUID_LIST
     else
      GTs[c].GUIDType:=GUID_CUSTOM;
     case GTs[c].GUIDType of
      GUID_LIST:
         if Form1.GUIDListChoose.ItemIndex>-1 then
          GTs[c].GUID:=Form1.GUIDListChoose.Items.Strings[Form1.GUIDListChoose.ItemIndex]
         else
          GTs[c].GUID:='000000';
      GUID_CUSTOM:
         GTs[c].GUID:=Form1.CustomGUID.Text;
     end;
     SaveGT(c);
    end;
  end;
end;

procedure UpdateQNGT;
var
 c:Integer;
begin
 c:=Form1.ListBox2.ItemIndex;
 if c<>-1 then
  begin
   QNGTs[c].IName:=Form1.Edit2.Text;
   QNGTs[c].Desc:=Form1.Memo5.Text;
   QNGTs[c].Difficulty:=Form1.ComboBox3.ItemIndex;
   SaveQNGT(c);
  end;
end;

procedure GLGT(n:Integer);
begin
 Form1.GCaption.Text:=GTs[n].Name;
 Form1.Edit1.Text:=GTs[n].IName;
 Form1.Memo2.Text:=GTs[n].Stats;
 Form1.Memo3.Text:=GTs[n].Desc1;
 Form1.Memo4.Text:=GTs[n].Desc2;
 Form1.ComboBox1.ItemIndex:=GTs[n].Quality;
 case GTs[n].GUIDType of
    GUID_LIST:
       begin
        Form1.RB1.IsChecked:=True;
        Form1.RB2.IsChecked:=False;
        Form1.GUIDListChoose.ItemIndex:=GetBGByName(GTs[n].GUID);
        Form1.CustomGUID.Text:='';
       end;
    GUID_CUSTOM:
       begin
        Form1.RB2.IsChecked:=True;
        Form1.RB1.IsChecked:=False;
        Form1.CustomGUID.Text:=GTs[n].GUID;
        Form1.GUIDListChoose.ItemIndex:=-1;
       end;
 end;
end;

procedure GLQNGT(n:Integer);
begin
 Form1.Label1.Text:=QNGTs[n].Name;
 Form1.Edit2.Text:=QNGTs[n].IName;
 Form1.Memo5.Text:=QNGTs[n].Desc;
 Form1.ComboBox3.ItemIndex:=QNGTs[n].Difficulty;
end;

procedure GTClear;
begin
 Form1.GCaption.Text:='GCaption';
 Form1.Edit1.Text:='';
 Form1.Memo2.Text:='';
 Form1.Memo3.Text:='';
 Form1.Memo4.Text:='';
 Form1.ComboBox1.ItemIndex:=0;
end;

procedure QNGTClear;
begin
 Form1.Label1.Text:='GCaption';
 Form1.Edit2.Text:='';
 Form1.Memo5.Text:='';
 Form1.ComboBox3.ItemIndex:=0;
end;

procedure TForm1.ShowNtf(Caption,Text,BtnText:string);
begin
 NtfCaption.Text:=Caption;
 NtfText.Text:=Text;
 NtfBtn.Text:=BtnText;
 Blur.Enabled:=True;
 Protector.Visible:=True;
 Ntf.Visible:=True;
end;

procedure TForm1.ShowSH;
begin
 Blur.Enabled:=True;
 Protector.Visible:=True;
 SH.Visible:=True;
end;

procedure TForm1.ShowGL;
begin
 Blur.Enabled:=True;
 Protector.Visible:=True;
 GL.Visible:=True;
end;

procedure TForm1.ShowCC;
begin
 Blur.Enabled:=True;
 Protector.Visible:=True;
 CC.Visible:=True;
end;

procedure TForm1.SyntaxHelpMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 ShowSH;
end;

function TForm1.ShowQu(Caption,Text,BtnText:string;Value:string=''):String;
begin
 QuCaption.Text:=Caption;
 QuText.Text:=Text;
 QuBtn.Text:=BtnText;
 Blur.Enabled:=True;
 Protector.Visible:=True;
 Qu.Visible:=True;
 QuTxt.Text:=Value;
 QuTxt.SetFocus;
 Quh1:=True;
 Quh2:=True;
 repeat
  Sleep(1);
  Application.ProcessMessages;
  if not Quh1 then
   begin
    Result:=QuTxt.Text;
    Quh2:=False;
   end;
 until (not Quh2) or Closing;
 Qu.Visible:=False;
 if (not GL.Visible) and (not CC.Visible) then
  begin
   Protector.Visible:=False;
   Blur.Enabled:=False;
  end;
end;

procedure TForm1.SHBClick(Sender: TObject);
begin
 SH.Visible:=False;
 Protector.Visible:=False;
 Blur.Enabled:=False;
end;

function TForm1.ShowCnf(Caption,Text:string):Boolean;
var
 chance:Byte;
begin
 Result:=False;
 CnfCaption.Text:=Caption;
 CnfText.Text:=Text;
 Blur.Enabled:=True;
 Protector.Visible:=True;
 Cnf.Visible:=True;
 Cnfh1:=False;
 Cnfh2:=False;
 chance:=RandomRangeInt(1,100);
 if chance=1 then
  begin
   CnfF4YB.Visible:=True;
   CnfF4NB.Visible:=True;
   CnfF4QB.Visible:=True;
   CnfF4SB.Visible:=True;
   CnfF4QB.Enabled:=True;
   CnfYB.Visible:=False;
   CnfNB.Visible:=False;
  end
 else
  begin
   CnfF4YB.Visible:=False;
   CnfF4NB.Visible:=False;
   CnfF4QB.Visible:=False;
   CnfF4SB.Visible:=False;
   CnfYB.Visible:=True;
   CnfNB.Visible:=True;
  end;
 repeat
  Sleep(1);
  Application.ProcessMessages;
  if Cnfh1 then
   Result:=Cnfh2;
 until Cnfh1 or Closing;
 Cnf.Visible:=False;
 if
  (not CC.Visible) and
  (not GL.Visible) then
  begin
   Protector.Visible:=False;
   Blur.Enabled:=False;
  end;
end;

procedure FindAndRemoveAll(str:String;var target:TStringList);
var
 i,C:Integer;
begin
 C:=target.Count;
 if C>0 then
  begin
   i:=-1;
   repeat
    i:=i+1;
    if target.Strings[i]=str then
     begin
      target.Delete(i);
      C:=C-1;
      i:=i-1;
     end;
   until i=(C-1);
  end;
end;

function GetRandomFromTable(tname,include,exclude:String):String;
var
 n,C,r,i,n2,i2,C2:Integer;
 custom:TStringList;
 incnt,excnt:Integer;
 tmp:String;
begin
 Result:='';
 n:=GetTableByName(tname);
 if n<>-1 then
  begin
   if n=-3 then
    begin
     Result:=Form1.ComboBox6.Items.Strings[LastQ-1];
     Exit;
    end;
   custom:=TStringList.Create;
   custom.Text:=Tables[n].Content.Text;
   if Length(include)>0 then
    begin
     incnt:=EnumCount(include);
     for i := 1 to incnt do
      begin
       tmp:=ExtEnum(include,i);
       if (tmp[1]='[') and (tmp[Length(tmp)]=']') then
        begin
         tmp:=Copy(tmp,2,Length(tmp)-2);
         n2:=GetTableByName(tmp);
         if n2<>-1 then
          custom.Text:=custom.Text+Tables[n2].Content.Text;
        end
       else custom.Add(tmp);
      end;
    end;
   if Length(exclude)>0 then
    begin
     excnt:=EnumCount(exclude);
     for i := 1 to excnt do
      begin
       tmp:=ExtEnum(exclude,i);
       if (tmp[1]='[') and (tmp[Length(tmp)]=']') then
        begin
         tmp:=Copy(tmp,2,Length(tmp)-2);
         n2:=GetTableByName(tmp);
         if n2<>-1 then
          begin
           C2:=Tables[n2].Content.Count;
           if C2>0 then
            for i2 := 0 to C2-1 do
             FindAndRemoveAll(Tables[n2].Content.Strings[i2],custom);
          end;
        end
       else FindAndRemoveAll(tmp,custom);
      end;
    end;
   C:=custom.Count;
   if C>0 then
    begin
     r:=RandomRangeInt(0,C-1);
     Result:=custom.Strings[r];
    end;
   FreeAndNil(custom);
  end;
end;

function CleanName(n:String):Boolean;
var
 i,L:Integer;
begin
 Result:=True;
 L:=Length(n);
 if L>0 then
  for i := 1 to L do
   if n[i] in [#10,#13] then
    begin
     Result:=False;
     Exit;
    end;
end;

procedure ParseTemplate(var ts:String;q:Integer);
type
 TUsedResults=record
  Name,exclude:String;
 end;
var
 i,L,start,sstart,instart,exstart,chstart,expstart:Integer;
 Started,SStarted,Modded,InS,ExS,Chance,Unique,StatsL:Boolean;
 ChV:Integer;
 tname,EnumStr,incl,excl,tmp,calcres:String;
 RNI,RNR:Boolean;
 RN:Extended;
 RC:Integer;
 ParseError:Boolean;
 ErrNum:Integer;
 PRes:String;
 UsedResults:array of TUsedResults;
 StatsTable:String;
 StatsCount,StatsAmount:Integer;
 tmpi:Integer;
 StatsList:TStringList;
 function NumCount(q:String):Integer;
 var
  i,L:Integer;
 begin
  Result:=0;
  L:=Length(q);
  if L>0 then
   begin
    Result:=1;
    for i:= 1 To L Do
     begin
      if q[i] in ['+','-','*','/'] then
       Result:=Result+1;
     end;
   end;
 end;
 function GetNumPos(q:String;Num:Integer):Integer;
 var
  i,L,count:Integer;
 begin
  count:=0;
  Result:=0;
  L:=Length(q);
  if L>0 then
   begin
    if Num=1 then
     begin
      Result:=1;
      Exit;
     end
    else
     for i:= 1 To L Do
      begin
       if q[i] in ['+','-','*','/'] then
        begin
         count:=count+1;
         if count=Num-1 then
          begin
           Result:=i+1;
           Exit;
          end;
        end;
      end;
   end;
 end;
 function GetRNumPos(q:String;Num:Integer):Integer;
 var
  i,L,count:Integer;
 begin
  count:=0;
  Result:=0;
  L:=Length(q);
  if L>0 then
   begin
    if Num=1 then
     begin
      Result:=1;
      Exit;
     end
    else
     for i:= 1 To L Do
      begin
       if q[i] in [','] then
        begin
         count:=count+1;
         if count=Num-1 then
          begin
           Result:=i+1;
           Exit;
          end;
        end;
      end;
   end;
 end;
 function GetNumEnd(q:String;Num:Integer):Integer;
 var
  start,i,L:Integer;
 begin
  start:=GetNumPos(q,Num);
  L:=Length(q);
  for i:= start To L Do
   begin
    if (q[i] in ['+','-','*','/']) or (i=L) then
     begin
      if i=L then
       Result:=i
      else
       Result:=i-1;
      Exit;
     end;
   end;
 end;
 function ExtNum(q:String;Num:Integer):String;
 var
  start,i,L:Integer;
 begin
  start:=GetNumPos(q,Num);
  L:=Length(q);
  for i:= start To L Do
   begin
    if (q[i] in ['+','-','*','/']) or (i=L) then
     begin
      if i=L then
       Result:=Copy(q,start,i-start+1)
      else
       Result:=Copy(q,start,i-start);
      Exit;
     end;
   end;
 end;
 function ExtRNum(q:String;Num:Integer):String;
 var
  start,i,L:Integer;
 begin
  start:=GetRNumPos(q,Num);
  L:=Length(q);
  for i:= start To L Do
   begin
    if (q[i] in [',']) or (i=L) then
     begin
      if i=L then
       Result:=Copy(q,start,i-start+1)
      else
       Result:=Copy(q,start,i-start);
      Exit;
     end;
   end;
 end;
 function ExtOp(q:String;Num:Integer):String;
 var
  i,L,cn:Integer;
 begin
  Result:='';
  cn:=0;
  L:=Length(q);
  if L>0 then
   for i := 1 to L do
    if q[i] in ['+','-','*','/'] then
     begin
      cn:=cn+1;
      if cn=Num then
       begin
        Result:=q[i];
        Exit;
       end;
     end;
 end;
 function CalcNormalize(q:String):String;
 var
  i,L:Integer;
 begin
  Result:='';
  L:=Length(q);
  if L>0 then
   begin
    i:=0;
    repeat
     i:=i+1;
     if not (q[i] in ['0'..'9','+','-','*','/','.']) then
      begin
       Delete(q,i,1);
       i:=i-1;
       L:=L-1;
      end;
     if ((i=1) or (i=L)) and (not (q[i] in ['0'..'9'])) then
      begin
       Insert('0',q,i);
       i:=i-1;
       L:=L+1;
      end;
    until i>=L;
    Result:=q;
   end;
 end;
 function OpToCalc(q:String):Integer;
 var
  i,L:Integer;
 begin
  Result:=1;
  L:=NumCount(q);
  if L>1 then
   for i := 1 to L-1 do
    if ExtOp(q,i)[1] in ['*','/'] then
     begin
      Result:=i;
      Exit;
     end;
 end;
 function Calc(q:String;var EE:Boolean):String;
 var
  nms,opn,start,ending:Integer;
  n1,n2,res:Extended;
  n1s,n2s,CVal:String;
  op:Char;
  TableOrConstUsed:Boolean;
  function GetVal(nam:String):String;
  begin
   if GetCCByName(nam)=-3 then
    Result:=LastQ.ToString()
   else if GetCCByName(nam)=-2 then
    Result:=LastTier.ToString()
   else
    Result:=CCs[GetCCByName(nam)].Value;
  end;
  function ExpressionExpanded:Boolean;
  var
   i,L:Integer;
  begin
   Result:=False;
   L:=Length(q);
   for i := 1 to L do
    if q[i] in ['<','>'] then
     begin
      Result:=True;
      Exit;
     end;
  end;
 begin
  Result:='';
  //q:=CalcNormalize(q);
  if q='' then q:='0';
  nms:=NumCount(q);
  if nms>1 then
   begin
    opn:=OpToCalc(q);
    n1s:=ExtNum(q,opn);
    n2s:=ExtNum(q,opn+1);
    if n1s='' then n1s:='0';
    if n2s='' then n2s:='0';
    TableOrConstUsed:=False;
    if CCNameExists(n1s) then
     begin
      CVal:=GetVal(n1s);
      start:=GetNumPos(q,opn);
      ending:=GetNumEnd(q,opn);
      Delete(q,start,ending-start+1);
      Insert(CVal,q,start);
      TableOrConstUsed:=True;
     end
    else if TableNameExists(n1s) then
     begin
      CVal:=GetRandomFromTable(n1s,'','');
      start:=GetNumPos(q,opn);
      ending:=GetNumEnd(q,opn);
      Delete(q,start,ending-start+1);
      Insert(CVal,q,start);
      TableOrConstUsed:=True;
     end;
    if CCNameExists(n2s) then
     begin
      CVal:=GetVal(n2s);
      start:=GetNumPos(q,opn+1);
      ending:=GetNumEnd(q,opn+1);
      Delete(q,start,ending-start+1);
      Insert(CVal,q,start);
      TableOrConstUsed:=True;
     end
    else if TableNameExists(n2s) then
     begin
      CVal:=GetRandomFromTable(n2s,'','');
      start:=GetNumPos(q,opn+1);
      ending:=GetNumEnd(q,opn+1);
      Delete(q,start,ending-start+1);
      Insert(CVal,q,start);
      TableOrConstUsed:=True;
     end
    else if (n1s[1]='!') and (n1s[Length(n1s)]='!') then
     begin
      n1:=StrToFloatDef(ExtRNum(Copy(n1s,2,Length(n1s)-2),1),0);
      n2:=StrToFloatDef(ExtRNum(Copy(n1s,2,Length(n1s)-2),2),0);
      res:=RandomRange(n1,n2);
      start:=GetNumPos(q,opn);
      ending:=GetNumEnd(q,opn);
      Delete(q,start,ending-start+1);
      Insert(res.ToString,q,start);
     end
    else if (n2s[1]='!') and (n2s[Length(n2s)]='!') then
     begin
      n1:=StrToFloatDef(ExtRNum(Copy(n2s,2,Length(n2s)-2),1),0);
      n2:=StrToFloatDef(ExtRNum(Copy(n2s,2,Length(n2s)-2),2),0);
      res:=RandomRange(n1,n2);
      start:=GetNumPos(q,opn+1);
      ending:=GetNumEnd(q,opn+1);
      Delete(q,start,ending-start+1);
      Insert(res.ToString,q,start);
     end;
    if not TableOrConstUsed then
     begin
      opn:=OpToCalc(q);
      n1:=StrToFloatDef(ExtNum(q,opn),0);
      n2:=StrToFloatDef(ExtNum(q,opn+1),0);
      op:=ExtOp(q,opn)[1];
      case op of
       '+': res:=n1+n2;
       '-': res:=n1-n2;
       '*': res:=n1*n2;
       '/': res:=n1/n2;
      end;
      start:=GetNumPos(q,opn);
      ending:=GetNumEnd(q,opn+1);
      Delete(q,start,ending-start+1);
      Insert(FloatToStr(res),q,start);
     end;
    EE:=ExpressionExpanded;
    if TableOrConstUsed and EE then
     Result:='<'+q+'>'
    else
     Result:=Calc(q,EE);
   end
  else
   begin
    if CCNameExists(q) then
     begin
      CVal:=GetVal(q);
      q:=CVal;
      EE:=ExpressionExpanded;
      if EE then
       Result:='<'+q+'>'
      else
       Result:=Calc(q,EE)
     end
    else if TableNameExists(q) then
     begin
      CVal:=GetRandomFromTable(q,'','');
      q:=CVal;
      EE:=ExpressionExpanded;
      if EE then
       Result:='<'+q+'>'
      else
       Result:=Calc(q,EE)
     end
    else if (q[1]='!') and (q[Length(q)]='!') then
     begin
      n1:=StrToFloatDef(ExtRNum(Copy(q,2,Length(q)-2),1),0);
      n2:=StrToFloatDef(ExtRNum(Copy(q,2,Length(q)-2),2),0);
      res:=RandomRange(n1,n2);
      Result:=res.ToString();
     end
    else
     Result:=q;
   end;
 end;
 function TakeStats(var amnt:Integer;Last:Boolean=False):Integer;
 begin
  if Last then
   begin
    Result:=amnt;
    amnt:=0;
    if Result<(-1*(q+1)) then
     Result:=-1*(q+1);
   end
  else
   begin
    repeat
     Result:=RandomRangeInt(-1*(q+1),amnt);
    until (Result<>0) and ((amnt-Result)<>0) and (Result>=(-1*(q+1)));
    amnt:=amnt-Result;
   end;
 end;
 function MakeStatsExclStr(var sl:TStringList;sep:String):String;
 var
  C,i:Integer;
 begin
  C:=sl.Count;
  Result:='';
  if C>0 then
   for i := 0 to C-1 do
    begin
     Result:=Result+sl.Strings[i];
     if i<>(C-1) then
      Result:=Result+sep;
    end;
 end;
 function FindTabl(tabl:String):Integer;
 var
  i,L:Integer;
 begin
  Result:=-1;
  L:=Length(UsedResults);
  if L>0 then
   for i := 0 to L-1 do
    if WideLowerCase(UsedResults[i].Name)=WideLowerCase(tabl) then
     begin
      Result:=i;
      Exit;
     end;
 end;
 function GetEx(tabl:String):String;
 var
  tn:Integer;
 begin
  tn:=FindTabl(tabl);
  if tn<>-1 then
   Result:=UsedResults[tn].exclude
  else
   Result:='';
 end;
 procedure AddEx(tabl,ex:String);
 var
  tn,L:Integer;
 begin
  tn:=FindTabl(tabl);
  if tn=-1 then
   begin
    L:=Length(UsedResults);
    SetLength(UsedResults,L+1);
    UsedResults[L].Name:=tabl;
    UsedResults[L].exclude:=ex;
   end
  else
   begin
    UsedResults[tn].exclude:=UsedResults[tn].exclude+','+ex;
   end;
 end;
 procedure SetAllToFalse;
 begin
  Started:=False;
  SStarted:=False;
  Modded:=False;
  InS:=False;
  ExS:=False;
  Chance:=False;
  RNI:=False;
  RNR:=False;
  ParseError:=False;
  Unique:=False;
  StatsL:=False;
 end;
 function MakeFormatStr(n:Integer):String;
 var
  fi:Integer;
 begin
  if n<0 then n:=abs(n);
  if n>0 then
   begin
    Result:='0.';
    for fi := 1 to n do
     Result:=Result+'0';
   end
  else Result:='0';
 end;
 function Calculations(x:Integer=1;y:Integer=-1):Integer;
 var
  i:Integer;
 begin
  Result:=-1;
  if y=-1 then
   y:=Length(ts);
  if y>0 then
   begin
    for i := x to y do
     if ts[i]='<' then
      begin
       Result:=i;
       Exit;
      end;
   end;
 end;
 function CalculationsEnd(s,y:Integer):Integer;
 var
  i,L,dpth:Integer;
 begin
  Result:=-1;
  L:=Length(ts);
  dpth:=0;
  if L>0 then
   begin
    for i := s+1 to L do
     begin
      if (i>y) and (y>-1) then Exit;
      if (ts[i]='>') and (dpth=0) then
       begin
        Result:=i;
        Exit;
       end
      else if (ts[i]='>') and (dpth<>0) then
       dpth:=dpth-1;
      if ts[i]='<' then
       dpth:=dpth+1;
     end;
   end;
 end;
 function DoCalculations(x:Integer=1;y:Integer=-1;Inner:Integer=0):Boolean;
 var
  calcstart,calcend:Integer;
  EE:Boolean;
 begin
  Result:=False;
  repeat
   calcstart:=Calculations(x,y);
   if calcstart>-1 then
    begin
     calcend:=CalculationsEnd(calcstart,y);
     if calcend=-1 then
      begin
       if Inner=0 then
        begin
         PRes:='/!! Ошибка синтаксиса: Нет закрывающей угловой скобки !!\';
         Insert(PRes,ts,calcstart);
        end;
       Exit;
      end
     else
      begin
       if not DoCalculations(calcstart+1,calcend-1,Inner+1) then
        begin
         EE:=False;
         calcres:=Calc(Copy(ts,calcstart+1,calcend-calcstart-1),EE);
         if (Inner=0) and (not EE) then calcres:=IntToStr(Round(StrToFloatDef(calcres,0)));
         Delete(ts,calcstart,calcend-calcstart+1);
         Insert(calcres,ts,calcstart);
         Result:=True;
        end;
      end;
    end;
  until calcstart=-1;
 end;
begin
 DoCalculations;
 L:=Length(ts);
 i:=0;
 SetAllToFalse;
 incl:='';
 excl:='';
 if L>0 then
  repeat
   i:=i+1;
   if ts[i]='#' then
    if Started and (ts[i-1]='%') then
     begin
      RNI:=True;
      SStarted:=True;
      sstart:=i;
     end;
   if ts[i]='!' then
    if SStarted and RNI and (ts[i-1]='#') and (ts[i-2]='%') then
     begin
      RNR:=True;
      sstart:=i;
     end;
   if ts[i]='^' then
    if Started and (not SStarted) and (ts[i-1]='%') then
     begin
      StatsL:=True;
      start:=i;
     end;
   if ts[i]='$' then
    if Started and (not SStarted) and (ts[i-1]='%') then
     begin
      Unique:=True;
      start:=i;
     end;
   if ts[i]='+' then
    if Started and (not SStarted) then
     begin
      if not Modded then
       tname:=Copy(ts,start+1,i-start-1);
      Modded:=True;
      InS:=True;
      instart:=i;
      if ExS then
       begin
        if Length(excl)>0 then excl:=excl+',';
        excl:=excl+Copy(ts,exstart+1,i-exstart-1);
        ExS:=False;
       end;
     end;
   if ts[i]='-' then
    if Started and (not SStarted) then
     begin
      if not Modded then
       tname:=Copy(ts,start+1,i-start-1);
      Modded:=True;
      ExS:=True;
      exstart:=i;
      if InS then
       begin
        if Length(incl)>0 then incl:=incl+',';
        incl:=incl+Copy(ts,instart+1,i-instart-1);
        InS:=False;
       end;
     end;
   if ts[i]='*' then
    if Started then
     begin
      Chance:=True;
      chstart:=i;
      if not Modded then
       tname:=Copy(ts,start+1,i-start-1);
      if ExS then
       begin
        if Length(excl)>0 then excl:=excl+',';
        excl:=excl+Copy(ts,exstart+1,i-exstart-1);
        ExS:=False;
       end;
      if InS then
       begin
        if Length(incl)>0 then incl:=incl+',';
        incl:=incl+Copy(ts,instart+1,i-instart-1);
        InS:=False;
       end;
      if SStarted then
       EnumStr:=Copy(ts,sstart+1,i-sstart-1);
     end;
   if ts[i]='%' then
    if Started then
     begin
      if SStarted then
       begin
        if Chance then
         ChV:=StrToIntDef(Copy(ts,chstart+1,i-chstart-1),0)
        else
         EnumStr:=Copy(ts,sstart+1,i-sstart-1);
        if RNR then
         begin
          if EnumCount(EnumStr)=3 then
           begin
            RN:=RandomRange(StrToIntDef(ExtEnum(EnumStr,1),0),StrToIntDef(ExtEnum(EnumStr,2),0));
            RC:=StrToIntDef(ExtEnum(EnumStr,3),0);
            PRes:=FormatFloat(MakeFormatStr(RC),RN);
           end
          else
           begin
            ParseError:=True;
            ErrNum:=1;
           end;
         end
        else if RNI then
         begin
          if EnumCount(EnumStr)=2 then
           begin
            RN:=RandomRange(StrToIntDef(ExtEnum(EnumStr,1),0),StrToIntDef(ExtEnum(EnumStr,2),0));
            PRes:=IntToStr(Round(RN));
           end
          else
           begin
            ParseError:=True;
            ErrNum:=2;
           end;
         end;
       end
      else
       begin
        if Chance then
         ChV:=StrToIntDef(Copy(ts,chstart+1,i-chstart-1),0)
        else if not Modded then
         tname:=Copy(ts,start+1,i-start-1);
        if ExS then
         begin
          if Length(excl)>0 then excl:=excl+',';
          excl:=excl+Copy(ts,exstart+1,i-exstart-1);
          ExS:=False;
         end;
        if InS then
         begin
          if Length(incl)>0 then incl:=incl+',';
          incl:=incl+Copy(ts,instart+1,i-instart-1);
          InS:=False;
         end;
        if StatsL then
         begin
          tmp:=Copy(ts,start+1,i-start-1);
          if EnumCount(tmp)=3 then
           begin
            StatsTable:=ExtEnum(tmp,1);
            StatsCount:=StrToIntDef(ExtEnum(tmp,2),0);
            StatsAmount:=StrToIntDef(ExtEnum(tmp,3),0);
            if StatsCount>0 then
             begin
              StatsList:=TStringList.Create;
              for tmpi := 1 to StatsCount do
               begin
                tmp:=GetRandomFromTable(StatsTable,'',MakeStatsExclStr(StatsList,','));
                StatsList.Add(tmp);
               end;
              for tmpi := 1 to StatsCount do
               StatsList.Strings[tmpi-1]:=StatsList.Strings[tmpi-1]+' '+IntToStr(TakeStats(StatsAmount,tmpi=StatsCount));
              PRes:=MakeStatsExclStr(StatsList,#13);
              FreeAndNil(StatsList);
             end;
           end;
         end;
        if CleanName(tname) then
         begin
          if Unique then
           begin
            tmp:=GetEx(tname);
            if tmp<>'' then
             if excl='' then
              excl:=tmp
             else
              excl:=excl+','+tmp;
           end;
          if not StatsL then PRes:=GetRandomFromTable(tname,incl,excl);
         end;
       end;
      Delete(ts,expstart,i-expstart+1);
      if Chance then
       if RandomRangeInt(1,100)>ChV then
        PRes:='';
      if Unique then
       if PRes<>'' then
        AddEx(tname,PRes);
      if ParseError then
       case ErrNum of
        1: PRes:='/!! Ошибка синтаксиса: Неверное количество параметров (должно быть 3) !!\';
        2: PRes:='/!! Ошибка синтаксиса: Неверное количество параметров (должно быть 2) !!\';
        else PRes:='/!! Ошибка синтаксиса: НЕИЗВЕСТНАЯ !!\';
       end;
      Insert(PRes,ts,expstart);
      i:=expstart-1;
      L:=Length(ts);
      SetAllToFalse;
      incl:='';
      excl:='';
     end
    else
     begin
      Started:=True;
      start:=i;
      expstart:=i;
     end;
  until i>=L;
 DoCalculations;
end;

procedure TForm1.NewRandomItem;
var
 tmp:String;
 n,n2,n3,C,q:Integer;
 function Capitalize(s:String):String;
 var
  tmmp:String;
 begin
  Result:=WideLowerCase(s);
  tmmp:=Result[1];
  tmmp:=WideUpperCase(tmmp);
  Result[1]:=tmmp[1];
 end;
begin
 Randomize;
 n:=ComboBox2.ItemIndex;
 n2:=ComboBox5.ItemIndex;
 n3:=ComboBox6.ItemIndex;
 if n=-1 then
  begin
   C:=Length(GTs);
   if C>0 then
    n:=RandomRangeInt(0,C-1);
  end;
 if n2=-1 then n2:=RandomRangeInt(0,4);
 if n3=-1 then n3:=RandomRangeInt(0,2);
 if n>-1 then
  begin
   LastGTName:=ComboBox2.Items.Strings[n]+' '+ComboBox5.Items.Strings[n2];
   n:=GetGTByName(LastGTName);
   LastTier:=n2+1;
   LastQ:=n3+1;
   if n<>-1 then
    begin
     q:=GTs[n].Quality;
     tmp:=GTs[n].IName;
     ParseTemplate(tmp,q);
     RIName.Text:=Capitalize(tmp);
     tmp:=GTs[n].Stats;
     ParseTemplate(tmp,q);
     RIStats.Text:=tmp;
     tmp:=GTs[n].Desc1;
     ParseTemplate(tmp,q);
     RIDesc1.Text:=tmp;
     tmp:=GTs[n].Desc2;
     ParseTemplate(tmp,q);
     RIDesc2.Text:=tmp;
     LastQuality:=q;
     case GTs[n].GUIDType of
      GUID_LIST:
       if GetBGByName(GTs[n].GUID)<>-1 then
        LastGUID:=BGs[GetBGByName(GTs[n].GUID)].GUID
       else
        LastGUID:='000000';
      GUID_CUSTOM:
       LastGUID:=GTs[n].GUID;
     end;
    end;
  end;
end;

procedure TForm1.NewRandomQN;
var
 tmp:String;
 n,C,d:Integer;
begin
 Randomize;
 n:=ComboBox4.ItemIndex;
 if n=-1 then
  begin
   C:=Length(QNGTs);
   if C>0 then
    n:=RandomRangeInt(0,C-1);
  end;
 if n>-1 then
  begin
   d:=QNGTs[n].Difficulty;
   tmp:=QNGTs[n].IName;
   ParseTemplate(tmp,d);
   Edit3.Text:=tmp;
   tmp:=QNGTs[n].Desc;
   ParseTemplate(tmp,d);
   Memo8.Text:=tmp;
   LastDifficulty:=d;
  end;
end;

procedure TForm1.BLMFadeOutFinish(Sender: TObject);
begin
 BlackLivesMatter.Visible:=False;
end;

procedure TForm1.BLMTimerTimer(Sender: TObject);
begin
 BLMFadeOut.Enabled:=True;
 BLMTimer.Enabled:=False;
end;

procedure TForm1.BtnCnclTableClick(Sender: TObject);
begin
 ListView1.Visible:=True;
 BtnCnclTable.Visible:=False;
 BtnSaveTable.Visible:=False;
 BtnNewTable.Visible:=True;
 BtnDelTable.Visible:=True;
end;

procedure TForm1.BtnDelTableMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 n:=ListView1.ItemIndex;
 L:=ListView1.Items.Count;
 if (L>0) and (n>-1) and (n<L) then
  if ShowCnf('Удалить таблицу "'+Tables[n].Name+'"?','Ты действительно хочешь удалить таблицу "'+Tables[n].Name+'", а не просто случайно нажал?') then
   if DelTable(n) then
    ListView1.Items.Delete(n);
end;

procedure TForm1.BtnNewTableMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 n:String;
 nit:TListViewItem;
 allgood:Boolean;
begin
 allgood:=False;
 repeat
  n:=ShowQu('Новая таблица','Введите название'+#13+'Оно не должно совпадать с уже существующими!','Хочу такое');
  if Quc then Exit;
  if Trim(n)='' then
   ShowNtf('Шо это такое?','Название не введено!','Извините, сейчас напишу')
  else if TableNameExists(n) then
   ShowNtf('Шо это такое?','Таблица с таким названием уже есть!','Извините, сейчас напишу другое')
  else if StrContainBannedChars(n) then
   ShowNtf('Шо это такое?','Название содержит запрещённые символы!'+#13#13+BANNED_CHARS_STR,'Извините, сейчас напишу другое')
  else
   allgood:=True;
 until allgood or Closing;
 if Closing then Exit;
 nit:=ListView1.Items.Add;
 nit.Text:=n;
 SaveTable(NewTable(n));
end;

procedure TForm1.BtnSaveTableClick(Sender: TObject);
begin
 ListView1.Visible:=True;
 BtnCnclTable.Visible:=False;
 BtnSaveTable.Visible:=False;
 BtnNewTable.Visible:=True;
 BtnDelTable.Visible:=True;
 Tables[CurrentTable].Content.Text:=Memo1.Text;
 SaveTable(CurrentTable);
end;

procedure TForm1.Button1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 n:String;
 allgood:Boolean;
begin
 allgood:=False;
 repeat
  n:=ShowQu('Новый шаблон','Введите название'+#13+'Оно не должно совпадать с уже существующими!','Хочу такое');
  if Quc then Exit;
  if Trim(n)='' then
   ShowNtf('Шо это такое?','Название не введено!','Извините, сейчас напишу')
  else if QNGTNameExists(n) then
   ShowNtf('Шо это такое?','Шаблон с таким названием уже есть!','Извините, сейчас напишу другое')
  else if StrContainBannedChars(n) then
   ShowNtf('Шо это такое?','Название содержит запрещённые символы!'+#13#13+BANNED_CHARS_STR,'Извините, сейчас напишу другое')
  else
   allgood:=True;
 until allgood or Closing;
 if Closing then Exit;
 ListBox2.Items.Add(n);
 ComboBox4.Items.Add(n);
 SaveQNGT(NewQNGT(n));
end;

procedure TForm1.Button2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 n:=ListBox2.ItemIndex;
 L:=ListBox2.Items.Count;
 if (L>0) and (n>-1) and (n<L) then
  if ShowCnf('Удалить шаблон "'+QNGTs[n].Name+'"?','Ты действительно хочешь удалить шаблон "'+QNGTs[n].Name+'", а не просто случайно нажал?') then
   if DelQNGT(n) then
    begin
     ListBox2.Items.Delete(n);
     ComboBox4.Items.Delete(n);
     QNGTClear;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 UpdateQNGT;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 NewRandomQN;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 FloatAnimation1.Enabled:=True;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 FloatAnimation5.Enabled:=not FloatAnimation5.Enabled;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 FloatAnimation6.Enabled:=not FloatAnimation6.Enabled;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 SpawnTS;
end;

procedure TForm1.CCBClick(Sender: TObject);
begin
 CC.Visible:=False;
 Protector.Visible:=False;
 Blur.Enabled:=False;
end;

procedure TForm1.CCDMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 n:=ListBox4.ItemIndex;
 L:=ListBox4.Items.Count;
 if (L>0) and (n>-1) and (n<L) then
  begin
   CC.Enabled:=False;
   if ShowCnf('Удалить константу "'+CCs[n].Name+'"?','Ты действительно хочешь удалить константу "'+CCs[n].Name+'", а не просто случайно нажал?') then
    if DelCC(n) then
     begin
      ListBox4.Items.Delete(n);
     end;
   CC.Enabled:=True;
  end;
end;

procedure TForm1.CCListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 ShowCC;
end;

procedure TForm1.CCNMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 n:String;
 nit:TListBoxItem;
 allgood:Boolean;
 ln:Integer;
begin
 allgood:=False;
 repeat
  CC.Enabled:=False;
  n:=ShowQu('Новая константа','Введите название'+#13+'Оно не должно совпадать с уже существующими!','Хочу такое');
  CC.Enabled:=True;
  if Quc then Exit;
  if Trim(n)='' then
   ShowNtf('Шо это такое?','Название не введено!','Извините, сейчас напишу')
  else if CCNameExists(n) then
   ShowNtf('Шо это такое?','Таблица с таким названием уже есть!','Извините, сейчас напишу другое')
  else if StrContainBannedChars(n) then
   ShowNtf('Шо это такое?','Название содержит запрещённые символы!'+#13#13+BANNED_CHARS_STR,'Извините, сейчас напишу другое')
  else
   allgood:=True;
 until allgood or Closing;
 if Closing then Exit;
 ln:=ListBox4.Items.Add(n);
 nit:=ListBox4.ItemByIndex(ln);
 nit.StyleLookup:='listboxitemrightdetail';
 nit.ItemData.Detail:='0';
 SaveCC(NewCC(n));
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
 try
  TCPServer.Active:=CheckBox1.IsChecked;
 except
  CheckBox1.IsChecked:=False;
  ShowMessage('Порт 39998 занят. Возможно вы сейчас редактируете Lua код в TS через Atom?');
 end;
end;

procedure TForm1.CnfF4QBClick(Sender: TObject);
begin
 CnfText.Text:='Да. Это значит, что данная запись исчезнет из списка и данных генератора. Просто прекратит существовать, как будто её и не было.';
 CnfF4QB.Enabled:=False;
end;

procedure TForm1.CnfF4SBClick(Sender: TObject);
begin
 Form1.Close;
end;

procedure TForm1.CnfNBClick(Sender: TObject);
begin
 Cnfh2:=False;
 Cnfh1:=True;
end;

procedure TForm1.CnfYBClick(Sender: TObject);
begin
 Cnfh2:=True;
 Cnfh1:=True;
end;

procedure TForm1.ComboBox2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 if Button=TMouseButton.mbRight then
  ComboBox2.ItemIndex:=-1;
end;

procedure TForm1.ComboBox4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 if Button=TMouseButton.mbRight then
  ComboBox4.ItemIndex:=-1;
end;

procedure TForm1.ComboBox5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 if Button=TMouseButton.mbRight then
  ComboBox5.ItemIndex:=-1;
end;

procedure TForm1.Edit1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 L:=Length(Edit1.SelText);
 if (L>0) and DBC then
 if (Edit1.Text[Edit1.SelStart] in ['%','[','$','^']) and
    (Edit1.Text[Edit1.SelStart+L+1] in ['%',']','+','-','*',',']) then
  begin
   n:=GetTableByName(Edit1.SelText);
   if n<>-1 then
    begin
     TabControl1.TabIndex:=0;
     ListView1.Visible:=False;
     BtnCnclTable.Visible:=True;
     BtnSaveTable.Visible:=True;
     BtnNewTable.Visible:=False;
     BtnDelTable.Visible:=False;
     CurrentTable:=n;
     Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
     Memo1.SetFocus;
    end;
  end;
 DBC:=False;
end;

procedure TForm1.Edit2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 L:=Length(Edit2.SelText);
 if (L>0) and DBC then
 if (Edit2.Text[Edit2.SelStart] in ['%','[','$','^']) and
    (Edit2.Text[Edit2.SelStart+L+1] in ['%',']','+','-','*',',']) then
  begin
   n:=GetTableByName(Edit2.SelText);
   if n<>-1 then
    begin
     TabControl1.TabIndex:=0;
     ListView1.Visible:=False;
     BtnCnclTable.Visible:=True;
     BtnSaveTable.Visible:=True;
     BtnNewTable.Visible:=False;
     BtnDelTable.Visible:=False;
     CurrentTable:=n;
     Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
     Memo1.SetFocus;
    end;
  end;
 DBC:=False;
end;

procedure TForm1.FCDClick(Sender: TObject);
var
 tmp:String;
begin
 tmp:='[ffffff]'+RIStats.Text+'[-]';
 if Length(RIDesc1.Text)>0 then
  tmp:=tmp+#10#13#10#13+'['+DG+']'+RIDesc1.Text+'[-]';
 if Length(RIDesc2.Text)>0 then
  tmp:=tmp+#10#13#10#13+'['+DY+']'+RIDesc2.Text+'[-]';
 Clipboard.SetClipboard(tmp);
end;

procedure TForm1.FCNClick(Sender: TObject);
begin
 Clipboard.SetClipboard('['+QC[LastQuality]+']'+RIName.Text+'[-]');
end;

procedure TForm1.FGenClick(Sender: TObject);
begin
 NewRandomItem;
end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
 TabControl1.Visible:=False;
 Image1.Visible:=True;
 FloatAnimation2.Enabled:=True;
 FloatAnimation1.Enabled:=False;
end;

procedure TForm1.FloatAnimation2Finish(Sender: TObject);
begin
 FloatAnimation2.Enabled:=False;
end;

procedure TForm1.FloatAnimation3Finish(Sender: TObject);
begin
 Image1.Visible:=False;
 TabControl1.Visible:=True;
 FloatAnimation4.Enabled:=True;
 FloatAnimation3.Enabled:=False;
end;

procedure TForm1.FloatAnimation4Finish(Sender: TObject);
begin
 FloatAnimation4.Enabled:=False;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 Closing:=True;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
 FloatAnimation3.Enabled:=True;
end;

procedure TForm1.InitDirs;
begin
 CreateDir(DRoot+DATA_DIR);
 CreateDir(DRoot+TABLES_DIR);
 CreateDir(DRoot+GEN_DIR);
 CreateDir(DRoot+QNGEN_DIR);
 CreateDir(DRoot+BAG_GUIDS_DIR);
 CreateDir(DRoot+CALC_CONST_DIR);
 CreateDir(DRoot+TABLES_DESC_DIR);
 CreateDir(DRoot+CALC_CONST_DESC_DIR);
end;

procedure TForm1.TCPServerExecute(AContext: TIdContext);
var
 strText,k,v,rgt,nam,dsc: String;
 L,i:Integer;
 dogen:Boolean;
begin
 strText:=AContext.Connection.Socket.ReadLn(IndyTextEncoding(IdTextEncodingType.encUTF8));
 strText:=strText+AContext.Connection.Socket.ReadLn(IndyTextEncoding(IdTextEncodingType.encUTF8));
 strText:=strText+AContext.Connection.Socket.ReadLn(IndyTextEncoding(IdTextEncodingType.encUTF8));
 strText:=strText+AContext.Connection.Socket.ReadLn(IndyTextEncoding(IdTextEncodingType.encUTF8));
 strText:=strText+AContext.Connection.Socket.ReadLn(IndyTextEncoding(IdTextEncodingType.encUTF8));
 ParseRData(strText,k,v);
 if k='connect' then
  begin
   TSRCConnected:=True;
   TSRCGUID:=v;
   TSShowMsg('Генератор подключён. GUID дощечки удалённого управления: '+TSRCGUID);
   TSExecLua('_G.GeneratorConnected = true');
   Label12.Text:='GUID дощечки: '+TSRCGUID;
  end
 else if TSRCConnected then
  begin
   if k='qual' then
    begin
     TSRCQuality:=v;
     TSShowMsg('Выбрано качество: '+TSRCQuality);
    end;
   if k='armt' then
    begin
     TSRCArmorType:=v;
     TSShowMsg('Выбран тип брони: '+TSRCArmorType);
    end;
   if k='itmt' then
    begin
     TSRCItemType:=v;
     TSShowMsg('Выбран тип предмета: '+TSRCItemType);
    end;
   if k='newitem' then
    begin
     dogen:=False;
     rgt:=TSRCItemType+' '+TSRCQuality+' '+TSRCArmorType;
     if GetGTByName(rgt)=-1 then
      begin
       TSShowMsg('Шаблон генерации '+#39#39+rgt+#39#39+' не существует.');
       rgt:=TSRCItemType+' '+TSRCQuality;
       if GetGTByName(rgt)=-1 then
        begin
         TSShowMsg('Шаблон генерации '+#39#39+rgt+#39#39+' не существует.');
         TSShowMsg('Генерация невозможна.');
        end
       else dogen:=True;
      end
     else dogen:=True;
     if dogen then
      begin
       TSShowMsg('Генерация по шаблону '+#39#39+rgt+#39#39+':');
       ComboBox2.ItemIndex:=GetGTByName(rgt);
       NewRandomItem;
       nam:='['+QC[LastQuality]+']'+RIName.Text+'[-]';
       dsc:='[ffffff]'+RIStats.Text+'[-]';
       if Length(RIDesc1.Text)>0 then
        dsc:=dsc+LuaSN+LuaSN+'['+DG+']'+RIDesc1.Text+'[-]';
       if Length(RIDesc2.Text)>0 then
        dsc:=dsc+LuaSN+LuaSN+'['+DY+']'+RIDesc2.Text+'[-]';
       L:=Length(dsc);
       i:=0;
       repeat
        i:=i+1;
        if (dsc[i]=#13) and (dsc[i+1]=#10) then
         begin
          Delete(dsc,i,2);
          Insert(LuaSN,dsc,i);
          i:=i+Length(LuaSN)-1;
          L:=Length(dsc);
         end;
       until i>=L;
       TSShowMsg(nam+LuaSN+dsc);
      end;
    end;
   if k='spawnitem' then
    begin
     SpawnTS(True);
    end;
  end;
end;

procedure TForm1.TSExecLua(LuaCode:string);
begin
 try
  TCPClient.Connect;
  TCPClient.SendCmd('{ "messageID": 3, "guid":"-1", "script":"'+EscapeQuotes(LuaCode)+'" }',-1,IndyTextEncoding(IdTextEncodingType.encUTF8));
  TCPClient.Disconnect;
 except

 end;
end;

procedure TForm1.TSShowMsg(Msg:string);
begin
 TSExecLua('print("'+Msg+'")');
end;

procedure TForm1.SpawnTS(RC:Boolean=False);
var
 nam,dsc,gd:String;
 i,L:Integer;
begin
 nam:='['+QC[LastQuality]+']'+RIName.Text+'[-]';
 dsc:='[ffffff]'+RIStats.Text+'[-]';
 if Length(RIDesc1.Text)>0 then
  dsc:=dsc+LuaSN+LuaSN+'['+DG+']'+RIDesc1.Text+'[-]';
 if Length(RIDesc2.Text)>0 then
  dsc:=dsc+LuaSN+LuaSN+'['+DY+']'+RIDesc2.Text+'[-]';
 L:=Length(dsc);
 i:=0;
 repeat
  i:=i+1;
  if (dsc[i]=#13) and (dsc[i+1]=#10) then
   begin
    Delete(dsc,i,2);
    Insert(LuaSN,dsc,i);
    i:=i+Length(LuaSN)-1;
    L:=Length(dsc);
   end;
 until i>=L;
 if RC then
  TSExecLua('local gnam = "'+LastGTName+'"'+SN+'local rbag = getObjectFromGUID("'+LastGUID+'")'+SN+'local ilist = rbag.getObjects()'+SN+'local count = 0'+SN+'local ids = {}'+SN+'local idscount = 0'+SN+'for loh,sooqa in pairs(ilist) do'+SN+' if sooqa["name"] == gnam then'+SN+'  idscount = idscount + 1'+SN+'  ids[idscount] = sooqa["index"]'+SN+' end'+SN+' count = count + 1'+SN+'end'+SN+'local cin = math.random(1,idscount)'+SN+'takeParams = { position = {x=0, y=3, z=5}, callback_function = function(obj) take_callback(obj) end, index = ids[cin], }'+SN+'rbag.takeObject(takeParams)'+SN+SN+'function take_callback(object_spawned)'+SN+'    local nwo = object_spawned.clone()'+SN+'    rbag.putObject(object_spawned)'+SN+'    nwo.setName("'+nam+'")'+SN+'    nwo.setDescription("'+dsc+'")'+SN+'    local nipos = getObjectFromGUID("'+TSRCGUID+'").getPosition()'+SN+'    nipos.y = nipos.y + 2'+SN+'    nipos.z = nipos.z + 5'+SN+'    nwo.setPosition(nipos)'+SN+'    nwo.setRotation({0,0,0})'+SN+'end')
 else
  TSExecLua('local gnam = "'+LastGTName+'"'+SN+'local rbag = getObjectFromGUID("'+LastGUID+'")'+SN+'local ilist = rbag.getObjects()'+SN+'local count = 0'+SN+'local ids = {}'+SN+'local idscount = 0'+SN+'for loh,sooqa in pairs(ilist) do'+SN+' if sooqa["name"] == gnam then'+SN+'  idscount = idscount + 1'+SN+'  ids[idscount] = sooqa["index"]'+SN+' end'+SN+' count = count + 1'+SN+'end'+SN+'local cin = math.random(1,idscount)'+SN+'takeParams = { position = {x=0, y=3, z=5}, callback_function = function(obj) take_callback(obj) end, index = ids[cin], }'+SN+'rbag.takeObject(takeParams)'+SN+SN+'function take_callback(object_spawned)'+SN+'    local nwo = object_spawned.clone()'+SN+'    rbag.putObject(object_spawned)'+SN+'    nwo.setName("'+nam+'")'+SN+'    nwo.setDescription("'+dsc+'")'+SN+'end');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
 Blur:DWM_BLURBEHIND;
 Mrg:TMargins;
 blmdummy:TStringList;
begin
 FormatSettings.DecimalSeparator:='.';
 Application.Title:='D&D:IG';
 if DwmCompositionEnabled then
  begin
   DwmEnableComposition(DWM_EC_ENABLECOMPOSITION);
   Blur.dwFlags:=DWM_BB_ENABLE+DWM_BB_BLURREGION+DWM_BB_TRANSITIONONMAXIMIZED;
   Blur.fEnable:=true;
   Blur.fTransitionOnMaximized:=false;
   Blur.hRgnBlur:=0;
   DwmEnableBlurBehindWindow(WindowHandleToPlatform(Form1.Handle).Wnd, Blur);
   Mrg.cxLeftWidth:=-1;
   Mrg.cxRightWidth:=-1;
   Mrg.cyTopHeight:=-1;
   Mrg.cyBottomHeight:=-1;
   DwmExtendFrameIntoClientArea(WindowHandleToPlatform(Form1.Handle).Wnd,Mrg);
  end;
 DRoot:=ExtractFilePath(ParamStr(0));
 InitDirs;
 LoadTables;
 LoadGTs;
 LoadQNGTs;
 LoadBGs;
 LoadCCs;
 if TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService) then
  Clipboard:=IFMXClipboardService(TPlatformServices.Current.GetPlatformService(IFMXClipboardService));

 if not FileExists(DRoot+DATA_DIR+'BlackLivesMatter') then
  begin
   BLMText.Text:=BLMText.Text+#13#10#13#10+'#BlackLivesMatter';
   BlackLivesMatter.Visible:=True;
   BLMTimer.Enabled:=True;
   blmdummy:=TStringList.Create;
   blmdummy.SaveToFile(DRoot+DATA_DIR+'BlackLivesMatter');
   FreeAndNil(blmdummy);
  end;
end;

procedure TForm1.FormPaint(Sender: TObject; Canvas: TCanvas;
  const [Ref] ARect: TRectF);
begin
 TabControl1.Repaint;
end;

procedure GetTemplates(nm:String;var IDs:TIDs);
var
 i,L:Integer;
begin
 L:=Length(GTs);
 SetLength(IDs,0);
 if L>0 then
  for i := 0 to L-1 do
   if Copy(GTs[i].Name,1,Length(GTs[i].Name)-3)=nm then
    begin
     SetLength(IDs,Length(IDs)+1);
     IDs[Length(IDs)-1]:=i;
    end;
end;

procedure TForm1.GDMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,Ls,n,i:Integer;
 srch:String;
 IDs:TIDs;
begin
 n:=ListBox1.ItemIndex;
 L:=ListBox1.Items.Count;
 if (L>0) and (n>-1) and (n<L) then
  begin
   srch:=ListBox1.Items.Strings[n];
   GetTemplates(srch,IDs);
   Ls:=Length(IDs);
   if Ls>0 then
    if ShowCnf('Удалить шаблон "'+srch+'"?','Ты действительно хочешь удалить шаблон "'+srch+'", а не просто случайно нажал?') then
     begin
      for i := Ls-1 downto 0 do
       DelGT(IDs[i]);
      ListBox1.Items.Delete(n);
      ComboBox2.Items.Delete(n);
      GTClear;
     end;
  end;
end;

procedure TForm1.GLBClick(Sender: TObject);
begin
 GL.Visible:=False;
 Protector.Visible:=False;
 Blur.Enabled:=False;
end;

procedure TForm1.GLDMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 n:=ListBox3.ItemIndex;
 L:=ListBox3.Items.Count;
 if (L>0) and (n>-1) and (n<L) then
  begin
   GL.Enabled:=False;
   if ShowCnf('Удалить GUID "'+BGs[n].Name+'"?','Ты действительно хочешь удалить GUID "'+BGs[n].Name+'", а не просто случайно нажал?') then
    if DelBG(n) then
     begin
      ListBox3.Items.Delete(n);
      GUIDListChoose.Items.Delete(n);
     end;
   GL.Enabled:=True;
  end;
end;

procedure TForm1.GLNMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 n:String;
 nit:TListBoxItem;
 allgood:Boolean;
 ln:Integer;
begin
 allgood:=False;
 repeat
  GL.Enabled:=False;
  n:=ShowQu('Новый GUID','Введите название'+#13+'Оно не должно совпадать с уже существующими!','Хочу такое');
  GL.Enabled:=True;
  if Quc then Exit;
  if Trim(n)='' then
   ShowNtf('Шо это такое?','Название не введено!','Извините, сейчас напишу')
  else if GUIDNameExists(n) then
   ShowNtf('Шо это такое?','Таблица с таким названием уже есть!','Извините, сейчас напишу другое')
  else if StrContainBannedChars(n) then
   ShowNtf('Шо это такое?','Название содержит запрещённые символы!'+#13#13+BANNED_CHARS_STR,'Извините, сейчас напишу другое')
  else
   allgood:=True;
 until allgood or Closing;
 if Closing then Exit;
 ln:=ListBox3.Items.Add(n);
 GUIDListChoose.Items.Add(n);
 nit:=ListBox3.ItemByIndex(ln);
 nit.StyleLookup:='listboxitemrightdetail';
 nit.ItemData.Detail:='000000';
 SaveBG(NewBG(n));
end;

procedure TForm1.GNMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 n:String;
 allgood:Boolean;
begin
 allgood:=False;
 repeat
  n:=ShowQu('Новый шаблон','Введите название'+#13+'Оно не должно совпадать с уже существующими!','Хочу такое');
  if Quc then Exit;
  if Trim(n)='' then
   ShowNtf('Шо это такое?','Название не введено!','Извините, сейчас напишу')
  else if GTNameExists(n) then
   ShowNtf('Шо это такое?','Шаблон с таким названием уже есть!','Извините, сейчас напишу другое')
  else if StrContainBannedChars(n) then
   ShowNtf('Шо это такое?','Название содержит запрещённые символы!'+#13#13+BANNED_CHARS_STR,'Извините, сейчас напишу другое')
  else
   allgood:=True;
 until allgood or Closing;
 if Closing then Exit;
 ListBox1.Items.Add(n);
 ComboBox2.Items.Add(n);
 SaveGT(NewGT(n,False));
end;

procedure TForm1.GTSavBClick(Sender: TObject);
begin
 UpdateGT;
end;

procedure TForm1.GUIDListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 ShowGL;
end;

procedure TForm1.ListBox1Change(Sender: TObject);
var
 gtn:Integer;
begin
 if ListBox1.ItemIndex<>-1 then
  begin
   gtn:=GetGTByName(ListBox1.Items.Strings[ListBox1.ItemIndex]+' '+ComboBox1.Items.Strings[ComboBox1.ItemIndex]);
   if gtn=-1 then
    begin
     gtn:=NewGT(ListBox1.Items.Strings[ListBox1.ItemIndex]+' '+ComboBox1.Items.Strings[ComboBox1.ItemIndex]);
     GTs[gtn].Quality:=ComboBox1.ItemIndex;
    end;
    GLGT(gtn);
  end;
end;

procedure TForm1.ListBox2Change(Sender: TObject);
begin
 if ListBox2.ItemIndex<>-1 then GLQNGT(ListBox2.ItemIndex);
end;

procedure TForm1.ListBox3DblClick(Sender: TObject);
var
 n:String;
 nit:TListBoxItem;
 allgood:Boolean;
 nn:Integer;
begin
 nn:=ListBox3.ItemIndex;
 if nn>-1 then
  begin
   allgood:=False;
   repeat
    GL.Enabled:=False;
    n:=ShowQu('Указать GUID','Введите GUID','Готово',BGs[nn].GUID);
    GL.Enabled:=True;
    if Quc then Exit;
    if Trim(n)='' then
     ShowNtf('Шо это такое?','Ничего не введено!','Извините, сейчас напишу')
    else
     allgood:=True;
   until allgood or Closing;
   if Closing then Exit;
   nit:=ListBox3.ItemByIndex(nn);
   nit.ItemData.Detail:=n;
   BGs[nn].GUID:=n;
   SaveBG(nn);
  end;
end;

procedure TForm1.ListBox4DblClick(Sender: TObject);
var
 n:String;
 nit:TListBoxItem;
 allgood:Boolean;
 nn:Integer;
begin
 nn:=ListBox4.ItemIndex;
 if nn>-1 then
  begin
   allgood:=False;
   repeat
    CC.Enabled:=False;
    n:=ShowQu('Указать значение константы','Введите значение константы','Готово',CCs[nn].Value);
    CC.Enabled:=True;
    if Quc then Exit;
    if Trim(n)='' then
     ShowNtf('Шо это такое?','Ничего не введено!','Извините, сейчас напишу')
    else
     allgood:=True;
   until allgood or Closing;
   if Closing then Exit;
   nit:=ListBox4.ItemByIndex(nn);
   CCs[nn].Value:=n;
   nit.ItemData.Detail:=CCs[nn].Value;
   SaveCC(nn);
  end;
end;

procedure TForm1.ListBox4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 if Button=TMouseButton.mbRight then
  begin
   if ListBox4.ItemIndex>-1 then
    begin
     if FileExists(DRoot+CALC_CONST_DESC_DIR+CCs[ListBox4.ItemIndex].Name) then
      Form2.Memo1.Lines.LoadFromFile(DRoot+CALC_CONST_DESC_DIR+CCs[ListBox4.ItemIndex].Name)
     else
      Form2.Memo1.Lines.Clear;
     Form2.ShowModal;
     Form2.Memo1.Lines.SaveToFile(DRoot+CALC_CONST_DESC_DIR+CCs[ListBox4.ItemIndex].Name);
    end;
  end;
end;

procedure TForm1.ListView1DblClick(Sender: TObject);
begin
 if ListView1.ItemIndex<>-1 then
  begin
   ListView1.Visible:=False;
   BtnCnclTable.Visible:=True;
   BtnSaveTable.Visible:=True;
   BtnNewTable.Visible:=False;
   BtnDelTable.Visible:=False;
   CurrentTable:=GetTableByName((ListView1.Selected as TListViewItem).Text);
   Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
   Memo1.SetFocus;
  end;
end;

procedure TForm1.ListView1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 if Button=TMouseButton.mbRight then
  begin
   if ListView1.ItemIndex>-1 then
    begin
     Form2.Memo1.Text:=(ListView1.Items.Item[ListView1.ItemIndex] as TListViewItem).Data['Description'].ToString;
     Form2.ShowModal;
     (ListView1.Items.Item[ListView1.ItemIndex] as TListViewItem).Data['Description']:=Form2.Memo1.Text;
     SaveTable(ListView1.ItemIndex);
    end;
  end;
end;

procedure TForm1.ListItemMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 ShowMsg('sooqa','bitch');
end;

procedure TForm1.Memo1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 L:=Length(Memo1.SelText);
 if (L>0) and DBC then
 if (Memo1.Text[Memo1.SelStart] in ['%','[','$','^']) and
    (Memo1.Text[Memo1.SelStart+L+1] in ['%',']','+','-','*',',']) then
  begin
   n:=GetTableByName(Memo1.SelText);
   if n<>-1 then
    begin
     Tables[CurrentTable].Content.Text:=Memo1.Text;
     SaveTable(CurrentTable);
     CurrentTable:=n;
     Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
    end;
  end;
 DBC:=False;
end;

procedure TForm1.Memo2DblClick(Sender: TObject);
begin
 DBC:=True;
end;

procedure TForm1.Memo2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
 allgood:Boolean;
 nn:String;
 nit:TListBoxItem;
begin
 L:=Length(Memo2.SelText);
 if (L>0) and DBC then
 if (Memo2.Text[Memo2.SelStart] in ['%','[','$','^']) and
    (Memo2.Text[Memo2.SelStart+L+1] in ['%',']','+','-','*',',']) then
  begin
   n:=GetTableByName(Memo2.SelText);
   if n>-1 then
    begin
     TabControl1.TabIndex:=0;
     ListView1.Visible:=False;
     BtnCnclTable.Visible:=True;
     BtnSaveTable.Visible:=True;
     BtnNewTable.Visible:=False;
     BtnDelTable.Visible:=False;
     CurrentTable:=n;
     Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
     Memo1.SetFocus;
    end;
  end
 else if (Memo2.Text[Memo2.SelStart] in ['<','+','-','*','/','!',',']) and
    (Memo2.Text[Memo2.SelStart+L+1] in ['>','+','-','*','/','!',',']) then
  begin
   n:=GetCCByName(Memo2.SelText);
   if n>-1 then
    begin
     allgood:=False;
     repeat
      nn:=ShowQu('Указать значение константы','Введите значение константы','Готово',CCs[n].Value);
      if Quc then Exit;
      if Trim(nn)='' then
       ShowNtf('Шо это такое?','Ничего не введено!','Извините, сейчас напишу')
      else
       allgood:=True;
     until allgood or Closing;
     if Closing then Exit;
     nit:=ListBox4.ItemByIndex(n);
     CCs[n].Value:=nn;
     nit.ItemData.Detail:=CCs[n].Value;
     SaveCC(n);
    end;
  end;
 DBC:=False;
end;

procedure TForm1.Memo3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 L:=Length(Memo3.SelText);
 if (L>0) and DBC then
 if (Memo3.Text[Memo3.SelStart] in ['%','[','$','^']) and
    (Memo3.Text[Memo3.SelStart+L+1] in ['%',']','+','-','*',',']) then
  begin
   n:=GetTableByName(Memo3.SelText);
   if n>-1 then
    begin
     TabControl1.TabIndex:=0;
     ListView1.Visible:=False;
     BtnCnclTable.Visible:=True;
     BtnSaveTable.Visible:=True;
     BtnNewTable.Visible:=False;
     BtnDelTable.Visible:=False;
     CurrentTable:=n;
     Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
     Memo1.SetFocus;
    end;
  end;
 DBC:=False;
end;

procedure TForm1.Memo4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 L:=Length(Memo4.SelText);
 if (L>0) and DBC then
 if (Memo4.Text[Memo4.SelStart] in ['%','[','$','^']) and
    (Memo4.Text[Memo4.SelStart+L+1] in ['%',']','+','-','*',',']) then
  begin
   n:=GetTableByName(Memo4.SelText);
   if n>-1 then
    begin
     TabControl1.TabIndex:=0;
     ListView1.Visible:=False;
     BtnCnclTable.Visible:=True;
     BtnSaveTable.Visible:=True;
     BtnNewTable.Visible:=False;
     BtnDelTable.Visible:=False;
     CurrentTable:=n;
     Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
     Memo1.SetFocus;
    end;
  end;
 DBC:=False;
end;

procedure TForm1.Memo5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
var
 L,n:Integer;
begin
 L:=Length(Memo5.SelText);
 if (L>0) and DBC then
 if (Memo5.Text[Memo5.SelStart] in ['%','[','$','^']) and
    (Memo5.Text[Memo5.SelStart+L+1] in ['%',']','+','-','*',',']) then
  begin
   n:=GetTableByName(Memo5.SelText);
   if n>-1 then
    begin
     TabControl1.TabIndex:=0;
     ListView1.Visible:=False;
     BtnCnclTable.Visible:=True;
     BtnSaveTable.Visible:=True;
     BtnNewTable.Visible:=False;
     BtnDelTable.Visible:=False;
     CurrentTable:=n;
     Memo1.Lines.Text:=Tables[CurrentTable].Content.Text;
     Memo1.SetFocus;
    end;
  end;
 DBC:=False;
end;

procedure TForm1.NtfBtnClick(Sender: TObject);
begin
 Ntf.Visible:=False;
 if not Qu.Visible then
  begin
   Protector.Visible:=False;
   Blur.Enabled:=False;
  end;
end;

procedure TForm1.QuBtnClick(Sender: TObject);
begin
 Quh1:=False;
 Quc:=False;
end;

procedure TForm1.QuCnclBtnClick(Sender: TObject);
begin
 Quh1:=False;
 Quc:=True;
end;

procedure OpenURL(url:String);
begin
 ShellExecute(FMX.Platform.Win.ApplicationHWND,'open',PWideChar(url),nil,nil,SW_SHOWNORMAL);
end;

procedure TForm1.Rectangle1Click(Sender: TObject);
begin
 OpenURL('http://somepony.space/');
end;

procedure TForm1.Rectangle2Click(Sender: TObject);
begin
 OpenURL('https://youtube.com/somepony');
end;

procedure TForm1.Rectangle3Click(Sender: TObject);
begin
 OpenURL('https://vk.com/id200836581');
end;

procedure TForm1.Rectangle4Click(Sender: TObject);
begin
 OpenURL('https://vk.com/id58499569');
end;

procedure TForm1.Rectangle5Click(Sender: TObject);
begin
 OpenURL('https://discord.gg/QRR6vsa');
end;

end.
