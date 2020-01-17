#SingleInstance, Force
DetectHiddenWindows, On
SetTitleMatchMode, 1
SetMouseDelay, 0

; T1 - Activate powershell
#q::
{
    If (WinActive("PowerShell") )
    {
        WinMinimize, A
        WinActivate, "ahk_id %last%"
    }
    Else
    {
        WinGet, last, ID, A
        WinActivate, PowerShell
    }
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
    Send, {LWinDown}}{left}{LWinUp}
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
    Send, {LWinDown}}{right}{LWinUp}
Return
}

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

; ctrl left
^!h::
    SendInput, {CtrlDown}{left}{CtrlUp}
Return

; shift left
+!h::
    SendInput, {ShiftDown}{left}{ShiftUp}
Return


; ctrl shift left
+^!h::
    SendInput, {ShiftDown}{CtrlDown}{left}{CtrlUp}{ShiftUp}
Return

; Down
!j::
    SendInput, {Down}
return

; Shift down
+!j::
    SendInput, {ShiftDown}{down}{ShiftUp}
return

; Up
!k::
    SendInput, {Up}
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

; ctrl right
^!l::
    SendInput, {CtrlDown}{right}{CtrlUp}
Return

; shift right
+!l::
    SendInput, {ShiftDown}{right}{ShiftUp}
Return


; ctrl shift right
+^!l::
    SendInput, {ShiftDown}{CtrlDown}{right}{CtrlUp}{ShiftUp}
Return