; Disable Caps Lock key
SetCapsLockState, AlwaysOff
return

; Reddit Mode (append)
~CapsLock::
	Clipboard := ""
	SendInput, ^c
	ClipWait
	Clipboard := Trim(Clipboard)
	if (SubStr(Clipboard, 0) != ".") {
		Clipboard := Clipboard "."
	}
	Clipboard := Clipboard "`n`n`n"
	script_path = C:\Users\Ibrahim\Documents\REDDIT_SCRIPT.txt
	FileAppend, %Clipboard%, %script_path%
	SplashTextOn, 200, 50, Clipboard, %Clipboard%
	WinMove, Clipboard, , 1700, 950
return

; Reddit Mode (add "CUT")
`::
	script_path = C:\Users\Ibrahim\Documents\REDDIT_SCRIPT.txt
	FileAppend, `n`n`n`nNEXT FEEDBACK.`n`n`n`n, %script_path%
	SplashTextOn, 200, 50, Clipboard, NEXT FEEDBACK.
	WinMove, Clipboard, , 1700, 950
return