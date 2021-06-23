;;; ==========================================
;;; Author  : ipcrystal
;;; Email   : mimotronik@gmail.com
;;; Desc    : Windows Expand AutoHotkey Script
;;; ==========================================
;;;    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;;;    ; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;;;    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState,AlwaysOff

;;; windows 快捷打开常用软件

capslock & f::
if WinExist("ahk_exe chrome.exe")
	WinActivate,ahk_exe chrome.exe
else
	Run,C:\Program Files\Google\Chrome\Application\chrome.exe
	return

capslock & t::
if WinExist("ahk_exe ConEmu64.exe")
	WinActivate,ahk_exe ConEmu64.exe
else
	Run,D:\cmder_mini\Cmder.exe
	return

capslock & y::
if WinExist("ahk_exe YoudaoNote.exe")
	WinActivate,ahk_exe YoudaoNote.exe
else
	Run,D:\Program Files (x86)\Youdao\YoudaoNote\YoudaoNote.exe
	return

capslock & u::
if WinExist("ahk_exe Code.exe")
	WinActivate,ahk_exe Code.exe
else
	Run,C:\Program Files\Microsoft VS Code\Code.exe
	return

;capslock & i::
;if WinExist("ahk_exe idea64.exe")
;	WinActivate,ahk_exe idea64.exe
;else
;	Run,C:\Program Files\JetBrains\IDEA\bin\idea64.exe
;	return

capslock & i::
if WinExist("ahk_exe jetbrains-toolbox.exe")
	WinActivate,ahk_exe jetbrains-toolbox.exe
else
	Run,C:\Users\winterfell\AppData\Local\JetBrains\Toolbox\bin\jetbrains-toolbox.exe
	return

capslock & o::
if WinExist("ahk_exe navicat.exe")
	WinActivate,ahk_exe navicat.exe
else
	Run,C:\Program Files\PremiumSoft\Navicat Premium 15\navicat.exe
	return

capslock & p::
if WinExist("ahk_exe Postman.exe")
	WinActivate,ahk_exe Postman.exe
else
	Run,C:\Users\winterfell\AppData\Local\Postman\Postman.exe
	return

capslock & n::
if WinExist("ahk_exe notepad++.exe")
	WinActivate,ahk_exe notepad++.exe
else
	Run,C:\Program Files\Notepad++\notepad++.exe
	return

capslock & m::
if WinExist("ahk_exe MobaXterm.exe")
	WinActivate,ahk_exe MobaXterm.exe
else
	Run,D:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe
	return

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

; windows 复制
capslock & c::
send ^{Insert}
return

; windows 粘贴
capslock & v::
send +{Insert}
return

capslock & -::
WinMinimize,A
return
; 最大化当前窗口
capslock & +::
WinMaximize,A
return
; 最小化当前窗口
capslock & w::
WinMinimize,A
return

; 关闭当前窗口
capslock & q::
WinClose,A
return

; 音量静音
capslock & F10::
Send {Volume_Mute}
return

; 音量静音
capslock & F11::
Send {Volume_Down}
return

; 音量静音
capslock & F12::
Send {Volume_UP}
return