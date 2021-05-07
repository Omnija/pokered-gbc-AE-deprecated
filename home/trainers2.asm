GetTrainerInformation::
	call GetTrainerName
	ld a, [wLinkState]
	and a
	jr nz, .linkBattle
	ld a, Bank(TrainerPicAndMoneyPointers)
	call BankswitchHome
	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerPicAndMoneyPointers
	ld bc, $5
	call AddNTimes
	ld de, wTrainerPicPointer
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld de, wTrainerBaseMoney
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	jp BankswitchBack
.linkBattle
	ld hl, wTrainerPicPointer
	ld de, RedPicFront	
	;Gender Check Display Opposite
;	ld de,GreenPicFront  
;	ld a, [wPlayerGender]
;	and a
;	jr z, .AreBoy
;	ld de, RedPicFront
;.AreBoy
	ld [hl], e
	inc hl
	ld [hl], d
	ret

GetTrainerName::
	jpba GetTrainerName_

