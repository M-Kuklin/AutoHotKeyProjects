
#IfWinActive Path of Exile
#SingleInstance force
#NoEnv  
#Warn  
#Persistent 

FlaskDurationInit := []


FlaskDurationInit[2] := 6000
FlaskDurationInit[3] := 5400
FlaskDurationInit[4] := 4800
FlaskDurationInit[5] := 4800
FlaskDuration := []
FlaskLastUsed := []
UseFlasks := false
HoldRightClick := false
LastRightClick := 0



Loop {
	if (UseFlasks) {
		; have we attacked in the last 0.5 seconds?
		if ((A_TickCount - LastRightClick) < 500) {
			Gosub, CycleAllFlasksWhenReady
		} else {
			; We haven't attacked recently, but are we channeling/continuous?
			if (HoldRightClick) {
				Gosub, CycleAllFlasksWhenReady
			}
		}
	}
}

XButton2::
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


~RButton::


	HoldRightClick := true
	LastRightClick := A_TickCount
	return

~RButton up::

	HoldRightClick := false
	return




~2::

	FlaskLastUsed[2] := A_TickCount
	Random, VariableDelay, -99, 99
	FlaskDuration[2] := FlaskDurationInit[2] + VariableDelay ; randomize duration to simulate human
	return

~3::

	FlaskLastUsed[3] := A_TickCount
	Random, VariableDelay, -99, 99
	FlaskDuration[3] := FlaskDurationInit[3] + VariableDelay ; randomize duration to simulate human
	return

~4::

	FlaskLastUsed[4] := A_TickCount
	Random, VariableDelay, -99, 99
	FlaskDuration[4] := FlaskDurationInit[4] + VariableDelay ; randomize duration to simulate human
	return

~5::

	FlaskLastUsed[5] := A_TickCount
	Random, VariableDelay, -99, 99
	FlaskDuration[5] := FlaskDurationInit[5] + VariableDelay ; randomize duration to simulate human
	return



`::
	if UseFlasks {
		Send 1
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send 2
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send 3
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send 4
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send 5
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send e
		Random, VariableDelay, -99, 99
		Sleep, %VariableDelay%
		Send r
	}
	return

CycleAllFlasksWhenReady:
	for flask, duration in FlaskDuration {

		if ((duration > 0) & (duration < A_TickCount - FlaskLastUsed[flask])) {
			Send %flask%
			FlaskLastUsed[flask] := A_TickCount
			Random, VariableDelay, -99, 99
			FlaskDuration[flask] := FlaskDurationInit[flask] + VariableDelay ; randomize duration to simulate human
			sleep, %VariableDelay%
		}
	}
	return

