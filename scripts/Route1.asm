Route1_Script:
	jp EnableAutoTextBoxDrawing

Route1_TextPointers:
	dw Route1Text1
	dw Route1Text2
	dw Route1Text3

Route1Text1:
	TX_ASM
	CheckAndSetEvent EVENT_GOT_POTION_SAMPLE
	jr nz, .asm_1cada
	ld hl, Route1ViridianMartSampleText
	call PrintText
	; All Badges

	; All HM
	lb bc, HM_01, 1
	call GiveItem
	lb bc, HM_02, 1
	call GiveItem
	lb bc, HM_03, 1
	call GiveItem
	lb bc, HM_04, 1
	call GiveItem
	lb bc, HM_05, 1
	call GiveItem
	; Useful items
	lb bc, EXP_ALL, 1
	call GiveItem
	lb bc, BICYCLE, 1
	call GiveItem
	lb bc, TOWN_MAP, 1
	call GiveItem
	lb bc, POKE_FLUTE, 1
	call GiveItem
	lb bc, MAX_REPEL, 99
	call GiveItem
	lb bc, ESCAPE_ROPE, 99
	call GiveItem
	and a
	jr z, .continue
	; Return to script
	lb bc, POTION, 1
	call GiveItem
.continue
	jr nc, .BagFull
	ld hl, Route1Text_1cae8
	jr .asm_1cadd
.BagFull
	ld hl, Route1Text_1caf3
	jr .asm_1cadd
.asm_1cada
	ld hl, Route1Text_1caee
.asm_1cadd
	call PrintText
	jp TextScriptEnd

Route1ViridianMartSampleText:
	TX_FAR _Route1ViridianMartSampleText
	db "@"

Route1Text_1cae8:
	TX_FAR _Route1Text_1cae8
	TX_SFX_ITEM_1
	db "@"

Route1Text_1caee:
	TX_FAR _Route1Text_1caee
	db "@"

Route1Text_1caf3:
	TX_FAR _Route1Text_1caf3
	db "@"

Route1Text2:
	TX_FAR _Route1Text2
	db "@"

Route1Text3:
	TX_FAR _Route1Text3
	db "@"
