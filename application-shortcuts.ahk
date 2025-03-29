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

;BFMEII - ROTWK
#IfWinActive, ahk_exe game.dat

a::Left
s::Down
d::Right
w::Up
!a::SendInput, a
!s::SendInput, s
!d::SendInput, d
!w::SendInput, w

#IfWinActive

;EU4
#IfWinActive, ahk_exe eu4.exe

a::Left
s::Down
d::Right
w::Up
!a::SendInput, a
!s::SendInput, s
!d::SendInput, d
!w::SendInput, w

#IfWinActive

;Planet Zoo
#IfWinActive, ahk_exe PlanetZoo.exe
f::MButton

#IfWinActive

; MIITW
#IfWinActive, ahk_exe medieval2.exe
a::Left
s::Down
d::Right
w::Up
!a::SendInput, a
!s::SendInput, s
!d::SendInput, d
!w::SendInput, w

#IfWinActive