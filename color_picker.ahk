#Requires AutoHotkey v2.0

; when the user presses Ctrl+Space, copy the hex code of the pixel under the mouse cursor to the clipboard
; and displays the color on a small window

^Space::{
    MouseGetPos &x, &y
    color := PixelGetColor(x, y)
    A_Clipboard := color
    color := "c" SubStr(color, 3)

    ; display the color on a small window
    MyGui := Gui()
    MyGui.BackColor := color
    MyGui.Opt("-Caption +ToolWindow +Disabled +Border")
    MyGui.Show("w100 h100 x" x " y" y)
    Sleep (250)
    ; BorderGui.Destroy()
    MyGui.Destroy()
}