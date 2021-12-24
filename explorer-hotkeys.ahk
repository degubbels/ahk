#SingleInstance, force

#IfWinActive, ahk_exe explorer.exe
+f::
    Send ^f
    Send kind:=folder name:=

Return

#IfWinActive, ahk_exe explorer.exe
+d::
    Send !d
    Send d:
    Send {Enter}

Return

#IfWinActive, ahk_exe explorer.exe
+c::
    Send !d
    Send c:
    Send {Enter}

Return