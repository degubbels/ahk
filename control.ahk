; #NoEnv
; #Warn
; #SingleInstance, Force
; SetWorkingDir %A_ScriptDir%
; DetectHiddenWindows, On
; SetTitleMatchMode, 1
; SetMouseDelay, 0
; SendMode Input

#Include %A_ScriptDir%\chords.ahk

; Suspend hotkeys
#\::Suspend, Toggle

; Context menu
#/::
{
	send {AppsKey}
return
}

; Right Click
!u::
{
	Click, Right
Return
}

; Click
!i::
{
    Click
Return
}

; Launch lf
#f::
{
    run wt.exe -p lf
    WinWait lf ahk_exe WindowsTerminal.exe
    WinActivate lf ahk_exe WindowsTerminal.exe
    Send {LWinDown}{left}{LWinUp}
return
}

; Launch Notepad++
#n::
{
	If (WinActive("ahk_class CabinetWClass")) {
		Send {AppsKey}
		Sleep, 80
		Send {n}
	} else {
		run "C:\Program Files\Notepad++\notepad++.exe"
	}
return
}

; Close window
#q::
{
    WinClose, A
return
}

; Maximise window
#o::
{
    WinMaximize, A
Return
}

; T2 - Go window left
#w::
#j::
{
    MouseGetPos, posx, posy, win
    MouseMove, -100, 100, 0
    MouseGetPos, ,, awin
    WinActivate, "ahk_id %awin%"
    MouseMove, posx, posy, 0
Return
}

; Snap window left
+#j::
{
    Send, {LWinDown}{left}{LWinUp}
Return
}

; T3 - Go window right
#e::
#k::
{
    MouseGetPos, posx, posy, win
    WinGetPos, , , winwidth, , A
    MouseMove, (winwidth + 100), 100, 0
    MouseGetPos, aposx, aposy, awin
    WinActivate, "ahk_id %awin%"
    MouseMove, posx, posy, 
Return
}

; Snap window left
+#k::
{
    Send, {LWinDown}{right}{LWinUp}
Return
}

; Go tab left
#h::
    Send, {CtrlDown}{ShiftDown}{Tab}{ShiftUp}{CtrlUp}
return

; Go tab right
#l::
    Send, {CtrlDown}{Tab}{CtrlUp}
return

; Go desktop left
^#j::
    Send, {CtrlDown}{LWinDown}{left}{LWinUp}{CtrlUp}
return

^#k::
    Send, {CtrlDown}{LWinDown}{right}{LWinUp}{CtrlUp}
return

; Center mouse
#i::
{
    WinGetPos, , , winwidth, winheight, A
    winwidth /= 2
    winheight /= 2
    MouseMove, %winwidth%, %winheight%, 0
Return
}

;; HJKL alt navigation

; left
!h::
    If (WinActive("ahk_class CabinetWClass")) {
        ; Folder up in windows explorer
        SendInput, {AltDown}{Up}{AltUp}
    } Else {
        SendInput, {left}
    }
return

; Home left
!g::
    SendInput, {Home}
return

; Home Top
^!g::
	SendInput, {CtrlDown}{Home}{CtrlUp}
return

; ctrl left
^!h::
    SendInput, {CtrlDown}{left}{CtrlUp}
Return

; shift left
+!h::
    SendInput, {ShiftDown}{left}{ShiftUp}
Return

; Home shift left
+!g::
    SendInput, {ShiftDown}{Home}{ShiftUp}
return

; ctrl shift left
+^!h::
    SendInput, {ShiftDown}{CtrlDown}{left}{CtrlUp}{ShiftUp}
Return

; Down
!j::
    SendInput, {Down}
return

; 8 Down
!m::
	SendInput, {Down 8}
return

; Shift down
+!j::
    SendInput, {ShiftDown}{down}{ShiftUp}
return

; Up
!k::
    SendInput, {Up}
return

; 8 up
!o::
	SendInput, {Up 8}
return

; Shift up
+!k::
    SendInput, {ShiftDown}{up}{ShiftUp}
return

; Right
!l::
    If (WinActive("ahk_class CabinetWClass")) {
        ; Enter folder in windows explorer
        SendInput, {Enter}
    } Else {
        SendInput, {right}
    }
return

; VS to Constructor
#c::
	SendInput {CtrlDown}f{CtrlUp}
	SendInput class{space}
	sleep 10
	SendInput {Esc}
	sleep 200
	SendInput {ShiftDown}{End}{ShiftUp}
	SendInput {CtrlDown}c{CtrlUp}
	sleep 20
	classname := StrSplit(Clipboard, [A_Tab, A_Space])[2]
	SendInput {CtrlDown}f{CtrlUp}
	SendInput public %classname%
	Send (
	sleep 100
	SendInput {Esc}
return

; VS To Implementation
!v::
	SendInput {CtrlDown}{F12}{CtrlUp}
return

; End right
!;::
    SendInput, {End}
return

; End bottom
^!;::
	SendInput, {CtrlDown}{End}{CtrlUp}
return

; ctrl right
^!l::
    SendInput, {CtrlDown}{right}{CtrlUp}
Return

; shift right
+!l::
    SendInput, {ShiftDown}{right}{ShiftUp}
Return

; End shift right
+!;::
    SendInput, {ShiftDown}{End}{ShiftUp}
return

; ctrl shift right
+^!l::
    SendInput, {ShiftDown}{CtrlDown}{right}{CtrlUp}{ShiftUp}
Return

; nuke (delete)
!n::
    SendInput, {delete}
Return

; escape
!q::
    SendInput, {escape}
Return

; Left-handed vim-like movement
!s:: SendInput {Left}
; !g:: SendInput {Right}
!d:: SendInput {Up}
!f:: SendInput {Down}
; ^!s:: SendInput {CtrlDown}{Left}{CtrlUp}
;^!g:: SendInput {CtrlDown}{Right}{CtrlUp}
^!d:: SendInput {CtrlDown}{Up}{CtrlUp}
^!f:: SendInput {CtrlDown}{Down}{CtrlUp}
+^!s:: SendInput {ShiftDown}{CtrlDown}{Left}{CtrlUp}{ShiftUp}
;+^!g:: SendInput {ShiftDown}{CtrlDown}{Right}{CtrlUp}{ShiftUp}
+^!d:: SendInput {ShiftDown}{CtrlDown}{Up}{CtrlUp}{ShiftUp}
+^!f:: SendInput {ShiftDown}{CtrlDown}{Down}{CtrlUp}{ShiftUp}