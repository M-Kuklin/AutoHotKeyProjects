Ability1		:="1"
Ability2		:="2"
Ability3		:="3"
Ability4		:="4"
Ability5		:="5"
Ability6		:="6"
FlaskDurationInit := []
FlaskDurationInit[1] := 
FlaskDurationInit[2] := 
FlaskDurationInit[3] := 20000 
FlaskDurationInit[4] := 
FlaskDurationInit[5] := 
FlaskDuration := []
FlaskLastUsed := []
UseFlasks := false
HoldXButton := false
LastXButton := 0








Loop {
  if (UseFlasks) {

    if ((A_TickCount - LastXButton) < 500) {
      Gosub, WhenReadySkillReady
    } else {

      if (HoldXButton) {
        Gosub, WhenReadySkillReady
      }
    }
  }
}

F2::
  UseFlasks := not UseFlasks
  if UseFlasks {

    for i in FlaskDurationInit {
      FlaskLastUsed[i] := 0
      FlaskDuration[i] := FlaskDurationInit[i]
    }
  } else {
     ; ToolTip, UseFlasks Off
  }
  return

~XButton1::

  HoldXButton := true
  LastXButton := A_TickCount
  return

~XButton1 up::

  HoldXButton := false
  return


~1::

  FlaskLastUsed[1] := A_TickCount
  Random, VariableDelay, -99, 99
  FlaskDuration[1] := FlaskDurationInit[1] + VariableDelay ; делаем длительность случайной чтобы симулировать действие человека
  return

~2::

  FlaskLastUsed[2] := A_TickCount
  Random, VariableDelay, -99, 99
  FlaskDuration[2] := FlaskDurationInit[2] + VariableDelay ; делаем длительность случайной чтобы симулировать действие человека
  return

~3::

  FlaskLastUsed[3] := A_TickCount
  Random, VariableDelay, -99, 99
  FlaskDuration[3] := FlaskDurationInit[3] + VariableDelay ; делаем длительность случайной чтобы симулировать действие человека
  return

~4::
  FlaskLastUsed[4] := A_TickCount
  Random, VariableDelay, -99, 99
  FlaskDuration[4] := FlaskDurationInit[4] + VariableDelay ; делаем длительность случайной чтобы симулировать действие человека
  return

~5::
  FlaskLastUsed[5] := A_TickCount
  Random, VariableDelay, -99, 99
  FlaskDuration[5] := FlaskDurationInit[5] + VariableDelay ; делаем длительность случайной чтобы симулировать действие человека
  return


 ; вспомогательные функции лайт атак
LightAttack:
  if GetKeyState("RButton", "P")=0
    {
    Click Left
    Random, rand, 1, 10
    Sleep, 50+rand
    Click Left
    Random, rand, 1, 10
    Sleep, 50+rand
    }
return




BuffUp:
  for flask, duration in FlaskDuration {
    ; skip flasks with 0 duration and skip flasks that are still active
    if ((duration > 0) & (duration < A_TickCount - FlaskLastUsed[flask])) {
      If WeaponBarSwap = 
      {
          Sleep 1000
          Send %flask%
          FlaskLastUsed[flask] := A_TickCount
          Random, VariableDelay, -99, 99
          FlaskDuration[flask] := FlaskDurationInit[flask] + VariableDelay ; randomize duration to simulate human
          sleep, %VariableDelay%        
      }
      else If WeaponBarSwap = 1 ; mainskillbar
      {
          Send, {SC29}
          Sleep 1000
          WeaponBarSwap = 0
          Send %flask%
          FlaskLastUsed[flask] := A_TickCount
          Random, VariableDelay, -99, 99
          FlaskDuration[flask] := FlaskDurationInit[flask] + VariableDelay ; randomize duration to simulate human
          sleep, %VariableDelay%
          Send, {SC29}
      }
      else if WeaponBarSwap = 0
      {
          Sleep 1000
          Send %flask%
          FlaskLastUsed[flask] := A_TickCount
          Random, VariableDelay, -99, 99
          FlaskDuration[flask] := FlaskDurationInit[flask] + VariableDelay ; randomize duration to simulate human
          sleep, %VariableDelay%    
      }
    }
  }
  return

 ; ротация как вспомагательная функция

Weawing:
 ;                               first part

try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability1%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability2%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability4%
try
  {
  Gosub, BuffUp	
  }
Send, {SC29}
WeaponBarSwap = 1
 ;                            second part
Sleep 1000
Gosub, LightAttack
Send %Ability5%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability4%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability3%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability3%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability3%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability5%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability1%
try
  {
  Gosub, BuffUp	
  }
Send, {SC29}
WeaponBarSwap = 0
 ;                              third part
Sleep 1000
Gosub, LightAttack
Send %Ability1%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability2%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability5%
try
  {
  Gosub, BuffUp	
  }
Send, {SC29}
WeaponBarSwap = 1
 ;                             fourth part
Sleep 1000
Gosub, LightAttack
Send %Ability5%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability4%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability3%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability3%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability3%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability5%
try
  {
  Gosub, BuffUp	
  }
Sleep 1000
Gosub, LightAttack
Send %Ability1%
try
  {
  Gosub, BuffUp	
  }
Send, {SC29}
WeaponBarSwap = 0
return


WhenReadySkillReady:
Gosub, Weawing
return





