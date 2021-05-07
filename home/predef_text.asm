PrintPredefTextID::
	ld [hSpriteIndexOrTextID], a
	ld hl, TextPredefs
	call SetMapTextPointer
	ld hl, wTextPredefFlag
	set 0, [hl]
	call DisplayTextID

RestoreMapTextPointer::
	ld hl, wMapTextPtr
	ld a, [$ffec]
	ld [hli], a
	ld a, [$ffec + 1]
	ld [hl], a
	ret

SetMapTextPointer::
	ld a, [wMapTextPtr]
	ld [$ffec], a
	ld a, [wMapTextPtr + 1]
	ld [$ffec + 1], a
	ld a, l
	ld [wMapTextPtr], a
	ld a, h
	ld [wMapTextPtr + 1], a
	ret
	
INCLUDE "data/text/text_predef_pointers.asm"
