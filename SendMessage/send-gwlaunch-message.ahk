#Requires AutoHotkey >=2.0
;@Ahk2Exe-SetMainIcon rocket.ico
index := 0
if A_Args.Length >= 1 {
	if IsInteger(A_Args[1]) {
		index := Integer(A_Args[1])
	}
}
DetectHiddenWindows true
HWnd := WinExist("GW Launcher")
if (HWnd) {
	SendMessage( 0x8000, index, 0, HWnd)
}
