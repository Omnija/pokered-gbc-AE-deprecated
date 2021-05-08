;***************************************************************************************************
;Located engine/overworld/trainers.asm
;Turn to face enemy trainers when seen by them
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FaceEnemyTrainer:: ; face trainer
	ld a, [wTrainerFacingDirection]
	and a ; SPRITE_FACING_DOWN
	jr z, .facingDown
	cp SPRITE_FACING_UP
	jr z, .facingUp
	cp SPRITE_FACING_LEFT
	jr z, .facingLeft
; facing right
	ld a, PLAYER_DIR_LEFT
	jr .done
.facingDown
	ld a, PLAYER_DIR_UP
	jr .done
.facingUp
	ld a, PLAYER_DIR_DOWN
	jr .done
.facingLeft
	ld a, PLAYER_DIR_RIGHT
.done
	ld [wPlayerMovingDirection], a ; update player facing
	ret