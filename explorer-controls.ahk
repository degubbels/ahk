#SingleInstance, force

#IfWinActive ahk_class CabinetWClass
h::
    SendInput, {AltDown}{Up}{AltUp}
return

j::
    SendInput, {Down}
return    

k::
    SendInput, {Up}
return

l::
    SendInput, {Enter}
return

#IfWinActive