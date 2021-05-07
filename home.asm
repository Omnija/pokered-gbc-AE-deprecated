
SECTION "NULL", ROM0
NULL::

INCLUDE "home/header.asm"



SECTION "Home", ROM0



INCLUDE "home/lcd.asm"
INCLUDE "home/clear_sprites.asm"
INCLUDE "home/copy.asm"



SECTION "ColorizationHome",ROM0

INCLUDE "home/InitializeColor.asm"


SECTION "Entry", ROM0
	jp InitializeColor


SECTION "Header", ROM0

	; The header is generated by rgbfix.
	; The space here is allocated to prevent code from being overwritten.

	ds $150 - $104


SECTION "Main", ROM0

INCLUDE "home/start.asm"
INCLUDE "home/joypad.asm"
INCLUDE "home/joypad2.asm"

INCLUDE "data/maps/map_header_pointers.asm"

INCLUDE "home/overworld.asm"
INCLUDE "home/pokemon.asm"
INCLUDE "home/print_bcd.asm"
INCLUDE "home/pics.asm"


INCLUDE "data/maps/collision.asm"
INCLUDE "home/copy2.asm"
INCLUDE "home/text.asm"
INCLUDE "home/vcopy.asm"
INCLUDE "home/init.asm"
INCLUDE "home/vblank.asm"
INCLUDE "home/fade.asm"
INCLUDE "home/serial.asm"
INCLUDE "home/timer.asm"
INCLUDE "home/audio.asm"
INCLUDE "home/update_sprites.asm"

INCLUDE "data/items/mart_inventories.asm"

INCLUDE "home/overworld_text.asm"
INCLUDE "home/uncompress.asm"
INCLUDE "home/reset_player_sprite.asm"
INCLUDE "home/fade_audio.asm"
INCLUDE "home/text_script.asm"
INCLUDE "engine/menus/start_menu.asm"
INCLUDE "home/count_set_bits.asm"
INCLUDE "home/inventory.asm"
INCLUDE "home/list_menu.asm"
INCLUDE "home/names.asm"
INCLUDE "home/names2.asm"
INCLUDE "home/reload_tiles.asm"
INCLUDE "home/reload_sprites.asm"
INCLUDE "home/item.asm"
INCLUDE "home/textbox.asm"
INCLUDE "home/npc_movement.asm"
INCLUDE "home/trainers.asm"
INCLUDE "home/trainers2.asm"
INCLUDE "home/map_objects.asm"
INCLUDE "home/money.asm"
INCLUDE "home/bankswitch.asm"
INCLUDE "home/yes_no.asm"
INCLUDE "home/pathfinding.asm"
INCLUDE "home/load_font.asm"
INCLUDE "home/tilemap.asm"
INCLUDE "home/delay.asm"
INCLUDE "home/item_price.asm"
INCLUDE "home/copy_string.asm"
INCLUDE "home/math.asm"
INCLUDE "home/print_text.asm"
INCLUDE "home/print_num.asm"
INCLUDE "home/move_mon.asm"
INCLUDE "home/array.asm"
INCLUDE "home/array2.asm"
INCLUDE "home/compare.asm"
INCLUDE "home/oam.asm"
INCLUDE "home/window.asm"
INCLUDE "home/palettes.asm"
INCLUDE "home/give.asm"
INCLUDE "home/random.asm"
INCLUDE "home/predef.asm"
INCLUDE "home/predef_text.asm"
INCLUDE "home/hidden_objects.asm"

; Note: this saves rSVBK before calling an interrupt. It would also make sense to save
; rVBK. However, doing that would break the code that fixes the ss anne's palettes on
; departure. Instead, just be careful not to set the vram bank to 1 while interrupts are
; enabled...? (Or better yet do the ss anne fix properly...)
InterruptWrapper:
	push af
	push bc
	push de
	ld a,[rSVBK]
	ld b,a

	ld a,[H_LOADEDROMBANK]
	ld c,a

	; Change ROM bank if an interrupt occurred in the middle of DelayFrameHook
	ld a,[hDelayFrameHookBank]
	and a
	jr z, .notInDelayFrame
	; Change rom bank
	dec a
	call SetRomBank
.notInDelayFrame

	xor a
	ld [rSVBK],a
	ld de,.ret
	push de
	jp hl
.ret
	ld a,b
	ld [rSVBK],a
	ld a,c
	call SetRomBank
	pop de
	pop bc
	pop af
	pop hl
	reti

; Whenever DelayFrame is called, update the sprites.
; This is done here instead of at vblank to prevent sprite wobbliness when scrolling.
; In some situations, DelayFrame is not called every frame, and this could be problematic.
; But I think when sprites are being animated or moved around, it is always called.
DelayFrameHook:
	push bc
	push de
	push hl

	ld a, [rSVBK]
	ld b, a
	xor a
	ld [rSVBK], a
	push bc ; Save wram bank

	; Save the current rom bank to a variable. This is important because the game does
	; not expect the "DelayFrame" function to change the rom bank. If an interrupt
	; occurs in the middle of this hook, the interrupt wrapper will know to restore
	; the rom bank.
	; An alternative solution would be to use "di/ei", but that was the cause of
	; graphical corruption in the pokemart when getting oak's parcel.
	ld a, [H_LOADEDROMBANK]
	inc a
	ld [hDelayFrameHookBank], a

	; Calling "PrepareOAMData" here instead of at vblank to prevent sprite wobbliness
	CALL_INDIRECT PrepareOAMData
	jr z, .spritesDrawn

	CALL_INDIRECT ColorNonOverworldSprites
.spritesDrawn

	; Clear hDelayFrameHookBank. (No need to reload the bank; that's done
	; automatically by CALL_INDIRECT.)
	xor a
	ld [hDelayFrameHookBank], a

	pop af
	ld [rSVBK],a ; Restore wram bank

	ld a,1
	ld [H_VBLANKOCCURRED],a
	pop hl
	pop de
	pop bc
	ret