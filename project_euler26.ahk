#Requires AutoHotkey v2.0

array_search(arr, target)
{
    for index, value in arr
        if (value == target)
            return index
    return -1
}

rec(n)
{
    ; check if 1/n is terminating
    m := n
    while (Mod(m,2) == 0)
        m := m // 2
    while (Mod(m, 5) == 0)
        m := m // 5
    if (m == 1)
        return 0

    remainders := Array()
    d := 1

    while (array_search(remainders, d) == -1)
    {
        remainders.Push(d)
        d := Mod(d * 10, n)
    }
    return remainders.Length - array_search(remainders, d)
}


; you can also use a for loop if you want
; if nesting loops, you should probably use a for
;    loop if you want to use the iteration variable
m := 0
answer := 1
Loop 1000
{   
    if (rec(A_Index) > m)
    {
        m := rec(A_Index)
        answer := A_Index
    }
}

MsgBox(answer)

return