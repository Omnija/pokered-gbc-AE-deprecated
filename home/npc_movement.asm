; not zero if an NPC movement script is running, the player character is
; automatically stepping down from a door, or joypad states are being simulated
IsPlayerCharacterBeingControlledByGame::
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret nz
	ld a, [wd736]
	bit 1, a ; currently stepping down from door bit
	ret nz
	ld a, [wd730]
	and $80
	ret

RunNPCMovementScript::
	ld hl, wd736
	bit 0, [hl]
	res 0, [hl]
	jr nz, .playerStepOutFromDoor
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret z
	dec a
	add a
	ld d, 0
	ld e, a
	ld hl, .NPCMovementScriptPointerTables
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, [wNPCMovementScriptBank]
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ld a, [wNPCMovementScriptFunctionNum]
	call CallFunctionInTable
	pop af
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret

.NPCMovementScriptPointerTables
	dw PalletMovementScriptPointerTable
	dw PewterMuseumGuyMovementScriptPointerTable
	dw PewterGymGuyMovementScriptPointerTable
.playerStepOutFromDoor
	jpba PlayerStepOutFromDoor

EndNPCMovementScript::
	jpba _EndNPCMovementScript

EmptyFunc2::
	ret
