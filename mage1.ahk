~1::
Loop
{
if not GetKeyState("1", "P")
        break
Send {1}
Sleep 20
}

~XButton1::
Loop
{
if not GetKeyState("XButton1", "P")
        break
Send {XButton1}
}

~XButton2::
Loop
{
if not GetKeyState("XButton2", "P")
        break

Send {4 down}
Sleep 200
Send {4 up}
Sleep 165

Send {5 down}
Sleep 100
Send {5 up} 
Sleep 64

Send {3 down}
Sleep 164
Send {3 up}
Sleep 165

Send {5 down}
Sleep 64
Send {5 up}
Sleep 64

Send {n down}
Sleep 64
Send {n up}
Sleep 165

Send {5 down}
Sleep 64
Send {5 up}
Sleep 64

Send {f down}
Sleep 165
Send {f up}
Sleep 165


Send {5 down}
Sleep 64
Send {5 up}
Sleep 64
Send {5 down}
Sleep 64
Send {5 up} 
Sleep 64
Send {5 down}
Sleep 64
Send {5 up} 
Sleep 64



}
return


~r::
Loop
{
if not GetKeyState("r", "P")
        break
Send {t up}
Sleep 64
Send {t down} 
}




