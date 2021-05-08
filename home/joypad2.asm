; this function is used when lower button sensitivity is wanted (e.g. menus)
; OUTPUT: [hJoy5] = pressed buttons in usual format
; there are two flags that control its functionality, [hJoy6] and [hJoy7]
; there are essentially three modes of operation
; 1. Get newly pressed buttons only
;    ([hJoy7] == 0, [hJoy6] == any)
;    Just copies [hJoyPressed] to [hJoy5].
; 2. Get currently pressed buttons at low sample rate with delay
;    ([hJoy7] == 1, [hJoy6] != 0)
;    If the user holds down buttons for more than half a second,
;    report buttons as being pressed up to 12 times per second thereafter.
;    If the user holds down buttons for less than half a second,
;    report only one button press.
; 3. Same as 2, but report no buttons as pressed if A or B is held down.
;    ([hJoy7] == 1, [hJoy6] == 0)
JoypadLowSensitivity::
	call Joypad
	ld a, [hJoy7] ; flag
	and a ; get all currently pressed buttons or only newly pressed buttons?
	ld a, [hJoyPressed] ; newly pressed buttons
	jr z, .storeButtonState
	ld a, [hJoyHeld] ; all currently pressed buttons
.storeButtonState
	ld [hJoy5], a
	ld a, [hJoyPressed] ; newly pressed buttons
	and a ; have any buttons been newly pressed since last check?
	jr z, .noNewlyPressedButtons
.newlyPressedButtons
	ld a, 30 ; half a second delay
	ld [H_FRAMECOUNTER], a
	ret
.noNewlyPressedButtons
	ld a, [H_FRAMECOUNTER]
	and a ; is the delay over?
	jr z, .delayOver
.delayNotOver
	xor a
	ld [hJoy5], a ; report no buttons as pressed
	ret
.delayOver
; if [hJoy6] = 0 and A or B is pressed, report no buttons as pressed
	ld a, [hJoyHeld]
	and A_BUTTON | B_BUTTON
	jr z, .setShortDelay
	ld a, [hJoy6] ; flag
	and a
	jr nz, .setShortDelay
	xor a
	ld [hJoy5], a
.setShortDelay
	ld a, 5 ; 1/12 of a second delay
	ld [H_FRAMECOUNTER], a
	ret

WaitForTextScrollButtonPress::
	ld a, [H_DOWNARROWBLINKCNT1]
	push af
	ld a, [H_DOWNARROWBLINKCNT2]
	push af
	xor a
	ld [H_DOWNARROWBLINKCNT1], a
	ld a, $6
	ld [H_DOWNARROWBLINKCNT2], a
.loop
	push hl
	ld a, [wTownMapSpriteBlinkingEnabled]
	and a
	jr z, .skipAnimation
	call TownMapSpriteBlinkingAnimation
.skipAnimation
	coord hl, 18, 16
	call HandleDownArrowBlinkTiming
	pop hl
	call JoypadLowSensitivity
	predef CableClub_Run
	ld a, [hJoy5]
	and A_BUTTON | B_BUTTON
	jr z, .loop
	pop af
	ld [H_DOWNARROWBLINKCNT2], a
	pop af
	ld [H_DOWNARROWBLINKCNT1], a
	ret

; (unless in link battle) waits for A or B being pressed and outputs the scrolling sound effect
ManualTextScroll:: ; 3898 (0:3898)
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	jr z, .inLinkBattle
	call WaitForTextScrollButtonHold
	ld a, SFX_PRESS_AB
	jp PlaySound
.inLinkBattle
	ld c, 65
	jp DelayFrames
	
WaitForTextScrollButtonHold:
	ld a, [hJoy7]
	push af
	ld a, [hJoy6]
	push af
	ld a, $1
	ld [hJoy7], a
	ld a, $ff
	ld [hJoy6], a
	call WaitForTextScrollButtonPress
	pop af
	ld [hJoy6], a
	pop af
	ld [hJoy7], a
	ret
