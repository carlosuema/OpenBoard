; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E63D17F8-D9DA-479D-B9B5-0D101A03703B}
AppName=OpenBoard
AppVerName=OpenBoard 1.0
AppPublisher=Open Education Foundation

AppPublisherURL=http://get.openboard.org
AppSupportURL=http://www.openboard.org
AppUpdatesURL=http://get.openboard.org

DefaultDirName={pf}\OpenBoard
DefaultGroupName=OpenBoard

OutputDir=.\install\win32\
OutputBaseFilename=OpenBoard
SetupIconFile=.\resources\win\OpenBoard.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "gr"; MessagesFile: "compiler:Languages\German.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "sp"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]

Type: files ; Name: "{app}\OpenBoard.pdb"
Type: filesandordirs ; Name: "{app}\library"
Type: filesandordirs ; Name: "{app}\Microsoft.VC90.CRT"
Type: filesandordirs ; Name: "{app}\plugins"
Type: filesandordirs ; Name: "{app}\i18n"
Type: files ; Name: "{app}\*.dll"

[Files]
Source: "..\Sankore-ThirdParty\microsoft\vcredist_x86.exe"; DestDir:"{tmp}"
Source: "build\win32\release\product\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;OpenSSL
Source: "..\Sankore-ThirdParty\openssl\win32\libeay32.dll"; DestDir:"{app}"; Flags: ignoreversion
Source: "..\Sankore-ThirdParty\openssl\win32\ssleay32.dll"; DestDir:"{app}"; Flags: ignoreversion

;Qt base dll
Source: "..\Qt-4.8\lib\QtScript4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtXml4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtWebKit4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\phonon4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtNetwork4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtSvg4.dll"; DestDir: "{app}"; Flags: ignoreversion

;Qt plugins
Source: "..\Qt-4.8\plugins\accessible\qtaccessiblecompatwidgets4.dll"; DestDir: "{app}\accessible"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\accessible\qtaccessiblewidgets4.dll"; DestDir: "{app}\accessible"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\bearer\qgenericbearer4.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\bearer\qnativewifibearer4.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qcncodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qjpcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qkrcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qtwcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\graphicssystems\qglgraphicssystem4.dll"; DestDir: "{app}\graphicssystems"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\graphicssystems\qtracegraphicssystem4.dll"; DestDir: "{app}\graphicssystems"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\iconengines\qsvgicon4.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qgif4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qico4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qjpeg4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qmng4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qsvg4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qtiff4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\phonon_backend\phonon_ds94.dll"; DestDir: "{app}\phonon_backend"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

;qt multimedia plugins
Source: "c:\OpenSankore\plugins\mediaservice\dsengine.dll"; DestDir: "c:\OpenBoard\plugins\mediaservice"; Flags: ignoreversion
Source: "c:\OpenSankore\plugins\mediaservice\dsengined.dll"; DestDir: "c:\OpenBoard\plugins\mediaservice"; Flags: ignoreversion
Source: "c:\OpenSankore\plugins\mediaservice\qtmedia_audioengine.dll"; DestDir: "c:\OpenBoard\plugins\mediaservice"; Flags: ignoreversion
Source: "c:\OpenSankore\plugins\mediaservice\qtmedia_audioengined.dll"; DestDir: "c:\OpenBoard\plugins\mediaservice"; Flags: ignoreversion

Source: "c:\OpenSankore\plugins\playlistformats\qtmultimediakit_m3u.dll"; DestDir: "c:\OpenBoard\plugins\playlistformats"; Flags: ignoreversion
Source: "c:\OpenSankore\plugins\playlistformats\qtmultimediakit_m3ud.dll"; DestDir: "c:\OpenBoard\plugins\playlistformats"; Flags: ignoreversion

;OpenBoardImporter
Source: "..\OpenSankoreToOpenBoard\release\OpenBoardImporter.exe"; DestDir: "c:\OpenBoard\Importer"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtGui4.dll"; DestDir: "c:\OpenBoard\Importer"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtCore4.dll"; DestDir: "c:\OpenBoard\Importer"; Flags: ignoreversion

;fonts for xpdf
Source: "resources\windows\xpdfrc"; DestDir: "{app}"; Flags: ignoreversion
Source: "resources\fonts\*"; DestDir: "{app}\fonts"; Flags: ignoreversion

[Icons]
Name: "{group}\OpenBoard"; Filename: "{app}\OpenBoard.exe"
Name: "{group}\{cm:UninstallProgram,OpenBoard}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\OpenBoard"; Filename: "{app}\OpenBoard.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\OpenBoard"; Filename: "{app}\OpenBoard.exe"; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: ".ubz"; ValueType: string; ValueName: ""; ValueData: "OpenBoardFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "OpenBoardFile"; ValueType: string; ValueName: ""; ValueData: "OpenBoard document"; Flags: uninsdeletekey
Root: HKCR; Subkey: "OpenBoardFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\OpenBoard.exe,1"
Root: HKCR; Subkey: "OpenBoardFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\OpenBoard.exe"" ""%1"""

Root: HKLM; Subkey: "SOFTWARE\OpenBoard"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\OpenBoard\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorNotX64

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorNotX64
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: isProcessorNotX64

Root: HKLM64; Subkey: "SOFTWARE\OpenBoard"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\OpenBoard"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\OpenBoard\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: isProcessorX64

Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "OpenBoard.exe"; Flags: uninsdeletevalue; Check: isProcessorX64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: isProcessorX64

[Run]
Filename: "{tmp}\vcredist_x86.exe";WorkingDir:"{tmp}"; Parameters: "/q:a/c:""VCREDI~3.EXE /q:a /c:""""msiexec /i vcredist.msi /qn"""""""; StatusMsg: Installing CRT ...
Filename: "{app}\OpenBoard.exe"; Description: "{cm:LaunchProgram,OpenBoard}"; Flags: nowait postinstall skipifsilent 

[UninstallDelete]
; cleanup and delete whole installation directory
Name: {app}; Type: filesandordirs

[Code]
function isProcessorX64: Boolean;
begin
  Result := (ProcessorArchitecture = paX64);
end;

function isProcessorNotX64: Boolean;
begin
	Result := not isProcessorX64;
end;
