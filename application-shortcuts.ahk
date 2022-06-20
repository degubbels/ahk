; Spreadsheets
#IfWinActive, ahk_exe EXCEL.EXE
!w:: SendInput {F2}{Home}
!e:: SendInput {F2}

; paste raw
^+v:: SendInput {AppsKey}{M}{Enter}


; Styles
!`::
Send, {Blind}{AltUp}{LAlt}
Sleep 10
Send {h}{j}
Sleep 10
Send {Home}{down}
Sleep 10
Send {Enter}
return

!1::
Send, {Blind}{AltUp}{LAlt}
Sleep 10
Send {h}{j}
Sleep 10
Send {Home}
Sleep 10
Send {Enter}
return


!2:: 
Send, {Blind}{AltUp}{LAlt}
Sleep 10
Send {h}{j}
Sleep 10
Send {Home}{right}
Sleep 10
Send {Enter}
return

#IfWinActive

#IfWinActive, ahk_exe game.dat

a::Left
s::Down
d::Right
w::Up

#IfWinActive