; Don't forget to save the file as UTF-8 with BOM

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;moricons.dll 
;, 25, 1  C:\Users\jijs\AppData\Roaming
;EnvGet, upr, userprofile  
myicon = %A_AppData%\Microsoft\Windows\Start Menu\Programs\Startup\startahk\bunting.ico 
Menu, Tray, Icon , %myicon% ;, 25, 1 
TrayTip, AutoHotKey, Started, 1 
SoundPlay, %A_ScriptDir%\startahk\moz.wav   
;SoundBeep, 3000, 800
Return

!i::Send {:}
!k::Send {{}
!ö::Send {;}
!j::Send {}}
!l::Send {=}
!u::Send {-}
!o::Send {+}
!a::Send {@}
!s::Send {*}
!d::Send {$}
!f::Send {'}
!w::Send {[}
!e::Send {]}
!x::Send {[}
!c::Send {]}
!h::Send {asc 0037}
!q::Send {?}
!n::Send {/}
!m::Send {\}
!y::Send {`}
!v::Send {´}
!g::Send {&}
!ä::Send {!}
!t::Send {*}
!z::Send {asc 0037}
!^o::Send ^{TAB}
!+o::Send ^+{TAB}

; SHIFT + ALT Keypress Implied for all below

!+h::Send +^{LEFT}     ; h SHIFT + CTRL + LEFT (Highlight per word)
!+l::Send +^{RIGHT}    ; l SHIFT + CTRL + RIGHT    (Hightlight per word)

!+k::Send +{UP}   ; i SHIFT + ALT + UP    (Multiply cursor up)
!+j::Send +{DOWN} ; k SHIFT + ALT + DOWN  (Multiply cursor down)

~RButton & ~MButton::send {Browser_Back}
~MButton & ~RButton::send {Browser_Forward}
~LButton & ~MButton::send ^w

::symlink::new-item -itemtype symboliclink -path "pointer" -target "target.file"
Return

::dlss:: 
Run, C:\Users\jijs\Downloads 
return

::userss::
Run, %userprofile%
return

::ahkss::
Run, notepad "C:\startapps\startatk.ahk"
return

::rahk::
Reload
Return

::gglss::
Run, "https://www.google.com/search?q="
return

::openc::
Run, "C:\"
return

::timenowss::
FormatTime, CurrentDateTime, , dddd.dd.MM.yyyy h:mm tt
SendInput %CurrentDateTime%
Return

::wallpps::
Gui, -Caption
Gui, Add, Picture, X0 Y0, .\wallp.jpg
Gui, Show, x0 y0 w3440 h%A_ScreenHeight%
Return
guiend:
gui, destroy
Return

:*:examplez1:: ; snippet for setting an array to the sheet
{
    InputBox, arrayName,Array GAS Snippet, Array name?,,,,0,300
    clipboard =
        (
        ss.getRange(row+3, 1,%arrayName%.length, %arrayName%[0].length).setValues(%arrayName%);
        )
    send ^v
    return
}

:*:examplez2:: ; snippet that sends the spreadsheet app thingies
{
clipboard =
(
var sh = SpreadsheetApp.getActiveSpreadsheet();`r`nvar ss = sh.getSheetByName("
)
send ^v
sleep, 2000

KeyWait Control, D
clipboard =
(
");`r`nvar data = ss.getDataRange().getValues();
)
send ^v
sleep, 4000

KeyWait Control, K
Clipboard =
(
something`r`nsomething
)
send ^v
return
}

::examplez3::
msgbox, 1, this is a title, are you seeing these?
return

::examplez4::
Run % """E:\start\ahk\guiApp.ahk"""
return

~ü::
SetTimer, DelNCtrl, -400
KeyWait, Ctrl, T.2
IF !ErrorLevel
	NCtrl++
IF NCtrl = 4
;msgBox, you pressed 4 üs in less than a fifth of a second.
;DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
SoundPlay, mozart.wav
Return
DelNCtrl:
NCtrl =
Return

AppsKey::ToolTip Press < or > to cycle through windows.`rsomethinghere 
AppsKey Up::ToolTip
~AppsKey & <::Send !+{Esc}
~AppsKey & >::Send !{Esc}

; https://mixkit.co/free-sound-effects/sci-fi/ (construction.wav)
;https://upload.wikimedia.org/wikipedia/commons/a/ae/Mozart%2C_from_Piano_Sonata_K310%2C_first_movement.wav