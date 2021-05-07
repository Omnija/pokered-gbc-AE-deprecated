; Macros for color hack

; rst $18 = bankswitch
CALL_INDIRECT: MACRO
	ld b, BANK(\1)
	ld hl, \1
	rst $18
ENDM
