;***************************************************************************************************
; Trainer Rematch
; ShinRed Codes - Fixed YesNoChoices (NoYesChoice)
TrainerRematch:
	xor a
;	CheckEvent EVENT_909
	jr nz, .skip_rematch_choice
	ld hl, RematchTrainerText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	dec a
	ret nz
.skip_rematch_choice
;	ResetEvent EVENT_909
	xor a
	ret

;***************************************************************************************************
; Adding Green gender sprites
; Overworld female trainer sprite functions
; Relocated from home/overworld.asm
LoadWalkingPlayerSpriteGraphicsCall::
    ld de,RedSprite
    ld a, [wPlayerGender]
    and a
    jr z, .AreGuy1
    ld de,GreenSprite
.AreGuy1
    ld hl,vNPCSprites
    ret
	
LoadSurfingPlayerSpriteGraphicsCall::
    ;ld de,SeelSprite
	ld de,LaprasSprite
    ld hl,vNPCSprites
	ret
	
LoadBikePlayerSpriteGraphicsCall::
    ld de,RedCyclingSprite
    ld a, [wPlayerGender]
    and a
    jr z, .AreGuy2
    ld de,GreenCyclingSprite
.AreGuy2
    ld hl,vNPCSprites
	ret

;***************************************************************************************************
;this function handles tracking of how bast to go on or off a bike
;biking ORs with $2
;running by holding B ORs with $1
TrackRunBikeSpeed:
	xor a
	ld[wUnusedD119], a
	ld a, [wWalkBikeSurfState]
	dec a ; riding a bike? (0 value = TRUE)
	call z, IsRidingBike
	ld a, [hJoyHeld]
	and B_BUTTON	;holding B to speed up? (non-zero value = TRUE)
	call nz, IsRunning
	ld a, [wUnusedD119]
	cp 2	;is biking without speedup being done?
	jr z, .skip	;if not make the states a value from 1 to 4 (excluding biking without speedup, which needs to be 2)
	inc a	
.skip
	ld[wUnusedD119], a
	ret
IsRidingBike:
	ld a, [wUnusedD119]
	or $2
	ld[wUnusedD119], a
	ret
IsRunning:
	ld a, [wUnusedD119]
	or $1
	ld[wUnusedD119], a
	ret

;***************************************************************************************************
; Port of the BW2 Repel System
; Based heavily on code from Pokemon Maize
; Credit goes to Shanty Town
_DisplayRepelWoreOffText::
	; Display "Repel's Effect Wore Off"
	ld hl, RepelWoreOffText
	call PrintText
	
	; Check for more Repels
	ld b, REPEL
	call IsItemInBag
	ld b, REPEL
	jr nz, .gotItem
	ld b, SUPER_REPEL
	call IsItemInBag
	ld b, SUPER_REPEL
	jr nz, .gotItem
	ld b, MAX_REPEL
	call IsItemInBag
	ld b, MAX_REPEL
	ret z ; Return if there were no Repels left
	
.gotItem
	; register b holds the item ID
	push bc ; don't lose the item ID
	ld a, b
	ld [wd11e], a
	call GetItemName
	call CopyStringToCF4B
	ld hl, UseAnotherText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .saidNo
	pop bc ; get the item ID back so we can put it where it needs to be
	ld a,b
	ld [wcf91], a
	ld [wPseudoItemID], a
	
	; get ready to find which item slot the repel is in, so we don't remove the wrong item
	ld hl, wBagItems
	ld c, 0 ; initialize the slot number to first item
	
	; Find the item in the pack, so we can store the slot in wWhichPokemon for use by UseItem
.loop
	ld a, [hli]  ; read the item ID for that slot
	cp b         ; check it against the item we are looking for
	jr z, .found ; jump if we found it, otherwise...
	inc c        ; increase the slot count
	inc hl       ; skip the item's quantity
	jr .loop     ; and keep looking
	
	; once we've found the item's slot number
.found
	ld a, c ; get the slot number we found
	ld [wWhichPokemon], a ; store it here
	call UseItem ; use the Repel
	jr .done
	
.saidNo
	pop bc
.done
	ret

RepelWoreOffText:: ; Moved out of Bank 0
	TX_FAR _RepelWoreOffText
	db "@"

UseAnotherText:
	text "Use another one?@@"
	
;***************************************************************************************************
; Copied pretty much verbatim from proof-of-concept code by Yenatch.
; Expanded by Mateo to work more like Gen 2, and to fix a bug with Cut requiring the wrong badge.
; Additional comments added by Mateo to clarify existing yenatch code and new Mateo code.
TryFieldMove:: ; predef
	call GetPredefRegisters

.Main:
	call TrySurf
	ret z
	call TryCut
	ret
