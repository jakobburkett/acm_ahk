#Requires AutoHotkey v2.0

; a ahk v2 script to allow the user to use F1-F12 keys as media control keys
; ! is alt btw

; ^!F1::Send "{Volume_Mute}"
^!F1::SoundSetMute(-1)
; ^!F2::Send "{Volume_Down}"
^!F2::{
    v := SoundGetVolume() - 10
    Send "{Volume_Down}"
    SoundSetVolume(v)
}
; ^!F3::Send "{Volume_Up}"
^!F3::{
    v := SoundGetVolume() + 10
    Send "{Volume_Up}"
    SoundSetVolume(v)
}
^!F4::Send "{Media_Play_Pause}"
^!F5::Send "{Media_Stop}"
^!F6::Send "{Media_Prev}"
^!F7::Send "{Media_Next}"