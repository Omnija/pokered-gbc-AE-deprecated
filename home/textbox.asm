; function to draw various text boxes
; INPUT:
; [wTextBoxID] = text box ID
; b, c = y, x cursor position (TWO_OPTION_MENU only)
DisplayTextBoxID::
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, BANK(DisplayTextBoxID_)
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	call DisplayTextBoxID_
	pop bc
	ld a, b
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret