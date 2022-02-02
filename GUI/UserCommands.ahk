; Created by Asger Juul Brunshøj
; Customised by degu

; Note: Save with encoding UTF-8 with BOM if possible.
; I had issues with special characters like in ¯\_(ツ)_/¯ that wouldn't work otherwise.
; Notepad will save UTF-8 files with BOM automatically (even though it does not say so).
; Some editors however save without BOM, and then special characters look messed up in the AHK GUI.

; Write your own AHK commands in this file to be recognized by the GUI. Take inspiration from the samples provided here.

;-------------------------------------------------------------------------------
;;; LAUNCH WEBSITES AND PROGRAMS ;;;
;-------------------------------------------------------------------------------
if command = r/ ; Go to subreddit. This is a quick way to navigate to a specific URL.
{
    gui_search_title := "/r/"
    gui_search("https://www.reddit.com/r/REPLACEME")
}
else if command = note ; Notepad
{
    gui_destroy()
    Run Notepad
}

;-------------------------------------------------------------------------------
;;; INTERACT WITH THIS AHK SCRIPT ;;;
;-------------------------------------------------------------------------------
else if command = rel ; Reload this script
{
    gui_destroy() ; removes the GUI even when the reload fails
    Reload
}
else if command = commands ; Edit GUI user commands
{
    gui_destroy()
    run, "C:\run\VS-Code\Code.exe" "%A_ScriptDir%\GUI\UserCommands.ahk" -n
}

;-------------------------------------------------------------------------------
;;; OPEN FOLDERS ;;;
;-------------------------------------------------------------------------------
else if command = dl ; Downloads
{
    gui_destroy()
    run d:/download
}
else if command = rec ; Recycle Bin
{
    gui_destroy()
    Run ::{645FF040-5081-101B-9F08-00AA002F954E}
}
else if command = appdata ; AppData
{    
    gui_destroy()
    run C:\Users\%A_Username%\AppData
}

;-------------------------------------------------------------------------------
;;; MISCELLANEOUS ;;;
;-------------------------------------------------------------------------------

else if command = date ; What is the date?
{
    gui_destroy()
    FormatTime, date,, dd-MM-yy
    SendInput, %date%
}
else if command = week ; Which week is it?
{
    gui_destroy()
    FormatTime, weeknumber,, YWeek
    StringTrimLeft, weeknumbertrimmed, weeknumber, 4
    if (weeknumbertrimmed = 53)
        weeknumbertrimmed := 1
    MsgBox It is currently week %weeknumbertrimmed%
    weeknumber =
    weeknumbertrimmed =
}
else if command = ? ; Tooltip with list of commands
{
    GuiControl,, command, ; Clear the input box
    Gosub, gui_commandlibrary
}

else if command = time ; Write current time
{
    gui_destroy()
    FormatTime, currtime,, HH:mm
    SendInput, %currtime%
}

;-------------------------------------------------------------------------------
;;; PROGRAMS ;;;
;-------------------------------------------------------------------------------


else if command = er ; Everything
{
    gui_destroy()
    Run, "D:\run\Everything\Everything.exe"
}

;-------------------------------------------------------------------------------
;;; Desktop Environment control ;;;
;-------------------------------------------------------------------------------

else if command = atop ; Always on top
{
    gui_destroy()
    Winset, Alwaysontop, Toggle, A
    WinGet, ExStyle, ExStyle, A
    If (ExStyle & 0x8) {
        MsgBox Window now always on top
    } else {
        MsgBox Window no longer always on top
    }
}

else if command = bare ; Run window bare
{
    gui_destroy()
    Winset, Style, ^0x800000, A
}

;-------------------------------------------------------------------------------
;;; Map Locations ;;;
;-------------------------------------------------------------------------------

else if command = wien ; Google Maps focused on Wien
{
    gui_destroy()
    run "https://www.google.com/maps/@48.2109985`,16.3614064`,8561m/data=!3m1!1e3"
}

else if command = ehv ; Google Maps focused on Eindhoven
{
    gui_destroy()
    run "https://www.google.com/maps/@51.4447028`,5.5061685`,1367 e8m/data=!3m1!1e3"
}

;-------------------------------------------------------------------------------
;;; Working Environments ;;;
;-------------------------------------------------------------------------------

else if command = ahk
{
    gui_destroy()
    run, wt.exe -d "d:/dev/script/ahk/"
    run, "C:\run\VS-Code\Code.exe" "D:/dev/script/ahk/" -n
}

else if command = angkor
{
    gui_destroy()
    run wt.exe -d "d:/dev/web/Angkor-map/"
    run wt.exe -w 0 -d "d:/dev/web/Angkor-map/"

    run d:/docs/work/angkor
    run d:/docs/work/angkor/uren.ods

    run "C:\run\VS-Code\Code.exe" "D:/dev/web/Angkor-map/" -n
}

else if command = ma
{
    gui_destroy()
    run https://www.overleaf.com/project/619e293928a6a9a2f7bc1305
    run wt.exe -d "D:/dev/uni/ma/python/"
    run "C:\run\VS-Code\Code.exe" "D:/dev/uni/ma/python/" -n
    run "D:\docs\uni\MA\"
}