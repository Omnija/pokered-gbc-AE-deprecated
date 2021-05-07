SECTION "rst 00", ROM0
_LoadMapVramAndColors:
	ld a,[H_LOADEDROMBANK]
	push af
	ld a,BANK(LoadMapVramAndColors)
	ld [$2000],a
	call LoadMapVramAndColors
	pop af
	ld [$2000],a
	ret

;SECTION "rst 08", ROM0

; HAX: rst10 is used for the vblank hook
SECTION "rst 10", ROM0
	ld b, BANK(GbcVBlankHook)
	ld hl, GbcVBlankHook
	jp Bankswitch

; HAX: rst18 can be used for "Bankswitch"
SECTION "rst 18", ROM0
	jp Bankswitch

; memory for rst vectors $20-$38 used by color hack

SetRomBank:
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	ret


; interrupts
SECTION "vblank", ROM0
	push hl
	ld hl, VBlank
	jp InterruptWrapper
SECTION "hblank", ROM0 ; HAX: interrupt wasn't used in original game
	push hl
	ld hl, _GbcPrepareVBlank
	jp InterruptWrapper
SECTION "timer",  ROM0
	push hl
	ld hl, Timer
	jp InterruptWrapper
SECTION "serial", ROM0
	push hl
	ld hl, Serial
	jp InterruptWrapper
SECTION "joypad", ROM0
	reti