;	ret z
;	call TryStrength
;	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;
;surf
;;;;;;;;;;;;;;;;;;;;;;;;;;
TrySurf:
; Check if you are already surfing, and don't do anything if you are.
	ld a, [wWalkBikeSurfState]
	cp 2
	jr z, .no

; Check to make sure you are facing a surfable tile.
	call IsSurfTile
	jr nc, .no

; Check to make sure you aren't on top of a cliff or something.
	ld hl,TilePairCollisionsWater
	call CheckForTilePairCollisions2
	jr c, .no

; Check for a Pokemon in the party with SURF, and for the proper badge to use it.
	ld d, SURF
	call HasPartyMove
	jr nz, .no

	ld a, [wObtainedBadges]
	bit 4, a ; SOUL_BADGE
	jr z, .no
	
; Are we allowed to surf here?
	call Text2_EnterTheText
	callba IsSurfingAllowed ; in current Pokered, this is callba IsSurfingAllowed
	ld hl,wd728
	bit 1,[hl]
	res 1,[hl]
	jr z,.no2

; Display "The water is calm. Do you want to SURF?" prompt like Gen 2 does.
	ld hl,WaterIsCalmTxt
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .no2

; Call the Surf routine if you said yes.
	call GetPartyMonName2
	ld a, SURFBOARD
	ld [wcf91], a
	ld [wPseudoItemID], a
	call UseItem
	call Text3_DrakesDeception

.yes
	xor a
	ret
	
.no2
	call Text3_DrakesDeception
.no
	ld a, 1
	and a
	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;
;cut
;;;;;;;;;;;;;;;;;;;;;;;;;;
TryCut: ; yenatch's code originally checked for the SOUL_BADGE like SURF does by mistake.
	call IsCutTile
	jr nc, .no
	
	; Prints the "This tree can be cut!" message, whether you can CUT yet or not.
	call Text2_EnterTheText
	ld hl,CanBeCutTxt
	call PrintText
	call ManualTextScroll

	; Makes sure you have a Pokemon with CUT and have the proper badge.
	ld d, CUT
	call HasPartyMove
	jr nz, .no2

	ld a, [wObtainedBadges]
	bit 1, a ; CASCADE_BADGE
	jr z, .no2

	; Asks the player if they want to use CUT, the way Gen 2 does.
	ld hl,WantToCutTxt
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .no2

	; Calls the CUT routine if they said Yes.
	call GetPartyMonName2
	farcall Cut2
	call Text3_DrakesDeception

.yes
	xor a
	ret
	
.no2
	call Text3_DrakesDeception
.no
	ld a, 1
	and a
	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;
;Strength
;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;
;surf tileset
;;;;;;;;;;;;;;;;;;;;;;;;;;
IsSurfTile:
	ld a, [wCurMapTileset]
	ld hl, WaterTilesets2
	ld de,1
	call IsInArray
	jr nc, .no

	ld a, [wCurMapTileset]
	cp SHIP_PORT
	ld a, [wTileInFrontOfPlayer]
	jr z, .ok
	cp $48 ; east shore (safari zone)
	jr z, .yes
	cp $32 ; east shore
	jr z, .yes
.ok
	cp $14 ; water
	jr z, .yes
.no
	and a
	ret
.yes
	scf
	ret

; tilesets with water
; originally contained DOJO but that tileset does not exist in Red++
; just make sure this has all tilesets you want to surf in listed
WaterTilesets2: ; Renamed from what Yenatch called it, since that had overlap errors
	db OVERWORLD
	db FOREST
	;db SAFARI ; New tileset in Red++
	db GYM
	db SHIP
	db SHIP_PORT
	db CAVERN
	db FACILITY
	db PLATEAU
	;db ICE_CAVERN
	db -1

;;;;;;;;;;;;;;;;;;;;;;;;;
;cut tileset
;;;;;;;;;;;;;;;;;;;;;;;;;;
IsCutTile:
	ld a, [wCurMapTileset]
	and a ; OVERWORLD
	jr z, .overworld

	cp GYM
	jr z, .gym

	jr .no

.gym
	ld a, [wTileInFrontOfPlayer]
	cp $50 ; gym cut tree
	jr z, .yes
	jr .no

.overworld ; commented out options would let you run this when talking to tall grass if restored.
	ld a, [wTileInFrontOfPlayer]
	cp $3d ; cut tree
	jr z, .yes
;	cp $52 ; grass
;	jr z, .yes
;	jr .no

.no
	and a
	ret
.yes
	scf
	ret


