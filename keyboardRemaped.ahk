Menu, Tray, Icon , Shell32.dll, 25, 1
TrayTip, AutoHotKey, Started, 1
SoundBeep, 3000, 200
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
!g::Send {"}
!ä::Send {!}
!t::Send {*}
!z::Send {asc 0037}
!^o::Send ^{TAB}    
!+o::Send ^+{TAB}   
:*:downloadss::C:\Users\IT_Admin\Downloads
~RButton & ~MButton::send {Browser_Back}
~MButton & ~RButton::send {Browser_Forward}
~LButton & ~MButton::send ^w

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
