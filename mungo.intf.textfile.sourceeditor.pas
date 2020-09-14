unit mungo.intf.textfile.sourceeditor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LazFileUtils,
  mungo.intf.editor, mungo.intf.filepointer;

type
  TSourceEditorIntf = class abstract ( TEditorFile )
    protected
      procedure FileChange(Sender: TObject); virtual; abstract;
      procedure ActionFileSave(Sender: TObject); virtual; abstract;
      procedure OnUpdateTimer(Sender: TObject); virtual; abstract;

    public
      procedure UpdateSyntaxTree; virtual; abstract;
      procedure JumpTo( ACursor: TPoint ); virtual; abstract;

      class function FileMatch(AFileInfo: TFilePointer): Boolean; override;
  end;

implementation

class function TSourceEditorIntf.FileMatch(AFileInfo: TFilePointer): Boolean;
begin
  Result:= FileIsText( AFileInfo.FileName );
end;


end.

