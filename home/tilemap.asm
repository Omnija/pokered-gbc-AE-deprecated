FillMemory::
; Fill bc bytes at hl with a.
	push de
	ld d, a
.loop
	ld a, d
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	pop de
	ret


UncompressSpriteFromDE::
; Decompress pic at a:de.
	ld hl, wSpriteInputPtr
	ld [hl], e
	inc hl
	ld [hl], d
	jp UncompressSpriteData

SaveScreenTilesToBuffer2::
	coord hl, 0, 0
	ld de, wTileMapBackup2
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call CopyData
	ret

LoadScreenTilesFromBuffer2::
	call LoadScreenTilesFromBuffer2DisableBGTransfer
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	ret

; loads screen tiles stored in wTileMapBackup2 but leaves H_AUTOBGTRANSFERENABLED disabled
LoadScreenTilesFromBuffer2DisableBGTransfer::
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	ld hl, wTileMapBackup2
	coord de, 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call CopyData
	ret

SaveScreenTilesToBuffer1::
	coord hl, 0, 0
	ld de, wTileMapBackup
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	jp CopyData

LoadScreenTilesFromBuffer1::
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	ld hl, wTileMapBackup
	coord de, 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call CopyData
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	ret