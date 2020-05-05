

 ; simple skills


SC02::
Loop
{
if not GetKeyState("SC02", "P")
        break
Send {SC02}
Random, rand, 1,10
Sleep 20+rand
}
return

SC03::
Loop
{
if not GetKeyState("SC03", "P")
        break
Send {SC03}
Random, rand, 1,10
Sleep 20+rand
}
return

SC12::
Loop
{
if not GetKeyState("SC12", "P")
        break
Send {SC12}
Random, rand, 1,10
Sleep 20+rand
}
return

SC13::
Loop
{
if not GetKeyState("SC13", "P")
        break
Send {SC13}
Random, rand, 1,10
Sleep 20+rand
}
return

SC14::
Loop
{
if not GetKeyState("SC14", "P")
        break
Send {SC14}
Random, rand, 1,10
Sleep 20+rand
}
return


SC29::
Loop
{
if not GetKeyState("SC29", "P")
        break
Send {SC29}
Random, rand, 1,10
Sleep 20+rand
}
return

SC21::
Loop
{
if not GetKeyState("SC21", "P")
        break
Send {SC21}
Random, rand, 1,10
Sleep 20+rand
}
return

SC10::
Loop
{
if not GetKeyState("SC10", "P")
        break
Send {SC10}
Random, rand, 1,10
Sleep 20+rand
}
return



WheelUp::
Loop
{
Send {WheelUp}
Random, rand, 1,10
Sleep 5+rand
Send {WheelUp}
Sleep 5+rand
Send {WheelUp}
Sleep 5+rand
Send {WheelUp}
Sleep 5+rand
Send {WheelUp}
return
}


WheelDown::
Loop
{
Send {WheelDown}
Random, rand, 1,10
Sleep 5+rand
Send {WheelDown}
Sleep 5+rand
Send {WheelDown}
Sleep 5+rand
Send {WheelDown}
Sleep 5+rand
Send {WheelDown}
return
}


 ; Retrebution + Poison

~F3::
Loop
{
Send {F3}
Sleep 200
Send {j}
return
}



 ; Electroballs

~XButton1::
Loop
{
if not GetKeyState("XButton1", "P")
        break
Send {XButton1}
}
return

 ; godwhisp combination by Matta





~XButton2::
Loop
{
if not GetKeyState("XButton2", "P")
        break

Send {SC06 down}
Sleep 74
Send {SC06 up} 
Sleep 100

Send {SC05 down}
Sleep 100
Send {SC05 up}
Sleep 20

Send {SC06 down}
Sleep 74
Send {SC06 up}
Sleep 100

Send {SC04 down}
Sleep 120
Send {SC04 up}
Sleep 20

Send {SC06 down}
Sleep 74
Send {SC06 up}
Sleep 100

Send {SC31 down}
Sleep 100
Send {SC31 up}
Sleep 20

Send {SC06 down}
Sleep 74
Send {SC06 up}
Sleep 100


Send {SC06 down}
Sleep 74
Send {SC06 up}
Sleep 100


Send {SC06 down}
Sleep 84
Send {SC06 up} 
Sleep 100


}
return






