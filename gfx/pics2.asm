; SECTION "Pics 2", ROMX ; BANK $0A

IF GEN_2_GRAPHICS
HaunterPicFront:    INCBIN "gfx/pokemon/gsfront/haunter.pic"
HaunterPicBack:     INCBIN "gfx/pokemon/gsback/haunterb.pic"
AbraPicFront:       INCBIN "gfx/pokemon/gsfront/abra.pic"
AbraPicBack:        INCBIN "gfx/pokemon/gsback/abrab.pic"
AlakazamPicFront:   INCBIN "gfx/pokemon/gsfront/alakazam.pic"
AlakazamPicBack:    INCBIN "gfx/pokemon/gsback/alakazamb.pic"
PidgeottoPicFront:  INCBIN "gfx/pokemon/gsfront/pidgeotto.pic"
PidgeottoPicBack:   INCBIN "gfx/pokemon/gsback/pidgeottob.pic"
PidgeotPicFront:    INCBIN "gfx/pokemon/gsfront/pidgeot.pic"
PidgeotPicBack:     INCBIN "gfx/pokemon/gsback/pidgeotb.pic"
StarmiePicFront:    INCBIN "gfx/pokemon/gsfront/starmie.pic"
StarmiePicBack:     INCBIN "gfx/pokemon/gsback/starmieb.pic"

; Adding Green
IF DEF(_RED)
RedPicBack::           INCBIN "gfx/player/trainers/redb.pic"
GreenPicBack:        INCBIN "gfx/player/trainers/greenb.pic"
ENDC
IF DEF(_BLUE)
RedPicBack::           INCBIN "gfx/player/trainers/blueb.pic"
GreenPicBack:        INCBIN "gfx/player/trainers/yellowb.pic"
ENDC

OldManPic:          INCBIN "gfx/trainers/oldman.pic"

; Relocated Seel Sprite
SeelSprite:           INCBIN "gfx/sprites/seel.2bpp"

; Adding Green
IF DEF(_RED)
GreenFishingTilesFront: INCBIN "gfx/player/sprites/green_fishing_tile_front.2bpp"
GreenFishingTilesBack:  INCBIN "gfx/player/sprites/green_fishing_tile_back.2bpp"
GreenFishingTilesSide:  INCBIN "gfx/player/sprites/green_fishing_tile_side.2bpp"
ENDC
IF DEF(_BLUE)
GreenFishingTilesFront: INCBIN "gfx/player/sprites/yellow_fishing_tile_front.2bpp"
GreenFishingTilesBack:  INCBIN "gfx/player/sprites/yellow_fishing_tile_back.2bpp"
GreenFishingTilesSide:  INCBIN "gfx/player/sprites/yellow_fishing_tile_side.2bpp"
ENDC

GastlyPicFront:     INCBIN "gfx/pokemon/gsfront/gastly.pic"
GastlyPicBack:      INCBIN "gfx/pokemon/gsback/gastlyb.pic"
VileplumePicFront:  INCBIN "gfx/pokemon/gsfront/vileplume.pic"
VileplumePicBack:   INCBIN "gfx/pokemon/gsback/vileplumeb.pic"
ENDC

IF !GEN_2_GRAPHICS
HaunterPicFront:    INCBIN "gfx/pokemon/front/haunter.pic"
HaunterPicBack:     INCBIN "gfx/pokemon/back/haunterb.pic"
AbraPicFront:       INCBIN "gfx/pokemon/front/abra.pic"
AbraPicBack:        INCBIN "gfx/pokemon/back/abrab.pic"
AlakazamPicFront:   INCBIN "gfx/pokemon/front/alakazam.pic"
AlakazamPicBack:    INCBIN "gfx/pokemon/back/alakazamb.pic"
PidgeottoPicFront:  INCBIN "gfx/pokemon/front/pidgeotto.pic"
PidgeottoPicBack:   INCBIN "gfx/pokemon/back/pidgeottob.pic"
PidgeotPicFront:    INCBIN "gfx/pokemon/front/pidgeot.pic"
PidgeotPicBack:     INCBIN "gfx/pokemon/back/pidgeotb.pic"
StarmiePicFront:    INCBIN "gfx/pokemon/front/starmie.pic"
StarmiePicBack:     INCBIN "gfx/pokemon/back/starmieb.pic"

; Adding Green
IF DEF(_RED)
RedPicBack::           INCBIN "gfx/player/trainers/redb.pic"
GreenPicBack:        INCBIN "gfx/player/trainers/greenb.pic"
ENDC
IF DEF(_BLUE)
RedPicBack::           INCBIN "gfx/player/trainers/blueb.pic"
GreenPicBack:        INCBIN "gfx/player/trainers/yellowb.pic"
ENDC

OldManPic:          INCBIN "gfx/trainers/oldman.pic"

GastlyPicFront:     INCBIN "gfx/pokemon/front/gastly.pic"
GastlyPicBack:      INCBIN "gfx/pokemon/back/gastlyb.pic"
VileplumePicFront:  INCBIN "gfx/pokemon/front/vileplume.pic"
VileplumePicBack:   INCBIN "gfx/pokemon/back/vileplumeb.pic"
ENDC
