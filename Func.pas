unit Func;

interface

function ResultadoSQL(mSQL: String; mTipo: String = 'CONSULTAR'): String;

implementation

uses S_DM1,
     Windows , SysUtils, Printers, Dialogs, DB, Forms, DBGrids, Variants, Controls, ShellApi, TypInfo, Classes,
     Graphics, FireDAC.Comp.Client, System.UITypes, DBClient, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls, Winapi.Messages, MidasLib,
     Vcl.FileCtrl, XMLDoc, XMLIntf, xmldom, frxClass, FireDAC.Stan.Param, DateUtils, StrUtils, WinSpool, UrlMon, FireDAC.Stan.Intf;

function ResultadoSQL(mSQL: String; mTipo: String = 'CONSULTAR'): String;
var
   mFDQry1: TFDQuery;

begin
   mFDQry1 := TFDQuery.Create(DM1);
   mFDQry1.Connection := DM1.BD;

   mFDQry1.Close;
   mFDQry1.SQL.Clear;
   mFDQry1.SQL.Add(mSQL);

   if mtipo = 'CONSULTAR' then
   begin
      mFDQry1.Open;

      if mFDQry1.Fields[0].Value = null then
      begin
         result := '0';
      end
      else
      begin
         result := mFDQry1.Fields[0].AsString;
      end;
   end
   else if mTipo = 'EXECUTAR' then
   begin
      DM1.BD.StartTransaction;
      mFDQry1.ExecSQL;
      DM1.BD.Commit;
   end;

   FreeAndNil(mFDQry1);
end;

end.
