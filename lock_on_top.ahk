#Requires AutoHotkey v2.0

; after a user presses the Ctrl+NUmLock, the script will make the current active window always on top
t := 0
^0::{
    global t
    t := Mod(t + 1, 2)
    WinSetAlwaysOnTop -1, "A"
    if(t == 1) {
        WinSetTransparent 128, "A"
    }
    else {
        WinSetTransparent 255, "A"
    }
}