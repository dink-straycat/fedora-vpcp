#!/usr/bin/bash -x
cat <<EOM >20-middle_button_wheel.conf
Section "InputClass"
	Identifier	"Trackpoint Wheel Emulation"
	MatchProduct	"PS/2 Generic Mouse"
	MatchDevicePath	"/dev/input/event*"
	Option		"EmulateWheel"		"true"
	Option		"EmulateWheelButton"	"2"
	Option		"Emulate3Buttons"	"true"
	Option		"XAxisMapping"		"6 7"
	Option		"YAxisMapping"		"4 5"
	Option		"ZAxisMapping"		"4 5"
EndSection
EOM

sudo mv 20-middle_button_wheel.conf /usr/share/X11/xorg.conf.d/
