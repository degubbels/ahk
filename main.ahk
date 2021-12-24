; Master file for ahk operations
; Include all scripts in a single master file improves compatibility
#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On
SetTitleMatchMode, 1
SetMouseDelay, 0
#SingleInstance

SetCapsLockState, AlwaysOff

Gosub, gui_autoexecute
return

#Include %A_ScriptDir%\control.ahk
#Include %A_ScriptDir%\one-hand-typing.ahk
#Include %A_ScriptDir%\Monitorswitch-v2.ahk

; Host script
#Include %A_ScriptDir%\GUI\GUI.ahk
#Include %A_ScriptDir%\Miscellaneous\miscellaneous.ahk

CapsLock & Space:: Gosub, gui_spawn