;;;;;;;;;;;;;;;;;;;;;;;;;;
;strength tileset
;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;
;check HM in party
;;;;;;;;;;;;;;;;;;;;;;;;;;
HasPartyMove::
; Return z (optional: in wWhichTrade) if a PartyMon has move d.
; Updates wWhichPokemon.

	push bc
	push de
	push hl

	ld a, [wPartyCount]
	and a
	jr z, .no
	ld b, a
	ld c, 0
	ld hl, wPartyMons + (wPartyMon1Moves - wPartyMon1)
.loop
	ld e, NUM_MOVES
.check_move
	ld a, [hli]
	cp d
	jr z, .yes
	dec e
	jr nz, .check_move

	ld a, wPartyMon2 - wPartyMon1 - NUM_MOVES
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a

	inc c
	ld a, c
	cp b
	jr c, .loop
	jr .no

.yes
	ld a, c
	ld [wWhichPokemon], a
	xor a ; probably redundant
	ld [wWhichTrade], a
	jr .done
.no
	ld a, 1
	and a
	ld [wWhichTrade], a
.done
	pop hl
	pop de
	pop bc
	ret


Text2_EnterTheText: ; Gets everything setup to let you display text properly
	call EnableAutoTextBoxDrawing
	ld a, 1 ; not 0
	ld [hSpriteIndexOrTextID], a
	farcall DisplayTextIDInit
	ret

Text3_DrakesDeception: ; Closes the text out properly to prevent glitches
	ld a,[H_LOADEDROMBANK]
	push af
	jp CloseTextDisplay

;;;;;;;;;;;;;;;;;;;;;;;;;;
;surf text
;;;;;;;;;;;;;;;;;;;;;;;;;;
WaterIsCalmTxt:
	text "The water is calm."
	line "Would you like to"
	cont "use Surf?@@"

;;;;;;;;;;;;;;;;;;;;;;;;;;
;cut text
;;;;;;;;;;;;;;;;;;;;;;;;;;
CanBeCutTxt:
	text "This tree can be"
	line "Cut!@@"
	
WantToCutTxt:
	text "Would you like to"
	line "use Cut?@@"

;;;;;;;;;;;;;;;;;;;;;;;;;;
;strength text
;;;;;;;;;;;;;;;;;;;;;;;;;;
CanBePushTxt:
	text "This rock can be"
	line "Pushed!@@"
	
WantToPushTxt:
	text "Would you like to"
	line "use Push?@@"

	
;***************************************************************************************************
;these functions have been moved here from overworld.asm 
;and they have been modified to work with a bank call.
;This is to free up space in rom bank 0

handleDirectionButtonPressCall:	
	ld a, [wd730]
	bit 7, a ; are we simulating button presses?
	jr nz, .noDirectionChange ; ignore direction changes if we are
	ld a, [wCheckFor180DegreeTurn]
	and a
	jr z, .noDirectionChange
	ld a, [wPlayerDirection] ; new direction
	ld b, a
	ld a, [wPlayerLastStopDirection] ; old direction
	cp b
	jr z, .noDirectionChange
; Check whether the player did a 180-degree turn.
; It appears that this code was supposed to show the player rotate by having
; the player's sprite face an intermediate direction before facing the opposite
; direction (instead of doing an instantaneous about-face), but the intermediate
; direction is only set for a short period of time. It is unlikely for it to
; ever be visible because DelayFrame is called at the start of OverworldLoop and
; normally not enough cycles would be executed between then and the time the
; direction is set for V-blank to occur while the direction is still set.
	swap a ; put old direction in upper half
	or b ; put new direction in lower half
	cp (PLAYER_DIR_DOWN << 4) | PLAYER_DIR_UP ; change dir from down to up
	jr nz, .notDownToUp
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	jr .holdIntermediateDirectionLoop
.notDownToUp
	cp (PLAYER_DIR_UP << 4) | PLAYER_DIR_DOWN ; change dir from up to down
	jr nz, .notUpToDown
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	jr .holdIntermediateDirectionLoop
.notUpToDown
	cp (PLAYER_DIR_RIGHT << 4) | PLAYER_DIR_LEFT ; change dir from right to left
	jr nz, .notRightToLeft
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	jr .holdIntermediateDirectionLoop
.notRightToLeft
	cp (PLAYER_DIR_LEFT << 4) | PLAYER_DIR_RIGHT ; change dir from left to right
	jr nz, .holdIntermediateDirectionLoop
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
.holdIntermediateDirectionLoop
	call UpdateSprites	;joenote - make the transitional frames viewable
	call DelayFrame
	ld hl, wFlags_0xcd60
	set 2, [hl]
	ld hl, wCheckFor180DegreeTurn
	dec [hl]
	jr nz, .holdIntermediateDirectionLoop
	ld a, [wPlayerDirection]
	ld [wPlayerMovingDirection], a
	xor a
	ret
.noDirectionChange
	scf
	ret

