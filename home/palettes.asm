RestoreScreenTilesAndReloadTilePatterns::
	call ClearSprites
	ld a, $1
	ld [wUpdateSpritesEnabled], a
	call ReloadMapSpriteTilePatterns
	call LoadScreenTilesFromBuffer2
	call LoadTextBoxTilePatterns
	call RunDefaultPaletteCommand
	jr Delay3


GBPalWhiteOutWithDelay3::
	call GBPalWhiteOut

Delay3::
; The bg map is updated each frame in thirds.
; Wait three frames to let the bg map fully update.
	ld c, 3
	jp DelayFrames

GBPalNormal::
; Reset BGP and OBP0.
	ld a, %11100100 ; 3210
	ld [rBGP], a
;	ld a,%11010000
	ld a,%11100100	; HAX
	ld [rOBP0], a
	ret

GBPalWhiteOut::
; White out all palettes.
	xor a
	ld [rBGP], a
	ld [rOBP0], a
	ld [rOBP1], a
	ret


RunDefaultPaletteCommand::
	ld b, $ff
RunPaletteCommand::
	ld a, [wOnSGB]
	and a
	ret z
	predef_jump _RunPaletteCommand

GetHealthBarColor::
; Return at hl the palette of
; an HP bar e pixels long.
	ld a, e
	cp 24 ; HAX: changed to match crystal (yellow should mean <1/2 health)
	ld d, 0 ; green
	jr nc, .gotColor
	cp 10
	inc d ; yellow
	jr nc, .gotColor
	inc d ; red
.gotColor
	ld [hl], d
	ret