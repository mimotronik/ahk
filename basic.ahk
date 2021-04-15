#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetCapsLockState,AlwaysOff

;;; vim and emacs

capslock & h::
send {Left}
return

capslock & j::
send {Down}
return

capslock & k::
send {Up}
return

capslock & l::
send {Right}
return

capslock & a::
send {Home}
return

capslock & e::
send {End}
return

capslock & [::
send {Esc}
return

capslock & c::
send ^{Insert}
return

capslock & v::
send +{Insert}
return

capslock & -::
WinMinimize,A
return

capslock & +::
WinMaximize,A
return

capslock & w::
WinMinimize,A
return

capslock & q::
WinClose,A
return