CheckWestMap:
	ld a, [wXCoord]
	cp $ff
	jp nz, CheckEastMap	
	ld a, [wMapConn3Ptr]
	ld [wCurMap], a
	ld a, [wWestConnectedMapXAlignment] ; new X coordinate upon entering west map
	ld [wXCoord], a
	ld a, [wYCoord]
	ld c, a
	ld a, [wWestConnectedMapYAlignment] ; Y adjustment upon entering west map
	add c
	ld c, a
	ld [wYCoord], a
	ld a, [wWestConnectedMapViewPointer] ; pointer to upper left corner of map without adjustment for Y position
	ld l, a
	ld a, [wWestConnectedMapViewPointer + 1]
	ld h, a
	srl c
	jr z, .savePointer1
.pointerAdjustmentLoop1
	ld a, [wWestConnectedMapWidth] ; width of connected map
	add MAP_BORDER * 2
	ld e, a
	ld d, 0
	ld b, 0
	add hl, de
	dec c
	jr nz, .pointerAdjustmentLoop1
.savePointer1
	ld a, l
	ld [wCurrentTileBlockMapViewPointer], a ; pointer to upper left corner of current tile block map section
	ld a, h
	ld [wCurrentTileBlockMapViewPointer + 1], a	
	xor a ;zet zero flag
	ret
	
CheckEastMap:
	ld a, [wXCoord]
	ld b, a
	ld a, [wCurrentMapWidth2] ; map width
	cp b
	jp nz, CheckNorthMap
	ld a, [wMapConn4Ptr]
	ld [wCurMap], a
	ld a, [wEastConnectedMapXAlignment] ; new X coordinate upon entering east map
	ld [wXCoord], a
	ld a, [wYCoord]
	ld c, a
	ld a, [wEastConnectedMapYAlignment] ; Y adjustment upon entering east map
	add c
	ld c, a
	ld [wYCoord], a
	ld a, [wEastConnectedMapViewPointer] ; pointer to upper left corner of map without adjustment for Y position
	ld l, a
	ld a, [wEastConnectedMapViewPointer + 1]
	ld h, a
	srl c
	jr z, .savePointer2
.pointerAdjustmentLoop2
	ld a, [wEastConnectedMapWidth]
	add MAP_BORDER * 2
	ld e, a
	ld d, 0
	ld b, 0
	add hl, de
	dec c
	jr nz, .pointerAdjustmentLoop2
.savePointer2
	ld a, l
	ld [wCurrentTileBlockMapViewPointer], a ; pointer to upper left corner of current tile block map section
	ld a, h
	ld [wCurrentTileBlockMapViewPointer + 1], a
	xor a
	ret
	
CheckNorthMap:
	ld a, [wYCoord]
	cp $ff
	jp nz, CheckSouthMap
	ld a, [wMapConn1Ptr]
	ld [wCurMap], a
	ld a, [wNorthConnectedMapYAlignment] ; new Y coordinate upon entering north map
	ld [wYCoord], a
	ld a, [wXCoord]
	ld c, a
	ld a, [wNorthConnectedMapXAlignment] ; X adjustment upon entering north map
	add c
	ld c, a
	ld [wXCoord], a
	ld a, [wNorthConnectedMapViewPointer] ; pointer to upper left corner of map without adjustment for X position
	ld l, a
	ld a, [wNorthConnectedMapViewPointer + 1]
	ld h, a
	ld b, 0
	srl c
	add hl, bc
	ld a, l
	ld [wCurrentTileBlockMapViewPointer], a ; pointer to upper left corner of current tile block map section
	ld a, h
	ld [wCurrentTileBlockMapViewPointer + 1], a
	xor a
	ret

CheckSouthMap:
	ld a, [wYCoord]
	ld b, a
	ld a, [wCurrentMapHeight2]
	cp b
	ret nz
	ld a, [wMapConn2Ptr]
	ld [wCurMap], a
	ld a, [wSouthConnectedMapYAlignment] ; new Y coordinate upon entering south map
	ld [wYCoord], a
	ld a, [wXCoord]
	ld c, a
	ld a, [wSouthConnectedMapXAlignment] ; X adjustment upon entering south map
	add c
	ld c, a
	ld [wXCoord], a
	ld a, [wSouthConnectedMapViewPointer] ; pointer to upper left corner of map without adjustment for X position
	ld l, a
	ld a, [wSouthConnectedMapViewPointer + 1]
	ld h, a
	ld b, 0
	srl c
	add hl, bc
	ld a, l
	ld [wCurrentTileBlockMapViewPointer], a ; pointer to upper left corner of current tile block map section
	ld a, h
	ld [wCurrentTileBlockMapViewPointer + 1], a
	xor a
	ret
;***************************************************************************************************
