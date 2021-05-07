GetItemPrice::
; Stores item's price as BCD at hItemPrice (3 bytes)
; Input: [wcf91] = item id
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, [wListMenuID]
	cp MOVESLISTMENU
	ld a, BANK(ItemPrices)
	jr nz, .ok
	ld a, $f ; hardcoded Bank
.ok
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ld hl, wItemPrices
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcf91] ; a contains item id
	cp HM_01
	jr nc, .getTMPrice
	ld bc, $3
.loop
	add hl, bc
	dec a
	jr nz, .loop
	dec hl
	ld a, [hld]
	ld [hItemPrice + 2], a
	ld a, [hld]
	ld [hItemPrice + 1], a
	ld a, [hl]
	ld [hItemPrice], a
	jr .done
.getTMPrice
	ld a, Bank(GetMachinePrice)
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	call GetMachinePrice
.done
	ld de, hItemPrice
	pop af
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret