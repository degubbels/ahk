#SingleInstance, Force
DetectHiddenWindows, On
SetTitleMatchMode, 1

; T1 - Activate powershell
!q::
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
!w::
{
    MouseGetPos, posx, posy, win
    WinGetPos, , , winwidth, , A
    MouseMove, -100, 100, 0
    MouseGetPos, aposx, aposy, awin
    WinActivate, "ahk_id %awin%"
    MouseMove, posx, posy, 0
Return
}

; T3 - Go window right
!e::
{
    MouseGetPos, posx, posy, win
    WinGetPos, , , winwidth, , A
    MouseMove, (winwidth + 100), 100, 0å
    MouseGetPos, aposx, aposy, awin
    WinActivate, "ahk_id %awin%"
    MouseMove, posx, posy, 
Return
}

; T2 - Go window left
!j::
{
    MouseGetPos, posx, posy, win
    WinGetPos, , , winwidth, , A
    MouseMove, -100, 100, 0
    MouseGetPos, aposx, aposy, awin
    WinActivate, "ahk_id %awin%"
    MouseMove, posx, posy, 0
Return
}

; T3 - Go window right
!k::
{
    MouseGetPos, posx, posy, win
    WinGetPos, , , winwidth, , A
    MouseMove, (winwidth + 100), 100, 0å
    MouseGetPos, aposx, aposy, awin
    WinActivate, "ahk_id %awin%"
    MouseMove, posx, posy, 
Return
}