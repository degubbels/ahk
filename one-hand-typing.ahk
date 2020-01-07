#SingleInstance, force

CapsLock & q:: 
    If (GetKeyState("Alt", "P")){ 
        SendInput P
    } Else { 
        SendInput p
    }
Return
CapsLock & w::
    If (GetKeyState("Alt", "P")){ 
        SendInput O
    } Else { 
        SendInput o
    }
Return
CapsLock & e::
    If (GetKeyState("Alt", "P")){ 
        SendInput I
    } Else { 
        SendInput i
    }
Return
CapsLock & r::
    If (GetKeyState("Alt", "P")){ 
        SendInput U
    } Else { 
        SendInput u
    }
Return
CapsLock & t::
If (GetKeyState("Alt", "P")){ 
        SendInput Y
    } Else { 
        SendInput y
    }
Return

CapsLock & a::
If (GetKeyState("Alt", "P")){ 
        SendInput :
    } Else { 
        SendInput `;
    }
Return
CapsLock & s::
If (GetKeyState("Alt", "P")){ 
        SendInput L
    } Else { 
        SendInput l
    }
Return
CapsLock & d::
If (GetKeyState("Alt", "P")){ 
        SendInput K
    } Else { 
        SendInput k
    }
Return
CapsLock & f::
If (GetKeyState("Alt", "P")){ 
        SendInput J
    } Else { 
        SendInput j
    }
Return
CapsLock & g::
If (GetKeyState("Alt", "P")){ 
        SendInput H
    } Else { 
        SendInput h
    }
Return


CapsLock & z::
If (GetKeyState("Alt", "P")){ 
        SendInput ?
    } Else { 
        SendInput /
    }
Return
CapsLock & x::
If (GetKeyState("Alt", "P")){ 
        SendInput >
    } Else { 
        SendInput .
    }
Return
CapsLock & c::
If (GetKeyState("Alt", "P")){ 
        SendInput <
    } Else { 
        SendInput `,
    }
Return
CapsLock & v::
If (GetKeyState("Alt", "P")){ 
        SendInput M
    } Else { 
        SendInput m
    }
Return
CapsLock & b::
If (GetKeyState("Alt", "P")){ 
        SendInput N
    } Else { 
        SendInput n
    }
Return

CapsLock & Tab:: SendInput {Enter}
CapsLock & `:: SendInput {Backspace}


; Left-handed vim-like movement
!s:: SendInput {Left}
!g:: SendInput {Right}
!d:: SendInput {Up}
!f:: SendInput {Down}
^!s:: SendInput {CtrlDown}{Left}{CtrlUp}
^!g:: SendInput {CtrlDown}{Right}{CtrlUp}
^!d:: SendInput {CtrlDown}{Up}{CtrlUp}
^!f:: SendInput {CtrlDown}{Down}{CtrlUp}
+^!s:: SendInput {ShiftDown}{CtrlDown}{Left}{CtrlUp}{ShiftUp}
+^!g:: SendInput {ShiftDown}{CtrlDown}{Right}{CtrlUp}{ShiftUp}
+^!d:: SendInput {ShiftDown}{CtrlDown}{Up}{CtrlUp}{ShiftUp}
+^!f:: SendInput {ShiftDown}{CtrlDown}{Down}{CtrlUp}{ShiftUp}