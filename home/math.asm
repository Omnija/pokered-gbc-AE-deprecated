; function to do multiplication
; all values are big endian
; INPUT
; FF96-FF98 =  multiplicand
; FF99 = multiplier
; OUTPUT
; FF95-FF98 = product
Multiply::
	push hl
	push bc
	callab _Multiply
	pop bc
	pop hl
	ret

; function to do division
; all values are big endian
; INPUT
; FF95-FF98 = dividend
; FF99 = divisor
; b = number of bytes in the dividend (starting from FF95)
; OUTPUT
; FF95-FF98 = quotient
; FF99 = remainder
Divide::
	push hl
	push de
	push bc
	ld a, [H_LOADEDROMBANK]
	push af
	ld a, Bank(_Divide)
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	call _Divide
	pop af
	ld [H_LOADEDROMBANK], a
	ld [MBC1RomBank], a
	pop bc
	pop de
	pop hl
	ret