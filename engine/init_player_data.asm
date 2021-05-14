InitPlayerData:
InitPlayerData2:
; Start by generating the player ID
	call Random
	ld a, [hRandomSub]
	ld [wPlayerID], a

	call Random
	ld a, [hRandomAdd]
	ld [wPlayerID + 1], a

; Not sure what this is for?
	ld a, $ff
	ld [wUnusedD71B], a

; Initialize the party, bag, PC, etc.
	ld hl, wPartyCount
	call InitializeEmptyList
	ld hl, wNumInBox
	call InitializeEmptyList
	ld hl, wNumBagItems
	call InitializeEmptyList
	ld hl, wNumBoxItems
	call InitializeEmptyList

START_MONEY EQU $5000
	ld hl, wPlayerMoney + 1
	ld a, START_MONEY / $100
	ld [hld], a
	xor a
	ld [hli], a
	inc hl
	ld [hl], a

	ld [wMonDataLocation], a

; Obtained badges
	ld hl, wObtainedBadges
; Obtain All Badges
;	set 0, [hl]
;	set 1, [hl]
;	set 2, [hl]
;	set 3, [hl]
;	set 4, [hl]
;	set 5, [hl]
;	set 6, [hl]
;	set 7, [hl]
;	ld hl, wBeatGymFlags
;	set 0, [hl]
;	set 1, [hl]
;	set 2, [hl]
;	set 3, [hl]
;	set 4, [hl]
;	set 5, [hl]
;	set 6, [hl]
;	set 7, [hl]
	ld [hli], a
	ld [hl], a
	
; Obtain All TMS
;	lb bc, TM_01, 1
;	call GiveItem
	
; Obtain All HMS
;	lb bc, HM_01, 1
;	call GiveItem
;	lb bc, HM_02, 1
;	call GiveItem
;	lb bc, HM_03, 1
;	call GiveItem
;	lb bc, HM_04, 1
;	call GiveItem
;	lb bc, HM_05, 1
;	call GiveItem
	
; Obtain Key Items
;	lb bc, EXP_ALL, 1
;	call GiveItem
;	lb bc, BICYCLE, 1
;	call GiveItem
;	lb bc, SUPER_ROD, 1
;	call GiveItem
;	lb bc, POKE_FLUTE, 1
;	call GiveItem
;	lb bc, SILPH_SCOPE, 1
;	call GiveItem
	
; Obtain Items
;	lb bc, MAX_REPEL, 99
;	call GiveItem
;	lb bc, ESCAPE_ROPE, 99
;	call GiveItem
;	lb bc, MASTER_BALL, 99
;	call GiveItem

; Give Pokemon
;	lb bc, MEW, 50
;	call GivePokemon
	
; Initialize player coins
	ld hl, wPlayerCoins
	ld [hli], a
	ld [hl], a

; Initialize the variable sprites
	ld hl, VarSpriteTable
	ld de, wVarSprites
	ld bc, VarSpriteTableEnd - VarSpriteTable
	call CopyData

; Initialize map script numbers
	xor a
	ld hl, wGameProgressFlags
	ld bc, wGameProgressFlagsEnd - wGameProgressFlags
	call FillMemory ; clear all game progress flags

	jp InitializeMissableObjectsFlags
	
INCLUDE "data/default_var_sprites.asm"

InitializeEmptyList:
	xor a ; count
	ld [hli], a
	dec a ; terminator
	ld [hl], a
	ret
