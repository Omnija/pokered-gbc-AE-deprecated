MrPsychicsHouse_Object:
	db $a ; border block

	db 2 ; warps
	warp 2, 7, 7, -1
	warp 3, 7, 7, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_FISHER, 5, 3, STAY, LEFT, 1 ; person
	object SPRITE_OAK_AIDE, 5, 4, STAY, LEFT, 2	; move deleter
	object SPRITE_OAK_AIDE, 2, 4, STAY, RIGHT, 3	; move relearner
;	object SPRITE_OAK_AIDE, 2, 3, STAY, RIGHT, 3	; move tutor

	; warp-to
	warp_to 2, 7, MR_PSYCHICS_HOUSE_WIDTH
	warp_to 3, 7, MR_PSYCHICS_HOUSE_WIDTH
