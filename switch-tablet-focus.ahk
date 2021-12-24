#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

^LWin::
DetectHiddenWindows, On 
IfWinExist, Pen Mode Details
{
;Click arrow up to select next monitor (keeps looping 1,2,1,2 etc) so only arrow up is enough
ControlClick, msctls_updown321, Pen Mode Details,,,, NA X0 Y0 
}
IfWinNotExist, Pen Mode Details
{
;Open Pen Tablet Properties
Run, control pentablet.cpl
WinWait Pen Tablet Properties
;Click Details... Button
SetControlDelay -1
ControlClick, Button11, Pen Tablet Properties,,,, NA
WinWait Pen Mode Details
;Click arrow up to select next monitor (keeps looping 1,2,1,2 etc) so only arrow up is enough
ControlClick, msctls_updown321, Pen Mode Details,,,, NA X0 Y0
;Hide window
WinHide Pen Mode Details
WinHide Pen Tablet Properties 
}
DetectHiddenWindows, Off
;OnExit, ExitSub
return 