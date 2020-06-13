~Numpad1::
Msgbox,  Script ON

Loop 
{
    ControlClick, , ahk_exe archeage.exe
    Random, rand, 30000, 60000
    Sleep rand	
}

~Numpad2::
Msgbox,  Script OFF 
ExitApp 

 
