IF GEN_2_GRAPHICS

;Adding Green
IF DEF(_RED)
RedPicFront:: INCBIN "gfx/player/trainers/red.pic"
GreenPicFront:: INCBIN "gfx/player/trainers/green.pic"
ENDC
IF DEF(_BLUE)
RedPicFront:: INCBIN "gfx/player/trainers/blue.pic"
GreenPicFront:: INCBIN "gfx/player/trainers/yellow.pic"
ENDC

rept 11 ; Padding
	db 0
endr

;Adding Green
ELSE
IF DEF(_RED)
RedPicFront:: INCBIN "gfx/player/trainers/red.pic"
GreenPicFront:: INCBIN "gfx/player/trainers/green.pic"
ENDC
IF DEF(_BLUE)
RedPicFront:: INCBIN "gfx/player/trainers/blue.pic"
GreenPicFront:: INCBIN "gfx/player/trainers/yellow.pic"
ENDC

ENDC

ShrinkPic1::  INCBIN "gfx/player/trainers/shrink1.pic"
ShrinkPic2::  INCBIN "gfx/player/trainers/shrink2.pic"