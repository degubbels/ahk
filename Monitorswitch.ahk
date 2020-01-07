;Wacom switch monitorz
!z:: 
DetectHiddenWindows, On 
IfWinExist, Pen Mode Details
{
;Click arrow up to select next monitor (keeps looping 1,2,1,2 etc) so only arrow up is enough
ControlClick, msctls_updown321, Pen Mode Details,,,, NA X0 Y0 
}
IfWinNotExist, Pen Mode Details
{
;Open Pen Tablet Properties
Run, C:\Program Files\Tablet\Pen\Consumer_CPL.exe
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
OnExit
return 