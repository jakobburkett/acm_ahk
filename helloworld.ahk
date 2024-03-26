#Requires AutoHotkey v2.0

; hotkey
; Windows + Alt + Ctrl + Shift + A
; types out the words "Hello World"
; demo: 
#!^+A::{
    SendText "Hello World"
}

; hotstring
; type "Hello World"
; replaces with "!dlrow olleh"
; demo: 
::Hello World::!dlrow olleh

; hotstring options
; type "ch"
; * = ending character (Space, Enter, .) is not required
; ? = will activate even in other words
; demo: "which" = whi
:*?:ch::{
    ; MsgBox "Hello World"
}

; using Window Spy and #HotIf
; #HotIf WinActive(WinTitle)
; use #HotIf to end the context
; press f12 to type "Hello World!"
; demo:
#HotIf WinActive("ahk_exe Code.exe")
    F12::SendText "Hello World!"
#HotIf

; #HotIf WinExist(WinTitle)
; press F11 to type "Hello World!" if notepad is open
; demo:
#HotIf WinExist("ahk_class Notepad")
    F11::SendText "Hello World!"
#HotIf

; Variables and user input
; when the user presses F10, get input and message box with that
; InputBox returns an object with a Value and Result
;   Value is the text the user entered, Result is how the box was closed (OK, Cancel, or Timeout)
; demo:
F10::{
    UserInput := InputBox("Enter your name")
    MsgBox("Hello " UserInput.Value)
}

; Exit hotkey
Esc::ExitApp