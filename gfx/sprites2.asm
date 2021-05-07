; SECTION "NPC Sprites 2", ROMX ; BANK $05

; Adding Green
IF DEF(_RED)
RedSprite:            INCBIN "gfx/player/sprites/red.2bpp"
RedCyclingSprite:     INCBIN "gfx/player/sprites/redcycling.2bpp"
GreenSprite:           INCBIN "gfx/player/sprites/green.2bpp"
GreenCyclingSprite:    INCBIN "gfx/player/sprites/greencycling.2bpp"
ENDC
IF DEF(_BLUE)
RedSprite:            INCBIN "gfx/player/sprites/blue.2bpp"
RedCyclingSprite:     INCBIN "gfx/player/sprites/bluecycling.2bpp"
GreenSprite:           INCBIN "gfx/player/sprites/yellow.2bpp"
GreenCyclingSprite:    INCBIN "gfx/player/sprites/yellowcycling.2bpp"
ENDC

; Adding Red vs Blue Rival
IF DEF(_RED)
BlueSprite:           INCBIN "gfx/sprites/rivalr.2bpp"
ENDC
IF DEF(_BLUE)
BlueSprite:           INCBIN "gfx/sprites/rivalb.2bpp"
ENDC

OakSprite:            INCBIN "gfx/sprites/oak.2bpp"
BugCatcherSprite:     INCBIN "gfx/sprites/bug_catcher.2bpp"
SlowbroSprite:        INCBIN "gfx/sprites/slowbro.2bpp"
LassSprite:           INCBIN "gfx/sprites/lass.2bpp"
BlackHairBoy1Sprite:  INCBIN "gfx/sprites/black_hair_boy_1.2bpp"
LittleGirlSprite:     INCBIN "gfx/sprites/little_girl.2bpp"
BirdSprite:           INCBIN "gfx/sprites/bird.2bpp"
FatBaldGuySprite:     INCBIN "gfx/sprites/fat_bald_guy.2bpp"
GamblerSprite:        INCBIN "gfx/sprites/gambler.2bpp"
BlackHairBoy2Sprite:  INCBIN "gfx/sprites/black_hair_boy_2.2bpp"
GirlSprite:           INCBIN "gfx/sprites/girl.2bpp"
HikerSprite:          INCBIN "gfx/sprites/hiker.2bpp"
FoulardWomanSprite:   INCBIN "gfx/sprites/foulard_woman.2bpp"
GentlemanSprite:      INCBIN "gfx/sprites/gentleman.2bpp"
DaisySprite:          INCBIN "gfx/sprites/daisy.2bpp"
BikerSprite:          INCBIN "gfx/sprites/biker.2bpp"
SailorSprite:         INCBIN "gfx/sprites/sailor.2bpp"
CookSprite:           INCBIN "gfx/sprites/cook.2bpp"
BikeShopGuySprite:    INCBIN "gfx/sprites/bike_shop_guy.2bpp"
MrFujiSprite:         INCBIN "gfx/sprites/mr_fuji.2bpp"

; Relocated Giovanni and Rocket to NPC SPRITES 1

MediumSprite:         INCBIN "gfx/sprites/medium.2bpp"
WaiterSprite:         INCBIN "gfx/sprites/waiter.2bpp"
ErikaSprite:          INCBIN "gfx/sprites/erika.2bpp"
MomGeishaSprite:      INCBIN "gfx/sprites/mom_geisha.2bpp"
BrunetteGirlSprite:   INCBIN "gfx/sprites/brunette_girl.2bpp"
LanceSprite:          INCBIN "gfx/sprites/lance.2bpp"
MomSprite:            INCBIN "gfx/sprites/mom.2bpp"
BaldingGuySprite:     INCBIN "gfx/sprites/balding_guy.2bpp"
YoungBoySprite:       INCBIN "gfx/sprites/young_boy.2bpp"
GameboyKidSprite:     INCBIN "gfx/sprites/gameboy_kid.2bpp"
ClefairySprite:       INCBIN "gfx/sprites/clefairy.2bpp"
AgathaSprite:         INCBIN "gfx/sprites/agatha.2bpp"
BrunoSprite:          INCBIN "gfx/sprites/bruno.2bpp"
LoreleiSprite:        INCBIN "gfx/sprites/lorelei.2bpp"
; Relocated Seel Sprite to Pic 2
;SeelSprite:           INCBIN "gfx/sprites/seel.2bpp"
; Adding New Surf
LaprasSprite:         INCBIN "gfx/sprites/lapras.2bpp"