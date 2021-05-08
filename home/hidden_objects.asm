UpdateCinnabarGymGateTileBlocks::
	jpba UpdateCinnabarGymGateTileBlocks_

CheckForHiddenObjectOrBookshelfOrCardKeyDoor::
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, [hJoyHeld]
	bit 0, a ; A button
	jr z, .nothingFound
; A button is pressed
	ld a, Bank(CheckForHiddenObject)
	ld [MBC1RomBank], a
	ld [H_LOADEDROMBANK], a
	call CheckForHiddenObject
	ld a, [$ffee]
	and a
	jr nz, .hiddenObjectNotFound
	ld a, [wHiddenObjectFunctionRomBank]
	ld [MBC1RomBank], a
	ld [H_LOADEDROMBANK], a
	ld de, .returnAddress
	push de
	jp hl
.returnAddress
	xor a
	jr .done
.hiddenObjectNotFound
	callba PrintBookshelfText
	ld a, [$ffdb]
	and a
	jr z, .done
.nothingFound
	ld a, $ff
.done
	ld [$ffeb], a
	pop af
	ld [MBC1RomBank], a
	ld [H_LOADEDROMBANK], a
	ret