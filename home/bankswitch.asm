BankswitchHome::
; switches to bank # in a
; Only use this when in the home bank!
	ld [wBankswitchHomeTemp], a
	ld a, [H_LOADEDROMBANK]
	ld [wBankswitchHomeSavedROMBank], a
	ld a, [wBankswitchHomeTemp]
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret

BankswitchBack::
; returns from BankswitchHome
	ld a, [wBankswitchHomeSavedROMBank]
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret

Bankswitch::
; self-contained bankswitch, use this when not in the home bank
; switches to the bank in b
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, b
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ld bc, .Return
	push bc
	jp hl
.Return
	pop bc
	ld a, b
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret