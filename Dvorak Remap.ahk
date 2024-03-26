#Requires AutoHotkey v2.0
i := True

CapsLock::{
    global i
    i := !i

    if(i){
        MsgBox "On"
    }
    else {
        MsgBox "Off"
    }
}

#HotIf i
    ^;::^z
    ^q::^x
    ^j::^c
    ^k::^v
    ^f::^y
    ^u::^f
    ^o::^s
    ^y::^t
    ^u::^f
    ^l::^p
    ^,::^w
    ^x::^b
    ^z::^/
    ^g::^u
    ^n::^l
    ^b::^n
    ^x::^b
    ^t::^k
    ^[::^-
    ^]::^=
    ^/::^[
    ^=::^]
    ^c::^i
    ^p::^r
    
    ^+j::^+c
    ^+k::^+v
    ^+;::^+z
    ^+f::^+y
    ^+y::^+t
    ^+u::^+f
    ^+l::^+p
    ^+p::^+r
    ^+t::^+k
    ^+p::^+r
    
    !/::![
    !=::!]

    #+o::#+s
#HotIf

NumLock::{
    MsgBox "Exit Now"
    ExitApp
}