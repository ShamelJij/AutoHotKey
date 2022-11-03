; Don't forget to save the file as UTF-8 with BOM

Menu, Tray, Icon , Shell32.dll, 25, 1
TrayTip, AutoHotKey, Started, 1
SoundBeep, 3000, 800
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
!g::Send {%}
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
Run, %userprofile%\downloads
return

::usrss::
Run, %userprofile%
return

::ahkss::
Run, neovide "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
return

::gglss::
Run, "https://www.google.com/search?q="
return

::openc::
Run, "C:\"
return

::rahk::
Reload
Return

::timenow::
FormatTime, CurrentDateTime, , M/d/dddd/yyyy h:mm tt
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


