{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit mungo.intf.textfile.main;

{$warn 5023 off : no warning about unused units}
interface

uses
  mungo.intf.textfile, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('mungo.intf.textfile', @Register);
end.
