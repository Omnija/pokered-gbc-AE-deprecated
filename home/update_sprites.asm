UpdateSprites::
	ld a, [wUpdateSpritesEnabled]
	dec a
	ret nz
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, Bank(_UpdateSprites)
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	call _UpdateSprites
	pop af
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret
