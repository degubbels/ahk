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

; Down
!j::
    SendInput, {Down}
return    

; Up
!k::
    SendInput, {Up}
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