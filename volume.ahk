#Requires AutoHotkey v2.0

MouseIsOver(WinTitle) {
    MouseGetPos ,, &Win
    return WinExist(WinTitle " ahk_id " Win)
}

#HotIf MouseIsOver("ahk_class Shell_TrayWnd")
    WheelUp::Send "{Volume_Up}"
    WheelDown::Send "{Volume_Down}"
#HotIf
