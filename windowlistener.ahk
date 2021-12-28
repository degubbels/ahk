; @degu

#Persistent
#SingleInstance, force

DetectHiddenWindows, On

Gui +LastFound
hWnd := WinExist()

DllCall( "RegisterShellHookWindow", UInt,hWnd )
MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
OnMessage( MsgNum, "ShellMessage" )
Return

ShellMessage( wParam,lParam ) {
  Local k
  If ( wParam = 1 ) ;  HSHELL_WINDOWCREATED := 1
     {
       NewID := lParam
       SetTimer, OnNewWindow, -1
     }
}

OnNewWindow:
    WinActivate, ahk_id %NewID%
    Send, {LWinDown}{right}{LWinUp}
Return