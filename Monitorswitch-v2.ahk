#SingleInstance, force
SetTitleMatchMode, 1
SetKeyDelay, 10, 10
DetectHiddenWindows, On
; Wacom monitor switch v2

; Monitor one at first
currMonitor := 1

!CapsLock::    
    
    If WinExist("ahk_class ZafWindow")
    {
        
        If (currMonitor == 1) {
            ControlSend, ComboBox2, {Left}, Wacom Tablet Properties, , ,
            currMonitor := 2
        } Else {
            ControlSend, ComboBox2, {Right}, Wacom Tablet Properties, , ,
            currMonitor := 1
        }
    }