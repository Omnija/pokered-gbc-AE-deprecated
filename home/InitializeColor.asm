InitializeColor:
	cp $11
	jr nz, .IsNotGBC
	call _InitGbcMode
	jp Start

.IsNotGBC
	jpab RunDmgError


; Indirect function callers for color code

_InitGbcMode:
	jpab InitGbcMode


; Called once for each sprite. This needs to preserve variables, so it can't use
; BankSwitch.
_ColorOverworldSprite:
	ld [hColorHackTmp],a ; Need to preserve value of 'a'

	ld a,[H_LOADEDROMBANK]
	push af

	ld a,BANK(ColorOverworldSprite)
	call SetRomBank

	ld a,[hColorHackTmp]
	call ColorOverworldSprite

	ld [hColorHackTmp],a
	pop af
	call SetRomBank
	ld a,[hColorHackTmp]
	ret


; Soft reset code (clears memory then goes to normal code)
SoftReset:
	ld b,BANK(ClearGbcMemory)
	ld hl,ClearGbcMemory
	rst $18 ; Bankswitch
	jp SoftReset_orig
