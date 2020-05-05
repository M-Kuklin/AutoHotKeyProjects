~w::
while GetKeyState("w", "P")
{
    ControlSend,, {w down} , ahk_exe archeage.exe
    Sleep, 100
    ControlSend,, {w up} , ahk_exe archeage.exe
}
return


~s::
while GetKeyState("s", "P")
{
    ControlSend,, {s down} , ahk_exe archeage.exe
    Sleep, 75
    ControlSend,, {s up} , ahk_exe archeage.exe
}
return


~a::
while GetKeyState("a", "P")
{
    ControlSend,, {a down} , ahk_exe archeage.exe
    Sleep, 75
    ControlSend,, {a up} , ahk_exe archeage.exe
}
return

~d::
while GetKeyState("d", "P")
{
    ControlSend,, {d down} , ahk_exe archeage.exe
    Sleep, 75
    ControlSend,, {d up} , ahk_exe archeage.exe
}
return

~o::
ControlSend,, {o down} , ahk_exe archeage.exe
ControlSend,, {o up} , ahk_exe archeage.exe
return

