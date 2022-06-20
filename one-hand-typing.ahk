; #NoEnv
; #Warn
; #SingleInstance, Force
; SetWorkingDir %A_ScriptDir%
; SendMode Input

CapsLock & q:: 
    If (GetKeyState("Shift", "P")){ 
        SendInput P
    } Else { 
        SendInput p
    }
Return
CapsLock & w::
    If (GetKeyState("Shift", "P")){ 
        SendInput O
    } Else { 
        SendInput o
    }
Return
CapsLock & e::
    If (GetKeyState("Shift", "P")){ 
        SendInput I
    } Else { 
        SendInput i
    }
Return
CapsLock & r::
    If (GetKeyState("Shift", "P")){ 
        SendInput U
    } Else { 
        SendInput u
    }
Return
CapsLock & t::
If (GetKeyState("Shift", "P")){ 
        SendInput Y
    } Else { 
        SendInput y
    }
Return

CapsLock & a::
If (GetKeyState("Shift", "P")){ 
        SendInput :
    } Else {
        SendInput `;
    }
Return
CapsLock & s::
If (GetKeyState("Shift", "P")){ 
        SendInput L
    } Else {
        SendInput l
    }
Return
CapsLock & d::
If (GetKeyState("Shift", "P")){ 
        SendInput K
    } Else { 
        SendInput k
    }
Return
CapsLock & f::
If (GetKeyState("Shift", "P")){ 
        SendInput J
    } Else { 
        SendInput j
    }
Return
CapsLock & g::
If (GetKeyState("Shift", "P")){ 
        SendInput H
    } Else { 
        SendInput h
    }
Return


CapsLock & z::
If (GetKeyState("Shift", "P")){ 
        SendInput ?
    } Else { 
        SendInput /
    }
Return
CapsLock & x::
If (GetKeyState("Shift", "P")){ 
        SendInput >
    } Else { 
        SendInput .
    }
Return
CapsLock & c::
If (GetKeyState("Shift", "P")){ 
        SendInput <
    } Else { 
        SendInput `,
    }
Return
CapsLock & v::
If (GetKeyState("Shift", "P")){ 
        SendInput M
    } Else { 
        SendInput m
    }
Return
CapsLock & b::
If (GetKeyState("Shift", "P")){ 
        SendInput N
    } Else { 
        SendInput n
    }
Return


; Number are shifted, not mirrored
CapsLock & 1::
    If (GetKeyState("Shift", "P")){
        SendInput {^}
    } Else {
        SendInput 6
    }
Return
CapsLock & 2::
    If (GetKeyState("Shift", "P")){
        SendInput &
    } Else {
        SendInput 7
    }
Return
CapsLock & 3::
    If (GetKeyState("Shift", "P")){
        SendInput *
    } Else {
        SendInput 8
    }
Return
CapsLock & 4::
    If (GetKeyState("Shift", "P")){
        SendInput (
    } Else {
        SendInput 9
    }
Return
CapsLock & 5::
    If (GetKeyState("Shift", "P")){
        SendInput )
    } Else {
        SendInput 0
    }
Return

CapsLock & Tab:: SendInput {Enter}
CapsLock & `:: SendInput {Backspace}