{
  Всякие полезные функции. (Версия для FireMonkey)
  Somepony.
}
unit SomeponyUtils_FMX;

interface
uses SysUtils, Windows, Classes, FMX.Forms, FMX.Platform.Win;

function MyTimeToStr(D:TDateTime;Msec:Boolean=False):String;
procedure ShowMsg(title,msg:String;extended:Cardinal=MB_OK or MB_ICONINFORMATION);
function Exec(Path,Args:String;Priority:DWORD=NORMAL_PRIORITY_CLASS):Boolean;
procedure WriteStrToFile(Str:String;var fl:TFileStream;WritePreLength:Boolean=False);
function ReadStrFromFile(var fl:TFileStream;LNG:Word;PreLengthWritten:Boolean=False):String;
procedure ScanDir(StartDir:String;Mask:string;List:TStrings;ScanSubDirs:Boolean);
function RandomRange(A,B:Extended):Extended;
function RandomRangeInt(A,B:Int64):Int64;

implementation

// Обёртка над TimeToStr, позволяющая выводить милисекунды и сутки.
function MyTimeToStr(D:TDateTime;Msec:Boolean=False):String;
var
 days:Int64;
 h:Extended;
begin
 if D<1 then Result:=TimeToStr(D)
 else
  begin
   days:=Trunc(D);
   D:=D-days;
   h:=D*24;
   if h<10 then
    Result:=IntToStr(days) + ':0' + TimeToStr(D)
   else
    Result:=IntToStr(days) + ':' + TimeToStr(D);
  end;
 if Msec then
  begin
   D:=D-StrToTime(TimeToStr(D));
   D:=D*(1000 * 60 * 60 * 24);
   Result:=Result+'.'+Format('%.3d',[Round(D)]);
  end;
end;

// Удобная обёртка над MessageBox.
procedure ShowMsg(title,msg:String;extended:Cardinal=MB_OK or MB_ICONINFORMATION);
begin
 MessageBox(FMX.Platform.Win.ApplicationHWND,PChar(msg),PChar(title),extended);
end;

// Удобная обёртка над CreateProcess,
// избавляющая от ненужного почти всегда хлама.
// Возаращает True в случае успешного запуска.
function Exec(Path,Args:String;Priority:DWORD=NORMAL_PRIORITY_CLASS):Boolean;
var
 SOOQA:_STARTUPINFOW;
 NUBLYA:_PROCESS_INFORMATION;
begin
 ZeroMemory(@SOOQA,SizeOf(SOOQA));
 SOOQA.cb:=SizeOf(SOOQA);
 ZeroMemory(@NUBLYA,SizeOf(NUBLYA));
 Result:=not CreateProcess(PChar(Path),PChar(Args),nil,nil,False,0,nil,PChar(ExtractFilePath(Path)),SOOQA,NUBLYA);
 if Result then
  SetPriorityClass(NUBLYA.hProcess,Priority);
end;

// Запись строки в файл.
// Если WritePreLength - True, то перед строкой
// запишется её длина в 2 байтах.
procedure WriteStrToFile(Str:String;var fl:TFileStream;WritePreLength:Boolean=False);
var
 i,L:Word;
 ttt:TWordArray;
begin
 L:=Length(Str);
 if L>0 then
  begin
   if WritePreLength then fl.Write(L,2);
   for i:= 0 to L-1 do
    ttt[i]:=Ord(Str[i+1]);
   fl.Write(ttt,L*2);
  end
 else if WritePreLength then
  fl.Write(L,2);
end;

// Чтение строки из файла.
// LNG - длина строки.
// Если PreLengthWritten - True, то LNG игнорируется.
// Вместо этого LNG читается из файла (2 байта перед строкой)
function ReadStrFromFile(var fl:TFileStream;LNG:Word;PreLengthWritten:Boolean=False):String;
var
 ttt:TWordArray;
begin
 Result:='';
 FillChar(ttt,32768,0);
 if PreLengthWritten then fl.Read(LNG,2);
 if LNG>0 then
  begin
   fl.Read(ttt,LNG*2);
   Result:=PWideChar(@ttt);
  end;
end;

// Список файлов в указанной папке.
// Пути абсолютные.
// Если ScanSubDirs - True, то будут просканированы
// все подпапки.
procedure ScanDir(StartDir:String;Mask:string;List:TStrings;ScanSubDirs:Boolean);
var
 SearchRec:TSearchRec;
begin
 if Mask ='' then Mask:= '*.*';
 if StartDir[Length(StartDir)] <> '\' then StartDir := StartDir + '\';
 if SysUtils.FindFirst(StartDir+Mask, faAnyFile, SearchRec) = 0 then
  begin
   repeat
    Application.ProcessMessages;
    if (SearchRec.Attr and faDirectory) <> faDirectory then
     List.Add(StartDir + SearchRec.Name)
    else if (SearchRec.Name <> '..') and (SearchRec.Name <> '.') and ScanSubDirs then
     begin
      List.Add(StartDir + SearchRec.Name + '\');
      ScanDir(StartDir + SearchRec.Name + '\',Mask,List,True);
     end;
   until SysUtils.FindNext(SearchRec) <> 0;
   SysUtils.FindClose(SearchRec);
  end;
end;

function RandomRange(A,B:Extended):Extended;
begin
 Result:=Random*(B-A)+A;
end;

function RandomRangeInt(A,B:Int64):Int64;
begin
 Result:=Round(RandomRange(A,B));
end;

end.
 