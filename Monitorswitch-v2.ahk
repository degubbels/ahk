; #NoEnv
; #Warn
; #SingleInstance, Force
; SetWorkingDir %A_ScriptDir%
; SetTitleMatchMode, 1
SetKeyDelay, 10, 10
; DetectHiddenWindows, On
; Wacom monitor switch v2


!CapsLock::
    
    If WinExist("ahk_class ZafWindow")
    {
        
        ; Get current monitor
        ; from: https://www.autohotkey.com/docs/commands/ControlGet.htm#Choice
        SendMessage, 0x147, 0, 0, ComboBox2, Wacom Tablet Properties    ; 0x147 is CB_GETCURSEL (for a DropDownList or ComboBox).
        choicePos := ErrorLevel<<32>>32                                 ; Convert UInt to Int to have -1 if there is no item selected.
        currMonitor := choicePos - 1                                    ; Convert to monitor number

        ; Get Amount of options
        SendMessage, 0x146, 0, 0, ComboBox2, Wacom Tablet Properties    ; 0x146 is CB_GETCOUNT
        cbLen := ErrorLevel<<32>>32                                     ; Get 32bit int result
        maxMonitor := cbLen - 2                                         ; Highest Monitor count is number of options discarding first two
        moveCount := maxMonitor - 1

        If (currMonitor == maxMonitor) {
            
            Loop,  %moveCount% {
                ControlSend, ComboBox2, {Left}, Wacom Tablet Properties
            }            
        } Else {
            ControlSend, ComboBox2, {Right}, Wacom Tablet Properties
        }
    }
    Else
    {
        Run "C:\Program Files\Tablet\Wacom\Professional_CPL.exe"
        WinWait, Wacom Tablet Properties, , 10
        if ErrorLevel
        {
            MsgBox, Could not open tablet properties.
        }
        else
        {
            WinActivate, Wacom Tablet Properties
            ControlSend, ZafWindow8, {Right}, Wacom Tablet Properties
            WinMinimize, Wacom Tablet Properties
        }
    }
    return

SetKeyDelay, 0, 0