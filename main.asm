INCLUDE "constants.asm"

NPC_SPRITES_1 EQU $4
NPC_SPRITES_2 EQU $5

GFX EQU $4

PICS_1 EQU $9
PICS_2 EQU $A
PICS_3 EQU $B
PICS_4 EQU $C
PICS_5 EQU $D

INCLUDE "home.asm"

SECTION "bank1", ROMX

INCLUDE "data/facing.asm"

INCLUDE "engine/black_out.asm"

; Mew sprites removed from here
SECTION "Mew Base Stats",ROMX
;this has been moved to be with the other pokemon base stat files
;INCLUDE "data/baseStats/mew.asm"

INCLUDE "engine/battle/safari_zone.asm"

INCLUDE "engine/titlescreen.asm"
INCLUDE "engine/load_mon_data.asm"

INCLUDE "data/item_prices.asm"
INCLUDE "text/item_names.asm"
INCLUDE "text/unused_names.asm"

INCLUDE "engine/overworld/oam.asm"
INCLUDE "engine/oam_dma.asm"

INCLUDE "engine/print_waiting_text.asm"

INCLUDE "engine/overworld/map_sprite_functions1.asm"

INCLUDE "engine/test_battle.asm"

INCLUDE "engine/overworld/item.asm"
INCLUDE "engine/overworld/movement.asm"

INCLUDE "engine/cable_club.asm"

INCLUDE "engine/menu/main_menu.asm"

INCLUDE "engine/oak_speech.asm"

INCLUDE "engine/special_warps.asm"

INCLUDE "engine/debug1.asm"

INCLUDE "engine/menu/naming_screen.asm"

INCLUDE "engine/oak_speech2.asm"

INCLUDE "engine/subtract_paid_money.asm"

INCLUDE "engine/menu/swap_items.asm"

INCLUDE "engine/overworld/pokemart.asm"

INCLUDE "engine/learn_move.asm"

INCLUDE "engine/overworld/pokecenter.asm"

INCLUDE "engine/overworld/set_blackout_map.asm"

INCLUDE "engine/display_text_id_init.asm"
INCLUDE "engine/menu/draw_start_menu.asm"

INCLUDE "engine/overworld/cable_club_npc.asm"

INCLUDE "engine/menu/text_box.asm"

INCLUDE "engine/battle/moveEffects/drain_hp_effect.asm"

INCLUDE "engine/menu/players_pc.asm"

INCLUDE "engine/remove_pokemon.asm"

INCLUDE "engine/display_pokedex.asm"


; Hooks for color hack
INCLUDE "color/cable_club.asm"
INCLUDE "color/oak_intro.asm"
IF GEN_2_GRAPHICS
INCLUDE "color/load_hp_and_exp_bar.asm"
ENDC


SECTION "bank3",ROMX

INCLUDE "engine/joypad.asm"

INCLUDE "data/map_songs.asm"

INCLUDE "data/map_header_banks.asm"

INCLUDE "engine/overworld/clear_variables.asm"
INCLUDE "engine/overworld/player_state.asm"
INCLUDE "engine/overworld/poison.asm"
INCLUDE "engine/overworld/tileset_header.asm"
INCLUDE "engine/overworld/daycare_exp.asm"

INCLUDE "data/hide_show_data.asm"

INCLUDE "engine/overworld/field_move_messages.asm"

INCLUDE "engine/items/inventory.asm"

INCLUDE "engine/overworld/wild_mons.asm"

INCLUDE "engine/items/items.asm"

INCLUDE "engine/menu/draw_badges.asm"

INCLUDE "engine/overworld/update_map.asm"
INCLUDE "engine/overworld/cut.asm"
INCLUDE "engine/overworld/missable_objects.asm"
INCLUDE "engine/overworld/push_boulder.asm"

INCLUDE "engine/add_mon.asm"
INCLUDE "engine/flag_action.asm"
INCLUDE "engine/heal_party.asm"
INCLUDE "engine/bcd.asm"
INCLUDE "engine/init_player_data.asm"
INCLUDE "engine/get_bag_item_quantity.asm"
INCLUDE "engine/pathfinding.asm"
INCLUDE "engine/hp_bar.asm"
INCLUDE "engine/hidden_object_functions3.asm"

INCLUDE "color/update_hp_bar.asm"

SECTION "NPC Sprites 1", ROMX ; BANK $04

OakAideSprite:         INCBIN "gfx/sprites/oak_aide.2bpp"
RockerSprite:          INCBIN "gfx/sprites/rocker.2bpp"
SwimmerSprite:         INCBIN "gfx/sprites/swimmer.2bpp"
WhitePlayerSprite:     INCBIN "gfx/sprites/white_player.2bpp"
GymHelperSprite:       INCBIN "gfx/sprites/gym_helper.2bpp"
OldPersonSprite:       INCBIN "gfx/sprites/old_person.2bpp"
MartGuySprite:         INCBIN "gfx/sprites/mart_guy.2bpp"
FisherSprite:          INCBIN "gfx/sprites/fisher.2bpp"
OldMediumWomanSprite:  INCBIN "gfx/sprites/old_medium_woman.2bpp"
NurseSprite:           INCBIN "gfx/sprites/nurse.2bpp"
CableClubWomanSprite:  INCBIN "gfx/sprites/cable_club_woman.2bpp"
MrMasterballSprite:    INCBIN "gfx/sprites/mr_masterball.2bpp"
LaprasGiverSprite:     INCBIN "gfx/sprites/lapras_giver.2bpp"
WardenSprite:          INCBIN "gfx/sprites/warden.2bpp"
SsCaptainSprite:       INCBIN "gfx/sprites/ss_captain.2bpp"
Fisher2Sprite:         INCBIN "gfx/sprites/fisher2.2bpp"
BlackbeltSprite:       INCBIN "gfx/sprites/blackbelt.2bpp"
GuardSprite:           INCBIN "gfx/sprites/guard.2bpp"
BallSprite:            INCBIN "gfx/sprites/ball.2bpp"
OmanyteSprite:         INCBIN "gfx/sprites/omanyte.2bpp"
BoulderSprite:         INCBIN "gfx/sprites/boulder.2bpp"
PaperSheetSprite:      INCBIN "gfx/sprites/paper_sheet.2bpp"
BookMapDexSprite:      INCBIN "gfx/sprites/book_map_dex.2bpp"
ClipboardSprite:       INCBIN "gfx/sprites/clipboard.2bpp"
SnorlaxSprite:         INCBIN "gfx/sprites/snorlax.2bpp"
OldAmberSprite:        INCBIN "gfx/sprites/old_amber.2bpp"
LyingOldManSprite:     INCBIN "gfx/sprites/lying_old_man.2bpp"
; Relocated Giovanni and Rocket
GiovanniSprite:        INCBIN "gfx/sprites/giovanni.2bpp"
RocketSprite:          INCBIN "gfx/sprites/rocket.2bpp"


SECTION "Graphics (BANK 4)", ROMX

IF GEN_2_GRAPHICS
PokemonLogoGraphics:            INCBIN "gfx/title/new_pokemon_logo.2bpp"
FontGraphics:                   INCBIN "gfx/gui/gs/font.1bpp"
FontGraphicsEnd:
ELSE
PokemonLogoGraphics:            INCBIN "gfx/title/pokemon_logo.2bpp"
FontGraphics:                   INCBIN "gfx/gui/font.1bpp"
FontGraphicsEnd:
ENDC
ABTiles:                        INCBIN "gfx/misc/AB.2bpp"
IF GEN_2_GRAPHICS
HpBarAndStatusGraphics:  INCBIN "gfx/gui/gs/gen2_hp_bar_and_status.2bpp"
HpBarAndStatusGraphicsEnd:
BattleHudTiles1:         INCBIN "gfx/gui/gs/gen2_battle_arrow.1bpp"
BattleHudTiles1End:
BattleHudTiles2:         INCBIN "gfx/gui/gs/gen2_battle_arrow_lines.1bpp"
BattleHudTiles3:         INCBIN "gfx/gui/gs/gen2_battle_arrow_more_lines.1bpp"
BattleHudTiles3End:
ELSE
HpBarAndStatusGraphics:  INCBIN "gfx/gui/hp_bar_and_status.2bpp"
HpBarAndStatusGraphicsEnd:
BattleHudTiles1:         INCBIN "gfx/gui/battle_hud1.1bpp"
BattleHudTiles1End:
BattleHudTiles2:         INCBIN "gfx/gui/battle_hud2.1bpp"
BattleHudTiles3:         INCBIN "gfx/gui/battle_hud3.1bpp"
BattleHudTiles3End:
ENDC

NintendoCopyrightLogoGraphics:  INCBIN "gfx/title/copyright.2bpp"
GamefreakLogoGraphics:          INCBIN "gfx/title/gamefreak.2bpp"
GamefreakLogoGraphicsEnd:

IF GEN_2_GRAPHICS
TextBoxGraphics:                INCBIN "gfx/gui/gs/text_box.2bpp"
TextBoxGraphicsEnd:
ELSE
TextBoxGraphics:                INCBIN "gfx/gui/text_box.2bpp"
TextBoxGraphicsEnd:
ENDC
PokedexTileGraphics:            INCBIN "gfx/gui/pokedex.2bpp"
PokedexTileGraphicsEnd:
WorldMapTileGraphics:           INCBIN "gfx/gui/town_map.2bpp"
WorldMapTileGraphicsEnd:

; Adding Red vs Blue
IF DEF(_RED)
PlayerCharacterTitleGraphics:   INCBIN "gfx/title/red/player_title.2bpp"
ENDC
IF DEF(_BLUE)
PlayerCharacterTitleGraphics:   INCBIN "gfx/title/blue/player_title.2bpp"
ENDC

PlayerCharacterTitleGraphicsEnd:


SECTION "Battle (BANK 4)", ROMX

INCLUDE "engine/overworld/is_player_just_outside_map.asm"
INCLUDE "engine/menu/status_screen.asm"
INCLUDE "engine/menu/party_menu.asm"

IF GEN_2_GRAPHICS
;Adding Green
IF DEF(_RED)
RedPicFront:: 		INCBIN "gfx/trainers/gstrainer/red.pic"
GreenPicFront:: 	INCBIN "gfx/trainers/gstrainer/green.pic"
ENDC
IF DEF(_BLUE)
RedPicFront:: 		INCBIN "gfx/trainers/gstrainer/blue.pic"
GreenPicFront:: 	INCBIN "gfx/trainers/gstrainer/yellow.pic"
ENDC

rept 11 ; Padding
	db 0
endr

;Adding Green
ELSE
IF DEF(_RED)
RedPicFront:: 		INCBIN "gfx/trainers/trainer/red.pic"
GreenPicFront:: 	INCBIN "gfx/trainers/trainer/green.pic"
ENDC
IF DEF(_BLUE)
RedPicFront:: 		INCBIN "gfx/trainers/trainer/blue.pic"
GreenPicFront:: 	INCBIN "gfx/trainers/trainer/yellow.pic"
ENDC

ENDC


ShrinkPic1::  		INCBIN "gfx/sprites/shrink1.pic"
ShrinkPic2::  		INCBIN "gfx/sprites/shrink2.pic"

INCLUDE "engine/turn_sprite.asm"
INCLUDE "engine/menu/start_sub_menus.asm"
INCLUDE "engine/items/tms.asm"
INCLUDE "engine/battle/end_of_battle.asm"
INCLUDE "engine/battle/wild_encounters.asm"
INCLUDE "engine/battle/moveEffects/recoil_effect.asm"
INCLUDE "engine/battle/moveEffects/conversion_effect.asm"
INCLUDE "engine/battle/moveEffects/haze_effect.asm"
INCLUDE "engine/battle/get_trainer_name.asm"
INCLUDE "engine/random.asm"

INCLUDE "color/status_screen.asm"

IF GEN_2_GRAPHICS
EXPBarGraphics:  	  INCBIN "gfx/gui/gs/exp_bar.2bpp"
ENDC


SECTION "NPC Sprites 2", ROMX ; BANK $05

; Adding Green
IF DEF(_RED)
RedSprite:            INCBIN "gfx/sprites/red.2bpp"
RedCyclingSprite:     INCBIN "gfx/sprites/redcycling.2bpp"
GreenSprite:          INCBIN "gfx/sprites/green.2bpp"
GreenCyclingSprite:   INCBIN "gfx/sprites/greencycling.2bpp"
ENDC
IF DEF(_BLUE)
RedSprite:            INCBIN "gfx/sprites/blue.2bpp"
RedCyclingSprite:     INCBIN "gfx/sprites/bluecycling.2bpp"
GreenSprite:          INCBIN "gfx/sprites/yellow.2bpp"
GreenCyclingSprite:   INCBIN "gfx/sprites/yellowcycling.2bpp"
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


SECTION "Battle (BANK 5)", ROMX

INCLUDE "engine/load_pokedex_tiles.asm"
INCLUDE "engine/overworld/map_sprites.asm"
INCLUDE "engine/overworld/emotion_bubbles.asm"
INCLUDE "engine/evolve_trade.asm"
INCLUDE "engine/battle/moveEffects/substitute_effect.asm"
INCLUDE "engine/menu/pc.asm"


SECTION "bank6", ROMX

INCLUDE "data/mapHeaders/CeladonCity.asm"
INCLUDE "data/mapObjects/CeladonCity.asm"
CeladonCity_Blocks: INCBIN "maps/CeladonCity.blk"

INCLUDE "data/mapHeaders/PalletTown.asm"
INCLUDE "data/mapObjects/PalletTown.asm"
PalletTown_Blocks: INCBIN "maps/PalletTown.blk"

INCLUDE "data/mapHeaders/ViridianCity.asm"
INCLUDE "data/mapObjects/ViridianCity.asm"
ViridianCity_Blocks: INCBIN "maps/ViridianCity.blk"

INCLUDE "data/mapHeaders/PewterCity.asm"
	ds 1
INCLUDE "data/mapObjects/PewterCity.asm"
PewterCity_Blocks: INCBIN "maps/PewterCity.blk"

INCLUDE "data/mapHeaders/CeruleanCity.asm"
INCLUDE "data/mapObjects/CeruleanCity.asm"
CeruleanCity_Blocks: INCBIN "maps/CeruleanCity.blk"

INCLUDE "data/mapHeaders/VermilionCity.asm"
INCLUDE "data/mapObjects/VermilionCity.asm"
VermilionCity_Blocks: INCBIN "maps/VermilionCity.blk"

INCLUDE "data/mapHeaders/FuchsiaCity.asm"
INCLUDE "data/mapObjects/FuchsiaCity.asm"
FuchsiaCity_Blocks: INCBIN "maps/FuchsiaCity.blk"

INCLUDE "engine/play_time.asm"

INCLUDE "scripts/PalletTown.asm"
INCLUDE "scripts/ViridianCity.asm"
INCLUDE "scripts/PewterCity.asm"
INCLUDE "scripts/CeruleanCity.asm"
INCLUDE "scripts/VermilionCity.asm"
INCLUDE "scripts/CeladonCity.asm"
INCLUDE "scripts/FuchsiaCity.asm"

INCLUDE "data/mapHeaders/BluesHouse.asm"
INCLUDE "scripts/BluesHouse.asm"
INCLUDE "data/mapObjects/BluesHouse.asm"
BluesHouse_Blocks: INCBIN "maps/BluesHouse.blk"

INCLUDE "data/mapHeaders/VermilionTradeHouse.asm"
INCLUDE "scripts/VermilionTradeHouse.asm"
INCLUDE "data/mapObjects/VermilionTradeHouse.asm"
VermilionTradeHouse_Blocks: INCBIN "maps/VermilionTradeHouse.blk"

INCLUDE "data/mapHeaders/IndigoPlateauLobby.asm"
INCLUDE "scripts/IndigoPlateauLobby.asm"
INCLUDE "data/mapObjects/IndigoPlateauLobby.asm"
IndigoPlateauLobby_Blocks: INCBIN "maps/IndigoPlateauLobby.blk"

INCLUDE "data/mapHeaders/SilphCo4F.asm"
INCLUDE "scripts/SilphCo4F.asm"
INCLUDE "data/mapObjects/SilphCo4F.asm"
SilphCo4F_Blocks: INCBIN "maps/SilphCo4F.blk"

INCLUDE "data/mapHeaders/SilphCo5F.asm"
INCLUDE "scripts/SilphCo5F.asm"
INCLUDE "data/mapObjects/SilphCo5F.asm"
SilphCo5F_Blocks: INCBIN "maps/SilphCo5F.blk"

INCLUDE "data/mapHeaders/SilphCo6F.asm"
INCLUDE "scripts/SilphCo6F.asm"
INCLUDE "data/mapObjects/SilphCo6F.asm"
SilphCo6F_Blocks: INCBIN "maps/SilphCo6F.blk"

INCLUDE "engine/overworld/npc_movement.asm"
INCLUDE "engine/overworld/doors.asm"
INCLUDE "engine/overworld/ledges.asm"


SECTION "bank7", ROMX

; Custom Move_deleter/relearner
INCLUDE "custom_functions/func_npc.asm"

INCLUDE "data/mapHeaders/CinnabarIsland.asm"
INCLUDE "data/mapObjects/CinnabarIsland.asm"
CinnabarIsland_Blocks: INCBIN "maps/CinnabarIsland.blk"

INCLUDE "data/mapHeaders/Route1.asm"
INCLUDE "data/mapObjects/Route1.asm"
Route1_Blocks: INCBIN "maps/Route1.blk"

UndergroundPathRoute8_Blocks: INCBIN "maps/UndergroundPathRoute8.blk"

OaksLab_Blocks: INCBIN "maps/OaksLab.blk"

MrPsychicsHouse_Blocks:
NameRatersHouse_Blocks:
MrFujisHouse_Blocks:
Route16FlyHouse_Blocks:
Route2TradeHouse_Blocks:
SaffronPidgeyHouse_Blocks:
VermilionPidgeyHouse_Blocks:
LavenderCuboneHouse_Blocks:
CeruleanTradeHouse_Blocks:
PewterNidoranHouse_Blocks:
PewterSpeechHouse_Blocks:
ViridianNicknameHouse_Blocks: INCBIN "maps/ViridianNicknameHouse.blk"

CeladonMansionRoofHouse_Blocks:
ViridianSchoolHouse_Blocks: INCBIN "maps/ViridianSchoolHouse.blk"

CeruleanTrashedHouse_Blocks: INCBIN "maps/CeruleanTrashedHouse.blk"

DiglettsCaveRoute11_Blocks:
DiglettsCaveRoute2_Blocks: INCBIN "maps/DiglettsCaveRoute2.blk"

INCLUDE "text/monster_names.asm"

INCLUDE "engine/clear_save.asm"

INCLUDE "engine/predefs7.asm"

INCLUDE "scripts/CinnabarIsland.asm"

INCLUDE "scripts/Route1.asm"

INCLUDE "data/mapHeaders/OaksLab.asm"
INCLUDE "scripts/OaksLab.asm"
INCLUDE "data/mapObjects/OaksLab.asm"

INCLUDE "data/mapHeaders/ViridianMart.asm"
INCLUDE "scripts/ViridianMart.asm"
INCLUDE "data/mapObjects/ViridianMart.asm"
ViridianMart_Blocks: INCBIN "maps/ViridianMart.blk"

INCLUDE "data/mapHeaders/ViridianSchoolHouse.asm"
INCLUDE "scripts/ViridianSchoolHouse.asm"
INCLUDE "data/mapObjects/ViridianSchoolHouse.asm"

INCLUDE "data/mapHeaders/ViridianNicknameHouse.asm"
	ds 1
INCLUDE "scripts/ViridianNicknameHouse.asm"
INCLUDE "data/mapObjects/ViridianNicknameHouse.asm"

INCLUDE "data/mapHeaders/PewterNidoranHouse.asm"
INCLUDE "scripts/PewterNidoranHouse.asm"
INCLUDE "data/mapObjects/PewterNidoranHouse.asm"

INCLUDE "data/mapHeaders/PewterSpeechHouse.asm"
INCLUDE "scripts/PewterSpeechHouse.asm"
INCLUDE "data/mapObjects/PewterSpeechHouse.asm"

INCLUDE "data/mapHeaders/CeruleanTrashedHouse.asm"
INCLUDE "scripts/CeruleanTrashedHouse.asm"
INCLUDE "data/mapObjects/CeruleanTrashedHouse.asm"

INCLUDE "data/mapHeaders/CeruleanTradeHouse.asm"
INCLUDE "scripts/CeruleanTradeHouse.asm"
INCLUDE "data/mapObjects/CeruleanTradeHouse.asm"

INCLUDE "data/mapHeaders/BikeShop.asm"
INCLUDE "scripts/BikeShop.asm"
INCLUDE "data/mapObjects/BikeShop.asm"
BikeShop_Blocks: INCBIN "maps/BikeShop.blk"

INCLUDE "data/mapHeaders/MrFujisHouse.asm"
INCLUDE "scripts/MrFujisHouse.asm"
INCLUDE "data/mapObjects/MrFujisHouse.asm"

INCLUDE "data/mapHeaders/LavenderCuboneHouse.asm"
INCLUDE "scripts/LavenderCuboneHouse.asm"
INCLUDE "data/mapObjects/LavenderCuboneHouse.asm"

INCLUDE "data/mapHeaders/NameRatersHouse.asm"
INCLUDE "scripts/NameRatersHouse.asm"
INCLUDE "data/mapObjects/NameRatersHouse.asm"

INCLUDE "data/mapHeaders/VermilionPidgeyHouse.asm"
INCLUDE "scripts/VermilionPidgeyHouse.asm"
INCLUDE "data/mapObjects/VermilionPidgeyHouse.asm"

INCLUDE "data/mapHeaders/VermilionDock.asm"
INCLUDE "scripts/VermilionDock.asm"
INCLUDE "data/mapObjects/VermilionDock.asm"
VermilionDock_Blocks: INCBIN "maps/VermilionDock.blk"

INCLUDE "data/mapHeaders/CeladonMansionRoofHouse.asm"
INCLUDE "scripts/CeladonMansionRoofHouse.asm"
INCLUDE "data/mapObjects/CeladonMansionRoofHouse.asm"

INCLUDE "data/mapHeaders/FuchsiaMart.asm"
INCLUDE "scripts/FuchsiaMart.asm"
INCLUDE "data/mapObjects/FuchsiaMart.asm"
FuchsiaMart_Blocks: INCBIN "maps/FuchsiaMart.blk"

INCLUDE "data/mapHeaders/SaffronPidgeyHouse.asm"
INCLUDE "scripts/SaffronPidgeyHouse.asm"
INCLUDE "data/mapObjects/SaffronPidgeyHouse.asm"

INCLUDE "data/mapHeaders/MrPsychicsHouse.asm"
INCLUDE "scripts/MrPsychicsHouse.asm"
INCLUDE "data/mapObjects/MrPsychicsHouse.asm"

INCLUDE "data/mapHeaders/DiglettsCaveRoute2.asm"
INCLUDE "scripts/DiglettsCaveRoute2.asm"
INCLUDE "data/mapObjects/DiglettsCaveRoute2.asm"

INCLUDE "data/mapHeaders/Route2TradeHouse.asm"
INCLUDE "scripts/Route2TradeHouse.asm"
INCLUDE "data/mapObjects/Route2TradeHouse.asm"

INCLUDE "data/mapHeaders/Route5Gate.asm"
INCLUDE "scripts/Route5Gate.asm"
INCLUDE "data/mapObjects/Route5Gate.asm"
Route5Gate_Blocks: INCBIN "maps/Route5Gate.blk"

INCLUDE "data/mapHeaders/Route6Gate.asm"
INCLUDE "scripts/Route6Gate.asm"
INCLUDE "data/mapObjects/Route6Gate.asm"
Route6Gate_Blocks: INCBIN "maps/Route6Gate.blk"

INCLUDE "data/mapHeaders/Route7Gate.asm"
INCLUDE "scripts/Route7Gate.asm"
INCLUDE "data/mapObjects/Route7Gate.asm"
Route7Gate_Blocks: INCBIN "maps/Route7Gate.blk"

INCLUDE "data/mapHeaders/Route8Gate.asm"
INCLUDE "scripts/Route8Gate.asm"
INCLUDE "data/mapObjects/Route8Gate.asm"
Route8Gate_Blocks: INCBIN "maps/Route8Gate.blk"

INCLUDE "data/mapHeaders/UndergroundPathRoute8.asm"
INCLUDE "scripts/UndergroundPathRoute8.asm"
INCLUDE "data/mapObjects/UndergroundPathRoute8.asm"

INCLUDE "data/mapHeaders/PowerPlant.asm"
INCLUDE "scripts/PowerPlant.asm"
INCLUDE "data/mapObjects/PowerPlant.asm"
PowerPlant_Blocks: INCBIN "maps/PowerPlant.blk"

INCLUDE "data/mapHeaders/DiglettsCaveRoute11.asm"
INCLUDE "scripts/DiglettsCaveRoute11.asm"
INCLUDE "data/mapObjects/DiglettsCaveRoute11.asm"

INCLUDE "data/mapHeaders/Route16FlyHouse.asm"
INCLUDE "scripts/Route16FlyHouse.asm"
INCLUDE "data/mapObjects/Route16FlyHouse.asm"

INCLUDE "data/mapHeaders/Route22Gate.asm"
INCLUDE "scripts/Route22Gate.asm"
INCLUDE "data/mapObjects/Route22Gate.asm"
Route22Gate_Blocks: INCBIN "maps/Route22Gate.blk"

INCLUDE "data/mapHeaders/BillsHouse.asm"
INCLUDE "scripts/BillsHouse.asm"
INCLUDE "data/mapObjects/BillsHouse.asm"
BillsHouse_Blocks: INCBIN "maps/BillsHouse.blk"

INCLUDE "engine/menu/oaks_pc.asm"

INCLUDE "engine/hidden_object_functions7.asm"


SECTION "Pics 1", ROMX ; BANK $09

IF GEN_2_GRAPHICS
MoltresPicFront:    INCBIN "gfx/pokemon/gsfront/moltres.pic"
MoltresPicBack:     INCBIN "gfx/pokemon/gsback/moltresb.pic"
TentacoolPicFront:  INCBIN "gfx/pokemon/gsfront/tentacool.pic"
TentacoolPicBack:   INCBIN "gfx/pokemon/gsback/tentacoolb.pic"
ScytherPicFront:    INCBIN "gfx/pokemon/gsfront/scyther.pic"
ScytherPicBack:     INCBIN "gfx/pokemon/gsback/scytherb.pic"
StaryuPicFront:     INCBIN "gfx/pokemon/gsfront/staryu.pic"
StaryuPicBack:      INCBIN "gfx/pokemon/gsback/staryub.pic"
BlastoisePicFront:  INCBIN "gfx/pokemon/gsfront/blastoise.pic"
BlastoisePicBack:   INCBIN "gfx/pokemon/gsback/blastoiseb.pic"
PinsirPicFront:     INCBIN "gfx/pokemon/gsfront/pinsir.pic"
PinsirPicBack:      INCBIN "gfx/pokemon/gsback/pinsirb.pic"
TangelaPicFront:    INCBIN "gfx/pokemon/gsfront/tangela.pic"
TangelaPicBack:     INCBIN "gfx/pokemon/gsback/tangelab.pic"
JolteonPicFront:    INCBIN "gfx/pokemon/gsfront/jolteon.pic"
JolteonPicBack:     INCBIN "gfx/pokemon/gsback/jolteonb.pic"
VaporeonPicFront:   INCBIN "gfx/pokemon/gsfront/vaporeon.pic"
VaporeonPicBack:    INCBIN "gfx/pokemon/gsback/vaporeonb.pic"
MachopPicFront:     INCBIN "gfx/pokemon/gsfront/machop.pic"
MachopPicBack:      INCBIN "gfx/pokemon/gsback/machopb.pic"
ZubatPicFront:      INCBIN "gfx/pokemon/gsfront/zubat.pic"
ZubatPicBack:       INCBIN "gfx/pokemon/gsback/zubatb.pic"
EkansPicFront:      INCBIN "gfx/pokemon/gsfront/ekans.pic"
EkansPicBack:       INCBIN "gfx/pokemon/gsback/ekansb.pic"
ParasPicFront:      INCBIN "gfx/pokemon/gsfront/paras.pic"
ParasPicBack:       INCBIN "gfx/pokemon/gsback/parasb.pic"
PoliwhirlPicFront:  INCBIN "gfx/pokemon/gsfront/poliwhirl.pic"
PoliwhirlPicBack:   INCBIN "gfx/pokemon/gsback/poliwhirlb.pic"
PoliwrathPicFront:  INCBIN "gfx/pokemon/gsfront/poliwrath.pic"
PoliwrathPicBack:   INCBIN "gfx/pokemon/gsback/poliwrathb.pic"
WeedlePicFront:     INCBIN "gfx/pokemon/gsfront/weedle.pic"
WeedlePicBack:      INCBIN "gfx/pokemon/gsback/weedleb.pic"
KakunaPicFront:     INCBIN "gfx/pokemon/gsfront/kakuna.pic"
KakunaPicBack:      INCBIN "gfx/pokemon/gsback/kakunab.pic"
BeedrillPicFront:   INCBIN "gfx/pokemon/gsfront/beedrill.pic"
BeedrillPicBack:    INCBIN "gfx/pokemon/gsback/beedrillb.pic"
ENDC

IF !GEN_2_GRAPHICS
MoltresPicFront:    INCBIN "gfx/pokemon/front/moltres.pic"
MoltresPicBack:     INCBIN "gfx/pokemon/back/moltresb.pic"
TentacoolPicFront:  INCBIN "gfx/pokemon/front/tentacool.pic"
TentacoolPicBack:   INCBIN "gfx/pokemon/back/tentacoolb.pic"
ScytherPicFront:    INCBIN "gfx/pokemon/front/scyther.pic"
ScytherPicBack:     INCBIN "gfx/pokemon/back/scytherb.pic"
StaryuPicFront:     INCBIN "gfx/pokemon/front/staryu.pic"
StaryuPicBack:      INCBIN "gfx/pokemon/back/staryub.pic"
BlastoisePicFront:  INCBIN "gfx/pokemon/front/blastoise.pic"
BlastoisePicBack:   INCBIN "gfx/pokemon/back/blastoiseb.pic"
PinsirPicFront:     INCBIN "gfx/pokemon/front/pinsir.pic"
PinsirPicBack:      INCBIN "gfx/pokemon/back/pinsirb.pic"
TangelaPicFront:    INCBIN "gfx/pokemon/front/tangela.pic"
TangelaPicBack:     INCBIN "gfx/pokemon/back/tangelab.pic"
JolteonPicFront:    INCBIN "gfx/pokemon/front/jolteon.pic"
JolteonPicBack:     INCBIN "gfx/pokemon/back/jolteonb.pic"
VaporeonPicFront:   INCBIN "gfx/pokemon/front/vaporeon.pic"
VaporeonPicBack:    INCBIN "gfx/pokemon/back/vaporeonb.pic"
MachopPicFront:     INCBIN "gfx/pokemon/front/machop.pic"
MachopPicBack:      INCBIN "gfx/pokemon/back/machopb.pic"
ZubatPicFront:      INCBIN "gfx/pokemon/front/zubat.pic"
ZubatPicBack:       INCBIN "gfx/pokemon/back/zubatb.pic"
EkansPicFront:      INCBIN "gfx/pokemon/front/ekans.pic"
EkansPicBack:       INCBIN "gfx/pokemon/back/ekansb.pic"
ParasPicFront:      INCBIN "gfx/pokemon/front/paras.pic"
ParasPicBack:       INCBIN "gfx/pokemon/back/parasb.pic"
PoliwhirlPicFront:  INCBIN "gfx/pokemon/front/poliwhirl.pic"
PoliwhirlPicBack:   INCBIN "gfx/pokemon/back/poliwhirlb.pic"
PoliwrathPicFront:  INCBIN "gfx/pokemon/front/poliwrath.pic"
PoliwrathPicBack:   INCBIN "gfx/pokemon/back/poliwrathb.pic"
WeedlePicFront:     INCBIN "gfx/pokemon/front/weedle.pic"
WeedlePicBack:      INCBIN "gfx/pokemon/back/weedleb.pic"
KakunaPicFront:     INCBIN "gfx/pokemon/front/kakuna.pic"
KakunaPicBack:      INCBIN "gfx/pokemon/back/kakunab.pic"
BeedrillPicFront:   INCBIN "gfx/pokemon/front/beedrill.pic"
BeedrillPicBack:    INCBIN "gfx/pokemon/back/beedrillb.pic"
ENDC


SECTION "Battle (BANK 9)", ROMX
INCLUDE "engine/battle/print_type.asm"
INCLUDE "engine/battle/save_trainer_name.asm"
INCLUDE "engine/battle/moveEffects/focus_energy_effect.asm"


SECTION "Pics 2", ROMX ; BANK $0A

; Relocated Seel Sprite
SeelSprite:           INCBIN "gfx/sprites/seel.2bpp"

; Adding Green
IF DEF(_RED)
GreenFishingTilesFront: INCBIN "gfx/sprites/green_fishing_tile_front.2bpp"
GreenFishingTilesBack:  INCBIN "gfx/sprites/green_fishing_tile_back.2bpp"
GreenFishingTilesSide:  INCBIN "gfx/sprites/green_fishing_tile_side.2bpp"
ENDC
IF DEF(_BLUE)
GreenFishingTilesFront: INCBIN "gfx/sprites/yellow_fishing_tile_front.2bpp"
GreenFishingTilesBack:  INCBIN "gfx/sprites/yellow_fishing_tile_back.2bpp"
GreenFishingTilesSide:  INCBIN "gfx/sprites/yellow_fishing_tile_side.2bpp"
ENDC

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
GastlyPicFront:     INCBIN "gfx/pokemon/gsfront/gastly.pic"
GastlyPicBack:      INCBIN "gfx/pokemon/gsback/gastlyb.pic"
VileplumePicFront:  INCBIN "gfx/pokemon/gsfront/vileplume.pic"
VileplumePicBack:   INCBIN "gfx/pokemon/gsback/vileplumeb.pic"

; Adding Green
IF DEF(_RED)
RedPicBack::           INCBIN "gfx/trainers/gstrainer/redb.pic"
GreenPicBack:        INCBIN "gfx/trainers/gstrainer/greenb.pic"
ENDC
IF DEF(_BLUE)
RedPicBack::           INCBIN "gfx/trainers/gstrainer/blueb.pic"
GreenPicBack:        INCBIN "gfx/trainers/gstrainer/yellowb.pic"
ENDC

OldManPic:          INCBIN "gfx/trainers/gstrainer/oldman.pic"
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
GastlyPicFront:     INCBIN "gfx/pokemon/front/gastly.pic"
GastlyPicBack:      INCBIN "gfx/pokemon/back/gastlyb.pic"
VileplumePicFront:  INCBIN "gfx/pokemon/front/vileplume.pic"
VileplumePicBack:   INCBIN "gfx/pokemon/back/vileplumeb.pic"

; Adding Green
IF DEF(_RED)
RedPicBack::           INCBIN "gfx/trainers/trainer/redb.pic"
GreenPicBack:        INCBIN "gfx/trainers/trainer/greenb.pic"
ENDC
IF DEF(_BLUE)
RedPicBack::           INCBIN "gfx/trainers/trainer/blueb.pic"
GreenPicBack:        INCBIN "gfx/trainers/trainer/yellowb.pic"
ENDC

OldManPic:          INCBIN "gfx/trainers/trainer/oldman.pic"
ENDC


SECTION "Battle (BANK A)", ROMX
INCLUDE "engine/battle/moveEffects/leech_seed_effect.asm"


SECTION "Pics 3", ROMX ; BANK $0B

; Removed 'mon sprites from here


SECTION "Battle (BANK B)", ROMX
INCLUDE "engine/battle/display_effectiveness.asm"

TrainerInfoTextBoxTileGraphics:  INCBIN "gfx/gui/trainer_info.2bpp"
TrainerInfoTextBoxTileGraphicsEnd:
BlankLeaderNames:                INCBIN "gfx/gui/blank_leader_names.2bpp"
CircleTile:                      INCBIN "gfx/gui/circle_tile.2bpp"
BadgeNumbersTileGraphics:        INCBIN "gfx/gui/badge_numbers.2bpp"

INCLUDE "engine/items/tmhm.asm"
INCLUDE "engine/battle/scale_sprites.asm"
INCLUDE "engine/battle/moveEffects/pay_day_effect.asm"
INCLUDE "engine/game_corner_slots2.asm"


SECTION "Pics 4", ROMX ; BANK $0C

; Removed 'mon sprites from here


SECTION "Battle (BANK C)", ROMX
INCLUDE "engine/battle/moveEffects/mist_effect.asm"
INCLUDE "engine/battle/moveEffects/one_hit_ko_effect.asm"


SECTION "Pics 5", ROMX ; BANK $0D

; Removed 'mon sprites from here


SECTION "Battle (BANK D)", ROMX
INCLUDE "engine/titlescreen2.asm"
INCLUDE "engine/battle/link_battle_versus_text.asm"
INCLUDE "engine/slot_machine.asm"
INCLUDE "engine/overworld/pewter_guys.asm"
INCLUDE "engine/multiply_divide.asm"
INCLUDE "engine/game_corner_slots.asm"


SECTION "bankE", ROMX

INCLUDE "data/moves.asm"
BaseStats: INCLUDE "data/base_stats.asm"
INCLUDE "data/cries.asm"
INCLUDE "engine/battle/unused_stats_functions.asm"
INCLUDE "engine/battle/scroll_draw_trainer_pic.asm"
INCLUDE "engine/battle/trainer_ai.asm"
INCLUDE "engine/battle/draw_hud_pokeball_gfx.asm"

TradingAnimationGraphics:
INCBIN "gfx/misc/game_boy.2bpp"
INCBIN "gfx/misc/link_cable.2bpp"
TradingAnimationGraphicsEnd:

; Pokeball traveling through the link cable.
TradingAnimationGraphics2: INCBIN "gfx/misc/trade2.2bpp"
TradingAnimationGraphics2End:

INCLUDE "engine/evos_moves.asm"
INCLUDE "engine/battle/moveEffects/heal_effect.asm"
INCLUDE "engine/battle/moveEffects/transform_effect.asm"
INCLUDE "engine/battle/moveEffects/reflect_light_screen_effect.asm"

INCLUDE "color/draw_hud_pokeball_gfx.asm"


SECTION "bankF", ROMX

INCLUDE "engine/battle/core.asm"


SECTION "bank10", ROMX

INCLUDE "engine/menu/pokedex.asm"
INCLUDE "engine/trade.asm"
INCLUDE "engine/intro.asm"
INCLUDE "engine/trade2.asm"

; Hooks for color hack
INCLUDE "color/trade.asm"

SECTION "bank11", ROMX

INCLUDE "data/mapHeaders/LavenderTown.asm"
INCLUDE "data/mapObjects/LavenderTown.asm"
LavenderTown_Blocks: INCBIN "maps/LavenderTown.blk"

ViridianPokecenter_Blocks: INCBIN "maps/ViridianPokecenter.blk"

SafariZoneCenterRestHouse_Blocks:
SafariZoneWestRestHouse_Blocks:
SafariZoneEastRestHouse_Blocks:
SafariZoneNorthRestHouse_Blocks: INCBIN "maps/SafariZoneCenterRestHouse.blk"

INCLUDE "scripts/LavenderTown.asm"

INCLUDE "engine/pokedex_rating.asm"

INCLUDE "data/mapHeaders/ViridianPokecenter.asm"
INCLUDE "scripts/ViridianPokecenter.asm"
INCLUDE "data/mapObjects/ViridianPokecenter.asm"

INCLUDE "data/mapHeaders/PokemonMansion1F.asm"
INCLUDE "scripts/PokemonMansion1F.asm"
INCLUDE "data/mapObjects/PokemonMansion1F.asm"
PokemonMansion1F_Blocks: INCBIN "maps/PokemonMansion1F.blk"

INCLUDE "data/mapHeaders/RockTunnel1F.asm"
INCLUDE "scripts/RockTunnel1F.asm"
INCLUDE "data/mapObjects/RockTunnel1F.asm"
RockTunnel1F_Blocks: INCBIN "maps/RockTunnel1F.blk"

INCLUDE "data/mapHeaders/SeafoamIslands1F.asm"
INCLUDE "scripts/SeafoamIslands1F.asm"
INCLUDE "data/mapObjects/SeafoamIslands1F.asm"
SeafoamIslands1F_Blocks: INCBIN "maps/SeafoamIslands1F.blk"

INCLUDE "data/mapHeaders/SSAnne3F.asm"
INCLUDE "scripts/SSAnne3F.asm"
INCLUDE "data/mapObjects/SSAnne3F.asm"
SSAnne3F_Blocks: INCBIN "maps/SSAnne3F.blk"

INCLUDE "data/mapHeaders/VictoryRoad3F.asm"
INCLUDE "scripts/VictoryRoad3F.asm"
INCLUDE "data/mapObjects/VictoryRoad3F.asm"
VictoryRoad3F_Blocks: INCBIN "maps/VictoryRoad3F.blk"

INCLUDE "data/mapHeaders/RocketHideoutB1F.asm"
INCLUDE "scripts/RocketHideoutB1F.asm"
INCLUDE "data/mapObjects/RocketHideoutB1F.asm"
RocketHideoutB1F_Blocks: INCBIN "maps/RocketHideoutB1F.blk"

INCLUDE "data/mapHeaders/RocketHideoutB2F.asm"
INCLUDE "scripts/RocketHideoutB2F.asm"
INCLUDE "data/mapObjects/RocketHideoutB2F.asm"
RocketHideoutB2F_Blocks: INCBIN "maps/RocketHideoutB2F.blk"

INCLUDE "data/mapHeaders/RocketHideoutB3F.asm"
INCLUDE "scripts/RocketHideoutB3F.asm"
INCLUDE "data/mapObjects/RocketHideoutB3F.asm"
RocketHideoutB3F_Blocks: INCBIN "maps/RocketHideoutB3F.blk"

INCLUDE "data/mapHeaders/RocketHideoutB4F.asm"
INCLUDE "scripts/RocketHideoutB4F.asm"
INCLUDE "data/mapObjects/RocketHideoutB4F.asm"
RocketHideoutB4F_Blocks: INCBIN "maps/RocketHideoutB4F.blk"

INCLUDE "data/mapHeaders/RocketHideoutElevator.asm"
INCLUDE "scripts/RocketHideoutElevator.asm"
INCLUDE "data/mapObjects/RocketHideoutElevator.asm"
RocketHideoutElevator_Blocks: INCBIN "maps/RocketHideoutElevator.blk"

INCLUDE "data/mapHeaders/SilphCoElevator.asm"
INCLUDE "scripts/SilphCoElevator.asm"
INCLUDE "data/mapObjects/SilphCoElevator.asm"
SilphCoElevator_Blocks: INCBIN "maps/SilphCoElevator.blk"

INCLUDE "data/mapHeaders/SafariZoneEast.asm"
INCLUDE "scripts/SafariZoneEast.asm"
INCLUDE "data/mapObjects/SafariZoneEast.asm"
SafariZoneEast_Blocks: INCBIN "maps/SafariZoneEast.blk"

INCLUDE "data/mapHeaders/SafariZoneNorth.asm"
INCLUDE "scripts/SafariZoneNorth.asm"
INCLUDE "data/mapObjects/SafariZoneNorth.asm"
SafariZoneNorth_Blocks: INCBIN "maps/SafariZoneNorth.blk"

INCLUDE "data/mapHeaders/SafariZoneCenter.asm"
INCLUDE "scripts/SafariZoneCenter.asm"
INCLUDE "data/mapObjects/SafariZoneCenter.asm"
SafariZoneCenter_Blocks: INCBIN "maps/SafariZoneCenter.blk"

INCLUDE "data/mapHeaders/SafariZoneCenterRestHouse.asm"
INCLUDE "scripts/SafariZoneCenterRestHouse.asm"
INCLUDE "data/mapObjects/SafariZoneCenterRestHouse.asm"

INCLUDE "data/mapHeaders/SafariZoneWestRestHouse.asm"
INCLUDE "scripts/SafariZoneWestRestHouse.asm"
INCLUDE "data/mapObjects/SafariZoneWestRestHouse.asm"

INCLUDE "data/mapHeaders/SafariZoneEastRestHouse.asm"
INCLUDE "scripts/SafariZoneEastRestHouse.asm"
INCLUDE "data/mapObjects/SafariZoneEastRestHouse.asm"

INCLUDE "data/mapHeaders/SafariZoneNorthRestHouse.asm"
INCLUDE "scripts/SafariZoneNorthRestHouse.asm"
INCLUDE "data/mapObjects/SafariZoneNorthRestHouse.asm"

INCLUDE "data/mapHeaders/CeruleanCave2F.asm"
INCLUDE "scripts/CeruleanCave2F.asm"
INCLUDE "data/mapObjects/CeruleanCave2F.asm"
CeruleanCave2F_Blocks: INCBIN "maps/CeruleanCave2F.blk"

INCLUDE "data/mapHeaders/CeruleanCaveB1F.asm"
INCLUDE "scripts/CeruleanCaveB1F.asm"
INCLUDE "data/mapObjects/CeruleanCaveB1F.asm"
CeruleanCaveB1F_Blocks: INCBIN "maps/CeruleanCaveB1F.blk"

INCLUDE "data/mapHeaders/RockTunnelB1F.asm"
INCLUDE "scripts/RockTunnelB1F.asm"
INCLUDE "data/mapObjects/RockTunnelB1F.asm"
RockTunnelB1F_Blocks: INCBIN "maps/RockTunnelB1F.blk"

INCLUDE "data/mapHeaders/SeafoamIslandsB1F.asm"
INCLUDE "scripts/SeafoamIslandsB1F.asm"
INCLUDE "data/mapObjects/SeafoamIslandsB1F.asm"
SeafoamIslandsB1F_Blocks: INCBIN "maps/SeafoamIslandsB1F.blk"

INCLUDE "data/mapHeaders/SeafoamIslandsB2F.asm"
INCLUDE "scripts/SeafoamIslandsB2F.asm"
INCLUDE "data/mapObjects/SeafoamIslandsB2F.asm"
SeafoamIslandsB2F_Blocks: INCBIN "maps/SeafoamIslandsB2F.blk"

INCLUDE "data/mapHeaders/SeafoamIslandsB3F.asm"
INCLUDE "scripts/SeafoamIslandsB3F.asm"
INCLUDE "data/mapObjects/SeafoamIslandsB3F.asm"
SeafoamIslandsB3F_Blocks: INCBIN "maps/SeafoamIslandsB3F.blk"

INCLUDE "data/mapHeaders/SeafoamIslandsB4F.asm"
INCLUDE "scripts/SeafoamIslandsB4F.asm"
INCLUDE "data/mapObjects/SeafoamIslandsB4F.asm"
SeafoamIslandsB4F_Blocks: INCBIN "maps/SeafoamIslandsB4F.blk"

INCLUDE "engine/overworld/hidden_objects.asm"


SECTION "bank12", ROMX

INCLUDE "data/mapHeaders/Route7.asm"
INCLUDE "data/mapObjects/Route7.asm"
Route7_Blocks: INCBIN "maps/Route7.blk"

CeladonPokecenter_Blocks:
RockTunnelPokecenter_Blocks:
MtMoonPokecenter_Blocks: INCBIN "maps/MtMoonPokecenter.blk"

Route18Gate1F_Blocks:
Route15Gate1F_Blocks:
Route11Gate1F_Blocks: INCBIN "maps/Route11Gate1F.blk"

Route18Gate2F_Blocks:
Route16Gate2F_Blocks:
Route15Gate2F_Blocks:
Route12Gate2F_Blocks:
Route11Gate2F_Blocks: INCBIN "maps/Route11Gate2F.blk"

INCLUDE "engine/predefs12.asm"

INCLUDE "scripts/Route7.asm"

INCLUDE "data/mapHeaders/RedsHouse1F.asm"
INCLUDE "scripts/RedsHouse1F.asm"
INCLUDE "data/mapObjects/RedsHouse1F.asm"
RedsHouse1F_Blocks: INCBIN "maps/RedsHouse1F.blk"

INCLUDE "data/mapHeaders/CeladonMart3F.asm"
INCLUDE "scripts/CeladonMart3F.asm"
INCLUDE "data/mapObjects/CeladonMart3F.asm"
CeladonMart3F_Blocks: INCBIN "maps/CeladonMart3F.blk"

INCLUDE "data/mapHeaders/CeladonMart4F.asm"
INCLUDE "scripts/CeladonMart4F.asm"
INCLUDE "data/mapObjects/CeladonMart4F.asm"
CeladonMart4F_Blocks: INCBIN "maps/CeladonMart4F.blk"

INCLUDE "data/mapHeaders/CeladonMartRoof.asm"
INCLUDE "scripts/CeladonMartRoof.asm"
INCLUDE "data/mapObjects/CeladonMartRoof.asm"
CeladonMartRoof_Blocks: INCBIN "maps/CeladonMartRoof.blk"

INCLUDE "data/mapHeaders/CeladonMartElevator.asm"
INCLUDE "scripts/CeladonMartElevator.asm"
INCLUDE "data/mapObjects/CeladonMartElevator.asm"
CeladonMartElevator_Blocks: INCBIN "maps/CeladonMartElevator.blk"

INCLUDE "data/mapHeaders/CeladonMansion1F.asm"
INCLUDE "scripts/CeladonMansion1F.asm"
INCLUDE "data/mapObjects/CeladonMansion1F.asm"
CeladonMansion1F_Blocks: INCBIN "maps/CeladonMansion1F.blk"

INCLUDE "data/mapHeaders/CeladonMansion2F.asm"
INCLUDE "scripts/CeladonMansion2F.asm"
INCLUDE "data/mapObjects/CeladonMansion2F.asm"
CeladonMansion2F_Blocks: INCBIN "maps/CeladonMansion2F.blk"

INCLUDE "data/mapHeaders/CeladonMansion3F.asm"
INCLUDE "scripts/CeladonMansion3F.asm"
INCLUDE "data/mapObjects/CeladonMansion3F.asm"
CeladonMansion3F_Blocks: INCBIN "maps/CeladonMansion3F.blk"

INCLUDE "data/mapHeaders/CeladonMansionRoof.asm"
INCLUDE "scripts/CeladonMansionRoof.asm"
INCLUDE "data/mapObjects/CeladonMansionRoof.asm"
CeladonMansionRoof_Blocks: INCBIN "maps/CeladonMansionRoof.blk"

INCLUDE "data/mapHeaders/CeladonPokecenter.asm"
INCLUDE "scripts/CeladonPokecenter.asm"
INCLUDE "data/mapObjects/CeladonPokecenter.asm"

INCLUDE "data/mapHeaders/CeladonGym.asm"
INCLUDE "scripts/CeladonGym.asm"
INCLUDE "data/mapObjects/CeladonGym.asm"
CeladonGym_Blocks: INCBIN "maps/CeladonGym.blk"

INCLUDE "data/mapHeaders/GameCorner.asm"
INCLUDE "scripts/GameCorner.asm"
INCLUDE "data/mapObjects/GameCorner.asm"
GameCorner_Blocks: INCBIN "maps/GameCorner.blk"

INCLUDE "data/mapHeaders/CeladonMart5F.asm"
INCLUDE "scripts/CeladonMart5F.asm"
INCLUDE "data/mapObjects/CeladonMart5F.asm"
CeladonMart5F_Blocks: INCBIN "maps/CeladonMart5F.blk"

INCLUDE "data/mapHeaders/GameCornerPrizeRoom.asm"
INCLUDE "scripts/GameCornerPrizeRoom.asm"
INCLUDE "data/mapObjects/GameCornerPrizeRoom.asm"
GameCornerPrizeRoom_Blocks: INCBIN "maps/GameCornerPrizeRoom.blk"

INCLUDE "data/mapHeaders/CeladonDiner.asm"
INCLUDE "scripts/CeladonDiner.asm"
INCLUDE "data/mapObjects/CeladonDiner.asm"
CeladonDiner_Blocks: INCBIN "maps/CeladonDiner.blk"

INCLUDE "data/mapHeaders/CeladonChiefHouse.asm"
INCLUDE "scripts/CeladonChiefHouse.asm"
INCLUDE "data/mapObjects/CeladonChiefHouse.asm"
CeladonChiefHouse_Blocks: INCBIN "maps/CeladonChiefHouse.blk"

INCLUDE "data/mapHeaders/CeladonHotel.asm"
INCLUDE "scripts/CeladonHotel.asm"
INCLUDE "data/mapObjects/CeladonHotel.asm"
CeladonHotel_Blocks: INCBIN "maps/CeladonHotel.blk"

INCLUDE "data/mapHeaders/MtMoonPokecenter.asm"
INCLUDE "scripts/MtMoonPokecenter.asm"
INCLUDE "data/mapObjects/MtMoonPokecenter.asm"

INCLUDE "data/mapHeaders/RockTunnelPokecenter.asm"
INCLUDE "scripts/RockTunnelPokecenter.asm"
INCLUDE "data/mapObjects/RockTunnelPokecenter.asm"

INCLUDE "data/mapHeaders/Route11Gate1F.asm"
INCLUDE "scripts/Route11Gate1F.asm"
INCLUDE "data/mapObjects/Route11Gate1F.asm"

INCLUDE "data/mapHeaders/Route11Gate2F.asm"
INCLUDE "scripts/Route11Gate2F.asm"
INCLUDE "data/mapObjects/Route11Gate2F.asm"

INCLUDE "data/mapHeaders/Route12Gate1F.asm"
INCLUDE "scripts/Route12Gate1F.asm"
INCLUDE "data/mapObjects/Route12Gate1F.asm"
Route12Gate1F_Blocks: INCBIN "maps/Route12Gate1F.blk"

INCLUDE "data/mapHeaders/Route12Gate2F.asm"
INCLUDE "scripts/Route12Gate2F.asm"
INCLUDE "data/mapObjects/Route12Gate2F.asm"

INCLUDE "data/mapHeaders/Route15Gate1F.asm"
INCLUDE "scripts/Route15Gate1F.asm"
INCLUDE "data/mapObjects/Route15Gate1F.asm"

INCLUDE "data/mapHeaders/Route15Gate2F.asm"
INCLUDE "scripts/Route15Gate2F.asm"
INCLUDE "data/mapObjects/Route15Gate2F.asm"

INCLUDE "data/mapHeaders/Route16Gate1F.asm"
INCLUDE "scripts/Route16Gate1F.asm"
INCLUDE "data/mapObjects/Route16Gate1F.asm"
Route16Gate1F_Blocks: INCBIN "maps/Route16Gate1F.blk"

INCLUDE "data/mapHeaders/Route16Gate2F.asm"
INCLUDE "scripts/Route16Gate2F.asm"
INCLUDE "data/mapObjects/Route16Gate2F.asm"

INCLUDE "data/mapHeaders/Route18Gate1F.asm"
INCLUDE "scripts/Route18Gate1F.asm"
INCLUDE "data/mapObjects/Route18Gate1F.asm"

INCLUDE "data/mapHeaders/Route18Gate2F.asm"
INCLUDE "scripts/Route18Gate2F.asm"
INCLUDE "data/mapObjects/Route18Gate2F.asm"

INCLUDE "data/mapHeaders/MtMoon1F.asm"
INCLUDE "scripts/MtMoon1F.asm"
INCLUDE "data/mapObjects/MtMoon1F.asm"
MtMoon1F_Blocks: INCBIN "maps/MtMoon1F.blk"

INCLUDE "data/mapHeaders/MtMoonB2F.asm"
INCLUDE "scripts/MtMoonB2F.asm"
INCLUDE "data/mapObjects/MtMoonB2F.asm"
MtMoonB2F_Blocks: INCBIN "maps/MtMoonB2F.blk"

INCLUDE "data/mapHeaders/SafariZoneWest.asm"
INCLUDE "scripts/SafariZoneWest.asm"
INCLUDE "data/mapObjects/SafariZoneWest.asm"
SafariZoneWest_Blocks: INCBIN "maps/SafariZoneWest.blk"

INCLUDE "data/mapHeaders/SafariZoneSecretHouse.asm"
INCLUDE "scripts/SafariZoneSecretHouse.asm"
INCLUDE "data/mapObjects/SafariZoneSecretHouse.asm"
SafariZoneSecretHouse_Blocks: INCBIN "maps/SafariZoneSecretHouse.blk"


SECTION "bank13", ROMX

TrainerPics::
IF GEN_2_GRAPHICS
YoungsterPic::     INCBIN "gfx/trainers/gstrainer/youngster.pic"
BugCatcherPic::    INCBIN "gfx/trainers/gstrainer/bugcatcher.pic"
LassPic::          INCBIN "gfx/trainers/gstrainer/lass.pic"
SailorPic::        INCBIN "gfx/trainers/gstrainer/sailor.pic"
JrTrainerMPic::    INCBIN "gfx/trainers/gstrainer/jr.trainerm.pic"
JrTrainerFPic::    INCBIN "gfx/trainers/gstrainer/jr.trainerf.pic"
PokemaniacPic::    INCBIN "gfx/trainers/gstrainer/pokemaniac.pic"
SuperNerdPic::     INCBIN "gfx/trainers/gstrainer/supernerd.pic"
HikerPic::         INCBIN "gfx/trainers/gstrainer/hiker.pic"
BikerPic::         INCBIN "gfx/trainers/gstrainer/biker.pic"
BurglarPic::       INCBIN "gfx/trainers/gstrainer/burglar.pic"
EngineerPic::      INCBIN "gfx/trainers/gstrainer/engineer.pic"
FisherPic::        INCBIN "gfx/trainers/gstrainer/fisher.pic"
SwimmerPic::       INCBIN "gfx/trainers/gstrainer/swimmer.pic"
CueBallPic::       INCBIN "gfx/trainers/gstrainer/cueball.pic"
GamblerPic::       INCBIN "gfx/trainers/gstrainer/gambler.pic"
BeautyPic::        INCBIN "gfx/trainers/gstrainer/beauty.pic"
PsychicPic::       INCBIN "gfx/trainers/gstrainer/psychic.pic"
RockerPic::        INCBIN "gfx/trainers/gstrainer/rocker.pic"
JugglerPic::       INCBIN "gfx/trainers/gstrainer/juggler.pic"
TamerPic::         INCBIN "gfx/trainers/gstrainer/tamer.pic"
BirdKeeperPic::    INCBIN "gfx/trainers/gstrainer/birdkeeper.pic"
BlackbeltPic::     INCBIN "gfx/trainers/gstrainer/blackbelt.pic"

; Adding Red vs Blue Rival
IF DEF(_RED)
Rival1Pic::        INCBIN "gfx/trainers/gstrainer/rival1r.pic"
Rival2Pic::        INCBIN "gfx/trainers/gstrainer/rival2r.pic"
Rival3Pic::        INCBIN "gfx/trainers/gstrainer/rival3r.pic"
ENDC
IF DEF(_BLUE)
Rival1Pic::        INCBIN "gfx/trainers/gstrainer/rival1b.pic"
Rival2Pic::        INCBIN "gfx/trainers/gstrainer/rival2b.pic"
Rival3Pic::        INCBIN "gfx/trainers/gstrainer/rival3b.pic"
ENDC

ProfOakPic::       INCBIN "gfx/trainers/gstrainer/prof.oak.pic"
ChiefPic::
ScientistPic::     INCBIN "gfx/trainers/gstrainer/scientist.pic"
GiovanniPic::      INCBIN "gfx/trainers/gstrainer/giovanni.pic"
RocketPic::        INCBIN "gfx/trainers/gstrainer/rocket.pic"
CooltrainerMPic::  INCBIN "gfx/trainers/gstrainer/cooltrainerm.pic"
CooltrainerFPic::  INCBIN "gfx/trainers/gstrainer/cooltrainerf.pic"
BrunoPic::         INCBIN "gfx/trainers/gstrainer/bruno.pic"
BrockPic::         INCBIN "gfx/trainers/gstrainer/brock.pic"
MistyPic::         INCBIN "gfx/trainers/gstrainer/misty.pic"
LtSurgePic::       INCBIN "gfx/trainers/gstrainer/lt.surge.pic"
ErikaPic::         INCBIN "gfx/trainers/gstrainer/erika.pic"
KogaPic::          INCBIN "gfx/trainers/gstrainer/koga.pic"
BlainePic::        INCBIN "gfx/trainers/gstrainer/blaine.pic"
SabrinaPic::       INCBIN "gfx/trainers/gstrainer/sabrina.pic"
GentlemanPic::     INCBIN "gfx/trainers/gstrainer/gentleman.pic"
LoreleiPic::       INCBIN "gfx/trainers/gstrainer/lorelei.pic"
ChannelerPic::     INCBIN "gfx/trainers/gstrainer/channeler.pic"
AgathaPic::        INCBIN "gfx/trainers/gstrainer/agatha.pic"
LancePic::         INCBIN "gfx/trainers/gstrainer/lance.pic"
ENDC

IF !GEN_2_GRAPHICS
YoungsterPic::     INCBIN "gfx/trainers/trainer/youngster.pic"
BugCatcherPic::    INCBIN "gfx/trainers/trainer/bugcatcher.pic"
LassPic::          INCBIN "gfx/trainers/trainer/lass.pic"
SailorPic::        INCBIN "gfx/trainers/trainer/sailor.pic"
JrTrainerMPic::    INCBIN "gfx/trainers/trainer/jr.trainerm.pic"
JrTrainerFPic::    INCBIN "gfx/trainers/trainer/jr.trainerf.pic"
PokemaniacPic::    INCBIN "gfx/trainers/trainer/pokemaniac.pic"
SuperNerdPic::     INCBIN "gfx/trainers/trainer/supernerd.pic"
HikerPic::         INCBIN "gfx/trainers/trainer/hiker.pic"
BikerPic::         INCBIN "gfx/trainers/trainer/biker.pic"
BurglarPic::       INCBIN "gfx/trainers/trainer/burglar.pic"
EngineerPic::      INCBIN "gfx/trainers/trainer/engineer.pic"
FisherPic::        INCBIN "gfx/trainers/trainer/fisher.pic"
SwimmerPic::       INCBIN "gfx/trainers/trainer/swimmer.pic"
CueBallPic::       INCBIN "gfx/trainers/trainer/cueball.pic"
GamblerPic::       INCBIN "gfx/trainers/trainer/gambler.pic"
BeautyPic::        INCBIN "gfx/trainers/trainer/beauty.pic"
PsychicPic::       INCBIN "gfx/trainers/trainer/psychic.pic"
RockerPic::        INCBIN "gfx/trainers/trainer/rocker.pic"
JugglerPic::       INCBIN "gfx/trainers/trainer/juggler.pic"
TamerPic::         INCBIN "gfx/trainers/trainer/tamer.pic"
BirdKeeperPic::    INCBIN "gfx/trainers/trainer/birdkeeper.pic"
BlackbeltPic::     INCBIN "gfx/trainers/trainer/blackbelt.pic"

; Adding Red vs Blue Rival
IF DEF(_RED)
Rival1Pic::        INCBIN "gfx/trainers/trainer/rival1r.pic"
Rival2Pic::        INCBIN "gfx/trainers/trainer/rival2r.pic"
Rival3Pic::        INCBIN "gfx/trainers/trainer/rival3r.pic"
ENDC
IF DEF(_BLUE)
Rival1Pic::        INCBIN "gfx/trainers/trainer/rival1b.pic"
Rival2Pic::        INCBIN "gfx/trainers/trainer/rival2b.pic"
Rival3Pic::        INCBIN "gfx/trainers/trainer/rival3b.pic"
ENDC

ProfOakPic::       INCBIN "gfx/trainers/trainer/prof.oak.pic"
ChiefPic::
ScientistPic::     INCBIN "gfx/trainers/trainer/scientist.pic"
GiovanniPic::      INCBIN "gfx/trainers/trainer/giovanni.pic"
RocketPic::        INCBIN "gfx/trainers/trainer/rocket.pic"
CooltrainerMPic::  INCBIN "gfx/trainers/trainer/cooltrainerm.pic"
CooltrainerFPic::  INCBIN "gfx/trainers/trainer/cooltrainerf.pic"
BrunoPic::         INCBIN "gfx/trainers/trainer/bruno.pic"
BrockPic::         INCBIN "gfx/trainers/trainer/brock.pic"
MistyPic::         INCBIN "gfx/trainers/trainer/misty.pic"
LtSurgePic::       INCBIN "gfx/trainers/trainer/lt.surge.pic"
ErikaPic::         INCBIN "gfx/trainers/trainer/erika.pic"
KogaPic::          INCBIN "gfx/trainers/trainer/koga.pic"
BlainePic::        INCBIN "gfx/trainers/trainer/blaine.pic"
SabrinaPic::       INCBIN "gfx/trainers/trainer/sabrina.pic"
GentlemanPic::     INCBIN "gfx/trainers/trainer/gentleman.pic"
LoreleiPic::       INCBIN "gfx/trainers/trainer/lorelei.pic"
ChannelerPic::     INCBIN "gfx/trainers/trainer/channeler.pic"
AgathaPic::        INCBIN "gfx/trainers/trainer/agatha.pic"
LancePic::         INCBIN "gfx/trainers/trainer/lance.pic"
ENDC

SECTION "Trade Center",ROMX

INCLUDE "data/mapHeaders/TradeCenter.asm"
INCLUDE "scripts/TradeCenter.asm"
INCLUDE "data/mapObjects/TradeCenter.asm"
TradeCenter_Blocks: INCBIN "maps/TradeCenter.blk"

INCLUDE "data/mapHeaders/Colosseum.asm"
INCLUDE "scripts/Colosseum.asm"
INCLUDE "data/mapObjects/Colosseum.asm"
Colosseum_Blocks: INCBIN "maps/Colosseum.blk"

INCLUDE "engine/give_pokemon.asm"

INCLUDE "engine/predefs.asm"


SECTION "bank14", ROMX

INCLUDE "data/mapHeaders/Route22.asm"
INCLUDE "data/mapObjects/Route22.asm"
Route22_Blocks: INCBIN "maps/Route22.blk"

INCLUDE "data/mapHeaders/Route20.asm"
INCLUDE "data/mapObjects/Route20.asm"
Route20_Blocks: INCBIN "maps/Route20.blk"

INCLUDE "data/mapHeaders/Route23.asm"
INCLUDE "data/mapObjects/Route23.asm"
Route23_Blocks: INCBIN "maps/Route23.blk"

INCLUDE "data/mapHeaders/Route24.asm"
INCLUDE "data/mapObjects/Route24.asm"
Route24_Blocks: INCBIN "maps/Route24.blk"

INCLUDE "data/mapHeaders/Route25.asm"
INCLUDE "data/mapObjects/Route25.asm"
Route25_Blocks: INCBIN "maps/Route25.blk"

INCLUDE "data/mapHeaders/IndigoPlateau.asm"
INCLUDE "scripts/IndigoPlateau.asm"
INCLUDE "data/mapObjects/IndigoPlateau.asm"
IndigoPlateau_Blocks: INCBIN "maps/IndigoPlateau.blk"

INCLUDE "data/mapHeaders/SaffronCity.asm"
INCLUDE "data/mapObjects/SaffronCity.asm"
SaffronCity_Blocks: INCBIN "maps/SaffronCity.blk"
INCLUDE "scripts/SaffronCity.asm"

INCLUDE "scripts/Route20.asm"
INCLUDE "scripts/Route22.asm"
INCLUDE "scripts/Route23.asm"
INCLUDE "scripts/Route24.asm"
INCLUDE "scripts/Route25.asm"

INCLUDE "data/mapHeaders/VictoryRoad2F.asm"
INCLUDE "scripts/VictoryRoad2F.asm"
INCLUDE "data/mapObjects/VictoryRoad2F.asm"
VictoryRoad2F_Blocks: INCBIN "maps/VictoryRoad2F.blk"

INCLUDE "data/mapHeaders/MtMoonB1F.asm"
INCLUDE "scripts/MtMoonB1F.asm"
INCLUDE "data/mapObjects/MtMoonB1F.asm"
MtMoonB1F_Blocks: INCBIN "maps/MtMoonB1F.blk"

INCLUDE "data/mapHeaders/SilphCo7F.asm"
INCLUDE "scripts/SilphCo7F.asm"
INCLUDE "data/mapObjects/SilphCo7F.asm"
SilphCo7F_Blocks: INCBIN "maps/SilphCo7F.blk"

INCLUDE "data/mapHeaders/PokemonMansion2F.asm"
INCLUDE "scripts/PokemonMansion2F.asm"
INCLUDE "data/mapObjects/PokemonMansion2F.asm"
PokemonMansion2F_Blocks: INCBIN "maps/PokemonMansion2F.blk"

INCLUDE "data/mapHeaders/PokemonMansion3F.asm"
INCLUDE "scripts/PokemonMansion3F.asm"
INCLUDE "data/mapObjects/PokemonMansion3F.asm"
PokemonMansion3F_Blocks: INCBIN "maps/PokemonMansion3F.blk"

INCLUDE "data/mapHeaders/PokemonMansionB1F.asm"
INCLUDE "scripts/PokemonMansionB1F.asm"
INCLUDE "data/mapObjects/PokemonMansionB1F.asm"
PokemonMansionB1F_Blocks: INCBIN "maps/PokemonMansionB1F.blk"

INCLUDE "engine/battle/init_battle_variables.asm"
INCLUDE "engine/battle/moveEffects/paralyze_effect.asm"

INCLUDE "engine/overworld/card_key.asm"

INCLUDE "engine/menu/prize_menu.asm"

INCLUDE "engine/hidden_object_functions14.asm"


SECTION "bank15", ROMX

INCLUDE "data/mapHeaders/Route2.asm"
INCLUDE "data/mapObjects/Route2.asm"
Route2_Blocks: INCBIN "maps/Route2.blk"

INCLUDE "data/mapHeaders/Route3.asm"
INCLUDE "data/mapObjects/Route3.asm"
Route3_Blocks: INCBIN "maps/Route3.blk"

INCLUDE "data/mapHeaders/Route4.asm"
INCLUDE "data/mapObjects/Route4.asm"
Route4_Blocks: INCBIN "maps/Route4.blk"

INCLUDE "data/mapHeaders/Route5.asm"
INCLUDE "data/mapObjects/Route5.asm"
Route5_Blocks: INCBIN "maps/Route5.blk"

INCLUDE "data/mapHeaders/Route9.asm"
INCLUDE "data/mapObjects/Route9.asm"
Route9_Blocks: INCBIN "maps/Route9.blk"

INCLUDE "data/mapHeaders/Route13.asm"
INCLUDE "data/mapObjects/Route13.asm"
Route13_Blocks: INCBIN "maps/Route13.blk"

INCLUDE "data/mapHeaders/Route14.asm"
INCLUDE "data/mapObjects/Route14.asm"
Route14_Blocks: INCBIN "maps/Route14.blk"

INCLUDE "data/mapHeaders/Route17.asm"
INCLUDE "data/mapObjects/Route17.asm"
Route17_Blocks: INCBIN "maps/Route17.blk"

INCLUDE "data/mapHeaders/Route19.asm"
INCLUDE "data/mapObjects/Route19.asm"
Route19_Blocks: INCBIN "maps/Route19.blk"

INCLUDE "data/mapHeaders/Route21.asm"
INCLUDE "data/mapObjects/Route21.asm"
Route21_Blocks: INCBIN "maps/Route21.blk"

VermilionOldRodHouse_Blocks:
Route12SuperRodHouse_Blocks:
Daycare_Blocks: INCBIN "maps/Daycare.blk"

FuchsiaGoodRodHouse_Blocks: INCBIN "maps/FuchsiaGoodRodHouse.blk"

INCLUDE "engine/battle/experience.asm"

INCLUDE "scripts/Route2.asm"
INCLUDE "scripts/Route3.asm"
INCLUDE "scripts/Route4.asm"
INCLUDE "scripts/Route5.asm"
INCLUDE "scripts/Route9.asm"
INCLUDE "scripts/Route13.asm"
INCLUDE "scripts/Route14.asm"
INCLUDE "scripts/Route17.asm"
INCLUDE "scripts/Route19.asm"
INCLUDE "scripts/Route21.asm"

INCLUDE "data/mapHeaders/VermilionOldRodHouse.asm"
INCLUDE "scripts/VermilionOldRodHouse.asm"
INCLUDE "data/mapObjects/VermilionOldRodHouse.asm"

INCLUDE "data/mapHeaders/CeladonMart2F.asm"
INCLUDE "scripts/CeladonMart2F.asm"
INCLUDE "data/mapObjects/CeladonMart2F.asm"
CeladonMart2F_Blocks: INCBIN "maps/CeladonMart2F.blk"

INCLUDE "data/mapHeaders/FuchsiaGoodRodHouse.asm"
INCLUDE "scripts/FuchsiaGoodRodHouse.asm"
INCLUDE "data/mapObjects/FuchsiaGoodRodHouse.asm"

INCLUDE "data/mapHeaders/Daycare.asm"
INCLUDE "scripts/Daycare.asm"
INCLUDE "data/mapObjects/Daycare.asm"

INCLUDE "data/mapHeaders/Route12SuperRodHouse.asm"
INCLUDE "scripts/Route12SuperRodHouse.asm"
INCLUDE "data/mapObjects/Route12SuperRodHouse.asm"

INCLUDE "data/mapHeaders/SilphCo8F.asm"
INCLUDE "scripts/SilphCo8F.asm"
INCLUDE "data/mapObjects/SilphCo8F.asm"
SilphCo8F_Blocks: INCBIN "maps/SilphCo8F.blk"

INCLUDE "engine/menu/diploma.asm"

INCLUDE "engine/overworld/trainers.asm"

IF GEN_2_GRAPHICS
INCLUDE "color/exp_bar.asm"
ENDC


SECTION "bank16", ROMX

INCLUDE "data/mapHeaders/Route6.asm"
INCLUDE "data/mapObjects/Route6.asm"
Route6_Blocks: INCBIN "maps/Route6.blk"

INCLUDE "data/mapHeaders/Route8.asm"
INCLUDE "data/mapObjects/Route8.asm"
Route8_Blocks: INCBIN "maps/Route8.blk"

INCLUDE "data/mapHeaders/Route10.asm"
INCLUDE "data/mapObjects/Route10.asm"
Route10_Blocks: INCBIN "maps/Route10.blk"

INCLUDE "data/mapHeaders/Route11.asm"
INCLUDE "data/mapObjects/Route11.asm"
Route11_Blocks: INCBIN "maps/Route11.blk"

INCLUDE "data/mapHeaders/Route12.asm"
INCLUDE "data/mapObjects/Route12.asm"
Route12_Blocks: INCBIN "maps/Route12.blk"

INCLUDE "data/mapHeaders/Route15.asm"
INCLUDE "data/mapObjects/Route15.asm"
Route15_Blocks: INCBIN "maps/Route15.blk"

INCLUDE "data/mapHeaders/Route16.asm"
INCLUDE "data/mapObjects/Route16.asm"
Route16_Blocks: INCBIN "maps/Route16.blk"

INCLUDE "data/mapHeaders/Route18.asm"
INCLUDE "data/mapObjects/Route18.asm"
Route18_Blocks: INCBIN "maps/Route18.blk"

	INCBIN "maps/UnusedPokecenterCopy.blk"

INCLUDE "engine/battle/common_text.asm"

INCLUDE "engine/experience.asm"

INCLUDE "engine/overworld/oaks_aide.asm"

INCLUDE "scripts/Route6.asm"
INCLUDE "scripts/Route8.asm"
INCLUDE "scripts/Route10.asm"
INCLUDE "scripts/Route11.asm"
INCLUDE "scripts/Route12.asm"
INCLUDE "scripts/Route15.asm"
INCLUDE "scripts/Route16.asm"
INCLUDE "scripts/Route18.asm"

INCLUDE "data/mapHeaders/PokemonFanClub.asm"
INCLUDE "scripts/PokemonFanClub.asm"
INCLUDE "data/mapObjects/PokemonFanClub.asm"
PokemonFanClub_Blocks: INCBIN "maps/PokemonFanClub.blk"

INCLUDE "data/mapHeaders/SilphCo2F.asm"
INCLUDE "scripts/SilphCo2F.asm"
INCLUDE "data/mapObjects/SilphCo2F.asm"
SilphCo2F_Blocks: INCBIN "maps/SilphCo2F.blk"

INCLUDE "data/mapHeaders/SilphCo3F.asm"
INCLUDE "scripts/SilphCo3F.asm"
INCLUDE "data/mapObjects/SilphCo3F.asm"
SilphCo3F_Blocks: INCBIN "maps/SilphCo3F.blk"

INCLUDE "data/mapHeaders/SilphCo10F.asm"
INCLUDE "scripts/SilphCo10F.asm"
INCLUDE "data/mapObjects/SilphCo10F.asm"
SilphCo10F_Blocks: INCBIN "maps/SilphCo10F.blk"

INCLUDE "data/mapHeaders/LancesRoom.asm"
INCLUDE "scripts/LancesRoom.asm"
INCLUDE "data/mapObjects/LancesRoom.asm"
LancesRoom_Blocks: INCBIN "maps/LancesRoom.blk"

INCLUDE "data/mapHeaders/HallOfFame.asm"
INCLUDE "scripts/HallOfFame.asm"
INCLUDE "data/mapObjects/HallOfFame.asm"
HallOfFame_Blocks: INCBIN "maps/HallOfFame.blk"

INCLUDE "engine/overworld/saffron_guards.asm"


SECTION "bank17", ROMX

SaffronMart_Blocks:
LavenderMart_Blocks:
CeruleanMart_Blocks:
VermilionMart_Blocks: INCBIN "maps/VermilionMart.blk"

CopycatsHouse2F_Blocks:
RedsHouse2F_Blocks: INCBIN "maps/RedsHouse2F.blk"

Museum1F_Blocks: INCBIN "maps/Museum1F.blk"

Museum2F_Blocks: INCBIN "maps/Museum2F.blk"

SaffronPokecenter_Blocks:
VermilionPokecenter_Blocks:
LavenderPokecenter_Blocks:
PewterPokecenter_Blocks: INCBIN "maps/PewterPokecenter.blk"

UndergroundPathRoute7_Blocks:
UndergroundPathRoute7Copy_Blocks:
UndergroundPathRoute6_Blocks:
UndergroundPathRoute5_Blocks: INCBIN "maps/UndergroundPathRoute5.blk"

Route2Gate_Blocks:
ViridianForestSouthGate_Blocks:
ViridianForestNorthGate_Blocks: INCBIN "maps/ViridianForestNorthGate.blk"

INCLUDE "data/mapHeaders/RedsHouse2F.asm"
INCLUDE "scripts/RedsHouse2F.asm"
INCLUDE "data/mapObjects/RedsHouse2F.asm"

INCLUDE "engine/predefs17.asm"

INCLUDE "data/mapHeaders/Museum1F.asm"
INCLUDE "scripts/Museum1F.asm"
INCLUDE "data/mapObjects/Museum1F.asm"

INCLUDE "data/mapHeaders/Museum2F.asm"
INCLUDE "scripts/Museum2F.asm"
INCLUDE "data/mapObjects/Museum2F.asm"

INCLUDE "data/mapHeaders/PewterGym.asm"
INCLUDE "scripts/PewterGym.asm"
INCLUDE "data/mapObjects/PewterGym.asm"
PewterGym_Blocks: INCBIN "maps/PewterGym.blk"

INCLUDE "data/mapHeaders/PewterPokecenter.asm"
INCLUDE "scripts/PewterPokecenter.asm"
INCLUDE "data/mapObjects/PewterPokecenter.asm"

INCLUDE "data/mapHeaders/CeruleanPokecenter.asm"
INCLUDE "scripts/CeruleanPokecenter.asm"
INCLUDE "data/mapObjects/CeruleanPokecenter.asm"
CeruleanPokecenter_Blocks: INCBIN "maps/CeruleanPokecenter.blk"

INCLUDE "data/mapHeaders/CeruleanGym.asm"
INCLUDE "scripts/CeruleanGym.asm"
INCLUDE "data/mapObjects/CeruleanGym.asm"
CeruleanGym_Blocks: INCBIN "maps/CeruleanGym.blk"

INCLUDE "data/mapHeaders/CeruleanMart.asm"
INCLUDE "scripts/CeruleanMart.asm"
INCLUDE "data/mapObjects/CeruleanMart.asm"

INCLUDE "data/mapHeaders/LavenderPokecenter.asm"
INCLUDE "scripts/LavenderPokecenter.asm"
INCLUDE "data/mapObjects/LavenderPokecenter.asm"

INCLUDE "data/mapHeaders/LavenderMart.asm"
INCLUDE "scripts/LavenderMart.asm"
INCLUDE "data/mapObjects/LavenderMart.asm"

INCLUDE "data/mapHeaders/VermilionPokecenter.asm"
INCLUDE "scripts/VermilionPokecenter.asm"
INCLUDE "data/mapObjects/VermilionPokecenter.asm"

INCLUDE "data/mapHeaders/VermilionMart.asm"
INCLUDE "scripts/VermilionMart.asm"
INCLUDE "data/mapObjects/VermilionMart.asm"

INCLUDE "data/mapHeaders/VermilionGym.asm"
INCLUDE "scripts/VermilionGym.asm"
INCLUDE "data/mapObjects/VermilionGym.asm"
VermilionGym_Blocks: INCBIN "maps/VermilionGym.blk"

INCLUDE "data/mapHeaders/CopycatsHouse2F.asm"
INCLUDE "scripts/CopycatsHouse2F.asm"
INCLUDE "data/mapObjects/CopycatsHouse2F.asm"

INCLUDE "data/mapHeaders/FightingDojo.asm"
INCLUDE "scripts/FightingDojo.asm"
INCLUDE "data/mapObjects/FightingDojo.asm"
FightingDojo_Blocks: INCBIN "maps/FightingDojo.blk"

INCLUDE "data/mapHeaders/SaffronGym.asm"
INCLUDE "scripts/SaffronGym.asm"
INCLUDE "data/mapObjects/SaffronGym.asm"
SaffronGym_Blocks: INCBIN "maps/SaffronGym.blk"

INCLUDE "data/mapHeaders/SaffronMart.asm"
INCLUDE "scripts/SaffronMart.asm"
INCLUDE "data/mapObjects/SaffronMart.asm"

INCLUDE "data/mapHeaders/SilphCo1F.asm"
INCLUDE "scripts/SilphCo1F.asm"
INCLUDE "data/mapObjects/SilphCo1F.asm"
SilphCo1F_Blocks: INCBIN "maps/SilphCo1F.blk"

INCLUDE "data/mapHeaders/SaffronPokecenter.asm"
INCLUDE "scripts/SaffronPokecenter.asm"
INCLUDE "data/mapObjects/SaffronPokecenter.asm"

INCLUDE "data/mapHeaders/ViridianForestNorthGate.asm"
INCLUDE "scripts/ViridianForestNorthGate.asm"
INCLUDE "data/mapObjects/ViridianForestNorthGate.asm"

INCLUDE "data/mapHeaders/Route2Gate.asm"
INCLUDE "scripts/Route2Gate.asm"
INCLUDE "data/mapObjects/Route2Gate.asm"

INCLUDE "data/mapHeaders/ViridianForestSouthGate.asm"
INCLUDE "scripts/ViridianForestSouthGate.asm"
INCLUDE "data/mapObjects/ViridianForestSouthGate.asm"

INCLUDE "data/mapHeaders/UndergroundPathRoute5.asm"
INCLUDE "scripts/UndergroundPathRoute5.asm"
INCLUDE "data/mapObjects/UndergroundPathRoute5.asm"

INCLUDE "data/mapHeaders/UndergroundPathRoute6.asm"
INCLUDE "scripts/UndergroundPathRoute6.asm"
INCLUDE "data/mapObjects/UndergroundPathRoute6.asm"

INCLUDE "data/mapHeaders/UndergroundPathRoute7.asm"
INCLUDE "scripts/UndergroundPathRoute7.asm"
INCLUDE "data/mapObjects/UndergroundPathRoute7.asm"

INCLUDE "data/mapHeaders/UndergroundPathRoute7Copy.asm"
INCLUDE "scripts/UndergroundPathRoute7Copy.asm"
INCLUDE "data/mapObjects/UndergroundPathRoute7Copy.asm"

INCLUDE "data/mapHeaders/SilphCo9F.asm"
INCLUDE "scripts/SilphCo9F.asm"
INCLUDE "data/mapObjects/SilphCo9F.asm"
SilphCo9F_Blocks: INCBIN "maps/SilphCo9F.blk"

INCLUDE "data/mapHeaders/VictoryRoad1F.asm"
INCLUDE "scripts/VictoryRoad1F.asm"
INCLUDE "data/mapObjects/VictoryRoad1F.asm"
VictoryRoad1F_Blocks: INCBIN "maps/VictoryRoad1F.blk"

INCLUDE "engine/predefs17_2.asm"

INCLUDE "engine/hidden_object_functions17.asm"


SECTION "bank18", ROMX

ViridianForest_Blocks: INCBIN "maps/ViridianForest.blk"
UndergroundPathNorthSouth_Blocks: INCBIN "maps/UndergroundPathNorthSouth.blk"
UndergroundPathWestEast_Blocks: INCBIN "maps/UndergroundPathWestEast.blk"

	INCBIN "maps/UnusedDiglettsCaveCopy.blk"

SSAnneB1FRooms_Blocks:
SSAnne2FRooms_Blocks: INCBIN "maps/SSAnne2FRooms.blk"

INCLUDE "data/mapHeaders/PokemonTower1F.asm"
INCLUDE "scripts/PokemonTower1F.asm"
INCLUDE "data/mapObjects/PokemonTower1F.asm"
PokemonTower1F_Blocks: INCBIN "maps/PokemonTower1F.blk"

INCLUDE "data/mapHeaders/PokemonTower2F.asm"
INCLUDE "scripts/PokemonTower2F.asm"
INCLUDE "data/mapObjects/PokemonTower2F.asm"
PokemonTower2F_Blocks: INCBIN "maps/PokemonTower2F.blk"

INCLUDE "data/mapHeaders/PokemonTower3F.asm"
INCLUDE "scripts/PokemonTower3F.asm"
INCLUDE "data/mapObjects/PokemonTower3F.asm"
PokemonTower3F_Blocks: INCBIN "maps/PokemonTower3F.blk"

INCLUDE "data/mapHeaders/PokemonTower4F.asm"
INCLUDE "scripts/PokemonTower4F.asm"
INCLUDE "data/mapObjects/PokemonTower4F.asm"
PokemonTower4F_Blocks: INCBIN "maps/PokemonTower4F.blk"

INCLUDE "data/mapHeaders/PokemonTower5F.asm"
INCLUDE "scripts/PokemonTower5F.asm"
INCLUDE "data/mapObjects/PokemonTower5F.asm"
PokemonTower5F_Blocks: INCBIN "maps/PokemonTower5F.blk"

INCLUDE "data/mapHeaders/PokemonTower6F.asm"
INCLUDE "scripts/PokemonTower6F.asm"
INCLUDE "data/mapObjects/PokemonTower6F.asm"
PokemonTower6F_Blocks: INCBIN "maps/PokemonTower6F.blk"

	INCBIN "maps/UnusedEmptyMap.blk"

INCLUDE "data/mapHeaders/PokemonTower7F.asm"
INCLUDE "scripts/PokemonTower7F.asm"
INCLUDE "data/mapObjects/PokemonTower7F.asm"
PokemonTower7F_Blocks: INCBIN "maps/PokemonTower7F.blk"

INCLUDE "data/mapHeaders/CeladonMart1F.asm"
INCLUDE "scripts/CeladonMart1F.asm"
INCLUDE "data/mapObjects/CeladonMart1F.asm"
CeladonMart1F_Blocks: INCBIN "maps/CeladonMart1F.blk"

INCLUDE "engine/overworld/cinnabar_lab.asm"

INCLUDE "data/mapHeaders/ViridianForest.asm"
INCLUDE "scripts/ViridianForest.asm"
INCLUDE "data/mapObjects/ViridianForest.asm"

INCLUDE "data/mapHeaders/SSAnne1F.asm"
INCLUDE "scripts/SSAnne1F.asm"
INCLUDE "data/mapObjects/SSAnne1F.asm"
SSAnne1F_Blocks: INCBIN "maps/SSAnne1F.blk"

INCLUDE "data/mapHeaders/SSAnne2F.asm"
INCLUDE "scripts/SSAnne2F.asm"
INCLUDE "data/mapObjects/SSAnne2F.asm"
SSAnne2F_Blocks: INCBIN "maps/SSAnne2F.blk"

INCLUDE "data/mapHeaders/SSAnneB1F.asm"
INCLUDE "scripts/SSAnneB1F.asm"
INCLUDE "data/mapObjects/SSAnneB1F.asm"
SSAnneB1F_Blocks: INCBIN "maps/SSAnneB1F.blk"

INCLUDE "data/mapHeaders/SSAnneBow.asm"
INCLUDE "scripts/SSAnneBow.asm"
INCLUDE "data/mapObjects/SSAnneBow.asm"
SSAnneBow_Blocks: INCBIN "maps/SSAnneBow.blk"

INCLUDE "data/mapHeaders/SSAnneKitchen.asm"
INCLUDE "scripts/SSAnneKitchen.asm"
INCLUDE "data/mapObjects/SSAnneKitchen.asm"
SSAnneKitchen_Blocks: INCBIN "maps/SSAnneKitchen.blk"

INCLUDE "data/mapHeaders/SSAnneCaptainsRoom.asm"
INCLUDE "scripts/SSAnneCaptainsRoom.asm"
INCLUDE "data/mapObjects/SSAnneCaptainsRoom.asm"
SSAnneCaptainsRoom_Blocks: INCBIN "maps/SSAnneCaptainsRoom.blk"

INCLUDE "data/mapHeaders/SSAnne1FRooms.asm"
INCLUDE "scripts/SSAnne1FRooms.asm"
INCLUDE "data/mapObjects/SSAnne1FRooms.asm"
SSAnne1FRooms_Blocks: INCBIN "maps/SSAnne1FRooms.blk"

INCLUDE "data/mapHeaders/SSAnne2FRooms.asm"
INCLUDE "scripts/SSAnne2FRooms.asm"
INCLUDE "data/mapObjects/SSAnne2FRooms.asm"

INCLUDE "data/mapHeaders/SSAnneB1FRooms.asm"
INCLUDE "scripts/SSAnneB1FRooms.asm"
INCLUDE "data/mapObjects/SSAnneB1FRooms.asm"

INCLUDE "data/mapHeaders/UndergroundPathNorthSouth.asm"
INCLUDE "scripts/UndergroundPathNorthSouth.asm"
INCLUDE "data/mapObjects/UndergroundPathNorthSouth.asm"

INCLUDE "data/mapHeaders/UndergroundPathWestEast.asm"
INCLUDE "scripts/UndergroundPathWestEast.asm"
INCLUDE "data/mapObjects/UndergroundPathWestEast.asm"

INCLUDE "data/mapHeaders/DiglettsCave.asm"
INCLUDE "scripts/DiglettsCave.asm"
INCLUDE "data/mapObjects/DiglettsCave.asm"
DiglettsCave_Blocks: INCBIN "maps/DiglettsCave.blk"

INCLUDE "data/mapHeaders/SilphCo11F.asm"
INCLUDE "scripts/SilphCo11F.asm"
INCLUDE "data/mapObjects/SilphCo11F.asm"
SilphCo11F_Blocks: INCBIN "maps/SilphCo11F.blk"

INCLUDE "engine/hidden_object_functions18.asm"


SECTION "bank19", ROMX

Overworld_GFX:     INCBIN "gfx/tilesets/overworld.2bpp"
Overworld_Block:   INCBIN "gfx/blocksets/overworld.bst"

RedsHouse1_GFX:
RedsHouse2_GFX:    INCBIN "gfx/tilesets/reds_house.2bpp"
	ds 16
RedsHouse1_Block:
RedsHouse2_Block:  INCBIN "gfx/blocksets/reds_house.bst"

House_GFX:         INCBIN "gfx/tilesets/house.2bpp"
House_Block:       INCBIN "gfx/blocksets/house.bst"
Mansion_GFX:       INCBIN "gfx/tilesets/mansion.2bpp"
Mansion_Block:     INCBIN "gfx/blocksets/mansion.bst"
ShipPort_GFX:      INCBIN "gfx/tilesets/ship_port.2bpp"
ShipPort_Block:    INCBIN "gfx/blocksets/ship_port.bst"
Interior_GFX:      INCBIN "gfx/tilesets/interior.2bpp"
Interior_Block:    INCBIN "gfx/blocksets/interior.bst"
Plateau_GFX:       INCBIN "gfx/tilesets/plateau.2bpp"
Plateau_Block:     INCBIN "gfx/blocksets/plateau.bst"


SECTION "bank1A", ROMX

INCLUDE "engine/battle/decrement_pp.asm"

Version_GFX:
IF DEF(_RED)
	INCBIN "gfx/title/red/redgreenversion.1bpp" ; 10 tiles
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/title/blue/blueversion.1bpp" ; 8 tiles
ENDC
Version_GFXEnd:

Dojo_GFX:
Gym_GFX:           INCBIN "gfx/tilesets/gym.2bpp"
Dojo_Block:
Gym_Block:         INCBIN "gfx/blocksets/gym.bst"

Mart_GFX:
Pokecenter_GFX:    INCBIN "gfx/tilesets/pokecenter.2bpp"
Mart_Block:
Pokecenter_Block:  INCBIN "gfx/blocksets/pokecenter.bst"

ForestGate_GFX:
Museum_GFX:
Gate_GFX:          INCBIN "gfx/tilesets/gate.2bpp"
ForestGate_Block:
Museum_Block:
Gate_Block:        INCBIN "gfx/blocksets/gate.bst"

Forest_GFX:        INCBIN "gfx/tilesets/forest.2bpp"
Forest_Block:      INCBIN "gfx/blocksets/forest.bst"
Facility_GFX:      INCBIN "gfx/tilesets/facility.2bpp"
Facility_Block:    INCBIN "gfx/blocksets/facility.bst"
	ds 1


SECTION "bank1B", ROMX

Cemetery_GFX:      INCBIN "gfx/tilesets/cemetery.2bpp"
Cemetery_Block:    INCBIN "gfx/blocksets/cemetery.bst"
Cavern_GFX:        INCBIN "gfx/tilesets/cavern.2bpp"
Cavern_Block:      INCBIN "gfx/blocksets/cavern.bst"
Lobby_GFX:         INCBIN "gfx/tilesets/lobby.2bpp"
Lobby_Block:       INCBIN "gfx/blocksets/lobby.bst"
Ship_GFX:          INCBIN "gfx/tilesets/ship.2bpp"
Ship_Block:        INCBIN "gfx/blocksets/ship.bst"
Lab_GFX:           INCBIN "gfx/tilesets/lab.2bpp"
Lab_Block:         INCBIN "gfx/blocksets/lab.bst"
Club_GFX:          INCBIN "gfx/tilesets/club.2bpp"
Club_Block:        INCBIN "gfx/blocksets/club.bst"
Underground_GFX:   INCBIN "gfx/tilesets/underground.2bpp"
Underground_Block: INCBIN "gfx/blocksets/underground.bst"


SECTION "bank1C", ROMX

INCLUDE "engine/gamefreak.asm"
INCLUDE "engine/hall_of_fame.asm"
INCLUDE "engine/overworld/healing_machine.asm"
INCLUDE "engine/overworld/player_animations.asm"
INCLUDE "engine/battle/ghost_marowak_anim.asm"
INCLUDE "engine/battle/battle_transitions.asm"
INCLUDE "engine/town_map.asm"
INCLUDE "engine/mon_party_sprites.asm"
INCLUDE "engine/in_game_trades.asm"
INCLUDE "engine/palettes.asm"

SECTION "Engine Save",ROMX

INCLUDE "engine/save.asm"
 
BlackTile:
	REPT 16
	db $ff
	ENDR
BlackTileEnd:

INCLUDE "color/ghost_marowak_anim.asm"
INCLUDE "color/color.asm"


SECTION "bank1D", ROMX

CopycatsHouse1F_Blocks: INCBIN "maps/CopycatsHouse1F.blk"

CinnabarMart_Blocks:
PewterMart_Blocks: INCBIN "maps/PewterMart.blk"

FuchsiaBillsGrandpasHouse_Blocks: INCBIN "maps/FuchsiaBillsGrandpasHouse.blk"

CinnabarPokecenter_Blocks:
FuchsiaPokecenter_Blocks: INCBIN "maps/FuchsiaPokecenter.blk"

CeruleanBadgeHouse_Blocks: INCBIN "maps/CeruleanBadgeHouse.blk"

INCLUDE "engine/HoF_room_pc.asm"

INCLUDE "engine/status_ailments.asm"

INCLUDE "engine/items/itemfinder.asm"

INCLUDE "scripts/CeruleanCity_2.asm"

INCLUDE "data/mapHeaders/ViridianGym.asm"
INCLUDE "scripts/ViridianGym.asm"
INCLUDE "data/mapObjects/ViridianGym.asm"
ViridianGym_Blocks: INCBIN "maps/ViridianGym.blk"

INCLUDE "data/mapHeaders/PewterMart.asm"
INCLUDE "scripts/PewterMart.asm"
INCLUDE "data/mapObjects/PewterMart.asm"

INCLUDE "data/mapHeaders/CeruleanCave1F.asm"
INCLUDE "scripts/CeruleanCave1F.asm"
INCLUDE "data/mapObjects/CeruleanCave1F.asm"
CeruleanCave1F_Blocks: INCBIN "maps/CeruleanCave1F.blk"

INCLUDE "data/mapHeaders/CeruleanBadgeHouse.asm"
INCLUDE "scripts/CeruleanBadgeHouse.asm"
INCLUDE "data/mapObjects/CeruleanBadgeHouse.asm"

INCLUDE "engine/menu/vending_machine.asm"

INCLUDE "data/mapHeaders/FuchsiaBillsGrandpasHouse.asm"
INCLUDE "scripts/FuchsiaBillsGrandpasHouse.asm"
INCLUDE "data/mapObjects/FuchsiaBillsGrandpasHouse.asm"

INCLUDE "data/mapHeaders/FuchsiaPokecenter.asm"
INCLUDE "scripts/FuchsiaPokecenter.asm"
INCLUDE "data/mapObjects/FuchsiaPokecenter.asm"

INCLUDE "data/mapHeaders/WardensHouse.asm"
INCLUDE "scripts/WardensHouse.asm"
INCLUDE "data/mapObjects/WardensHouse.asm"
WardensHouse_Blocks: INCBIN "maps/WardensHouse.blk"

INCLUDE "data/mapHeaders/SafariZoneGate.asm"
INCLUDE "scripts/SafariZoneGate.asm"
INCLUDE "data/mapObjects/SafariZoneGate.asm"
SafariZoneGate_Blocks: INCBIN "maps/SafariZoneGate.blk"

INCLUDE "data/mapHeaders/FuchsiaGym.asm"
INCLUDE "scripts/FuchsiaGym.asm"
INCLUDE "data/mapObjects/FuchsiaGym.asm"
FuchsiaGym_Blocks: INCBIN "maps/FuchsiaGym.blk"

INCLUDE "data/mapHeaders/FuchsiaMeetingRoom.asm"
INCLUDE "scripts/FuchsiaMeetingRoom.asm"
INCLUDE "data/mapObjects/FuchsiaMeetingRoom.asm"
FuchsiaMeetingRoom_Blocks: INCBIN "maps/FuchsiaMeetingRoom.blk"

INCLUDE "data/mapHeaders/CinnabarGym.asm"
INCLUDE "scripts/CinnabarGym.asm"
INCLUDE "data/mapObjects/CinnabarGym.asm"
CinnabarGym_Blocks: INCBIN "maps/CinnabarGym.blk"

INCLUDE "data/mapHeaders/CinnabarLab.asm"
INCLUDE "scripts/CinnabarLab.asm"
INCLUDE "data/mapObjects/CinnabarLab.asm"
CinnabarLab_Blocks: INCBIN "maps/CinnabarLab.blk"

INCLUDE "data/mapHeaders/CinnabarLabTradeRoom.asm"
INCLUDE "scripts/CinnabarLabTradeRoom.asm"
INCLUDE "data/mapObjects/CinnabarLabTradeRoom.asm"
CinnabarLabTradeRoom_Blocks: INCBIN "maps/CinnabarLabTradeRoom.blk"

INCLUDE "data/mapHeaders/CinnabarLabMetronomeRoom.asm"
INCLUDE "scripts/CinnabarLabMetronomeRoom.asm"
INCLUDE "data/mapObjects/CinnabarLabMetronomeRoom.asm"
CinnabarLabMetronomeRoom_Blocks: INCBIN "maps/CinnabarLabMetronomeRoom.blk"

INCLUDE "data/mapHeaders/CinnabarLabFossilRoom.asm"
INCLUDE "scripts/CinnabarLabFossilRoom.asm"
INCLUDE "data/mapObjects/CinnabarLabFossilRoom.asm"
CinnabarLabFossilRoom_Blocks: INCBIN "maps/CinnabarLabFossilRoom.blk"

INCLUDE "data/mapHeaders/CinnabarPokecenter.asm"
INCLUDE "scripts/CinnabarPokecenter.asm"
INCLUDE "data/mapObjects/CinnabarPokecenter.asm"

INCLUDE "data/mapHeaders/CinnabarMart.asm"
INCLUDE "scripts/CinnabarMart.asm"
INCLUDE "data/mapObjects/CinnabarMart.asm"

INCLUDE "data/mapHeaders/CopycatsHouse1F.asm"
INCLUDE "scripts/CopycatsHouse1F.asm"
INCLUDE "data/mapObjects/CopycatsHouse1F.asm"

INCLUDE "data/mapHeaders/ChampionsRoom.asm"
INCLUDE "scripts/ChampionsRoom.asm"
INCLUDE "data/mapObjects/ChampionsRoom.asm"
ChampionsRoom_Blocks: INCBIN "maps/ChampionsRoom.blk"

INCLUDE "data/mapHeaders/LoreleisRoom.asm"
INCLUDE "scripts/LoreleisRoom.asm"
INCLUDE "data/mapObjects/LoreleisRoom.asm"
LoreleisRoom_Blocks: INCBIN "maps/LoreleisRoom.blk"

INCLUDE "data/mapHeaders/BrunosRoom.asm"
INCLUDE "scripts/BrunosRoom.asm"
INCLUDE "data/mapObjects/BrunosRoom.asm"
BrunosRoom_Blocks: INCBIN "maps/BrunosRoom.blk"

INCLUDE "data/mapHeaders/AgathasRoom.asm"
INCLUDE "scripts/AgathasRoom.asm"
INCLUDE "data/mapObjects/AgathasRoom.asm"
AgathasRoom_Blocks: INCBIN "maps/AgathasRoom.blk"

INCLUDE "engine/menu/league_pc.asm"

INCLUDE "engine/overworld/hidden_items.asm"


SECTION "bank1E", ROMX

INCLUDE "engine/battle/animations.asm"

INCLUDE "engine/overworld/cut2.asm"

INCLUDE "engine/overworld/ssanne.asm"

IF DEF(_RED)
RedFishingTilesFront: INCBIN "gfx/sprites/red_fishing_tile_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/sprites/red_fishing_tile_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/sprites/red_fishing_tile_side.2bpp"
ENDC
RedFishingRodTiles:   INCBIN "gfx/sprites/red_fishingrod_tiles.2bpp"
IF DEF(_BLUE)
RedFishingTilesFront: INCBIN "gfx/sprites/blue_fishing_tile_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/sprites/blue_fishing_tile_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/sprites/blue_fishing_tile_side.2bpp"

ENDC

INCLUDE "data/animations.asm"

INCLUDE "engine/evolution.asm"

INCLUDE "engine/overworld/elevator.asm"

INCLUDE "engine/items/tm_prices.asm"

INCLUDE "color/animations.asm"

; Inserted pokemon images go here

IF GEN_2_GRAPHICS
SECTION "bank32",ROMX

GrowlithePicFront:   INCBIN "gfx/pokemon/gsfront/growlithe.pic"
GrowlithePicBack:    INCBIN "gfx/pokemon/gsback/growlitheb.pic"
OnixPicFront:        INCBIN "gfx/pokemon/gsfront/onix.pic"
OnixPicBack:         INCBIN "gfx/pokemon/gsback/onixb.pic"
FearowPicFront:      INCBIN "gfx/pokemon/gsfront/fearow.pic"
FearowPicBack:       INCBIN "gfx/pokemon/gsback/fearowb.pic"
PidgeyPicFront:      INCBIN "gfx/pokemon/gsfront/pidgey.pic"
PidgeyPicBack:       INCBIN "gfx/pokemon/gsback/pidgeyb.pic"
SlowpokePicFront:    INCBIN "gfx/pokemon/gsfront/slowpoke.pic"
SlowpokePicBack:     INCBIN "gfx/pokemon/gsback/slowpokeb.pic"
KadabraPicFront:     INCBIN "gfx/pokemon/gsfront/kadabra.pic"
KadabraPicBack:      INCBIN "gfx/pokemon/gsback/kadabrab.pic"
GravelerPicFront:    INCBIN "gfx/pokemon/gsfront/graveler.pic"
GravelerPicBack:     INCBIN "gfx/pokemon/gsback/gravelerb.pic"
ChanseyPicFront:     INCBIN "gfx/pokemon/gsfront/chansey.pic"
ChanseyPicBack:      INCBIN "gfx/pokemon/gsback/chanseyb.pic"
MachokePicFront:     INCBIN "gfx/pokemon/gsfront/machoke.pic"
MachokePicBack:      INCBIN "gfx/pokemon/gsback/machokeb.pic"
MrMimePicFront:      INCBIN "gfx/pokemon/gsfront/mr.mime.pic"
MrMimePicBack:       INCBIN "gfx/pokemon/gsback/mr.mimeb.pic"
HitmonleePicFront:   INCBIN "gfx/pokemon/gsfront/hitmonlee.pic"
HitmonleePicBack:    INCBIN "gfx/pokemon/gsback/hitmonleeb.pic"
HitmonchanPicFront:  INCBIN "gfx/pokemon/gsfront/hitmonchan.pic"
HitmonchanPicBack:   INCBIN "gfx/pokemon/gsback/hitmonchanb.pic"
ArbokPicFront:       INCBIN "gfx/pokemon/gsfront/arbok.pic"
ArbokPicBack:        INCBIN "gfx/pokemon/gsback/arbokb.pic"
ParasectPicFront:    INCBIN "gfx/pokemon/gsfront/parasect.pic"
ParasectPicBack:     INCBIN "gfx/pokemon/gsback/parasectb.pic"
PsyduckPicFront:     INCBIN "gfx/pokemon/gsfront/psyduck.pic"
PsyduckPicBack:      INCBIN "gfx/pokemon/gsback/psyduckb.pic"
DrowzeePicFront:     INCBIN "gfx/pokemon/gsfront/drowzee.pic"
DrowzeePicBack:      INCBIN "gfx/pokemon/gsback/drowzeeb.pic"
GolemPicFront:       INCBIN "gfx/pokemon/gsfront/golem.pic"
GolemPicBack:        INCBIN "gfx/pokemon/gsback/golemb.pic"
MagmarPicFront:      INCBIN "gfx/pokemon/gsfront/magmar.pic"
MagmarPicBack:       INCBIN "gfx/pokemon/gsback/magmarb.pic"
ElectabuzzPicFront:  INCBIN "gfx/pokemon/gsfront/electabuzz.pic"
ElectabuzzPicBack:   INCBIN "gfx/pokemon/gsback/electabuzzb.pic"
MagnetonPicFront:    INCBIN "gfx/pokemon/gsfront/magneton.pic"
MagnetonPicBack:     INCBIN "gfx/pokemon/gsback/magnetonb.pic"
KoffingPicFront:     INCBIN "gfx/pokemon/gsfront/koffing.pic"
KoffingPicBack:      INCBIN "gfx/pokemon/gsback/koffingb.pic"
MankeyPicFront:      INCBIN "gfx/pokemon/gsfront/mankey.pic"
MankeyPicBack:       INCBIN "gfx/pokemon/gsback/mankeyb.pic"
SeelPicFront:        INCBIN "gfx/pokemon/gsfront/seel.pic"
SeelPicBack:         INCBIN "gfx/pokemon/gsback/seelb.pic"
DiglettPicFront:     INCBIN "gfx/pokemon/gsfront/diglett.pic"
DiglettPicBack:      INCBIN "gfx/pokemon/gsback/diglettb.pic"
TaurosPicFront:      INCBIN "gfx/pokemon/gsfront/tauros.pic"
TaurosPicBack:       INCBIN "gfx/pokemon/gsback/taurosb.pic"


SECTION "bank33",ROMX


RhydonPicFront:      INCBIN "gfx/pokemon/gsfront/rhydon.pic"
RhydonPicBack:       INCBIN "gfx/pokemon/gsback/rhydonb.pic"
KangaskhanPicFront:  INCBIN "gfx/pokemon/gsfront/kangaskhan.pic"
KangaskhanPicBack:   INCBIN "gfx/pokemon/gsback/kangaskhanb.pic"
NidoranMPicFront:    INCBIN "gfx/pokemon/gsfront/nidoranm.pic"
NidoranMPicBack:     INCBIN "gfx/pokemon/gsback/nidoranmb.pic"
ClefairyPicFront:    INCBIN "gfx/pokemon/gsfront/clefairy.pic"
ClefairyPicBack:     INCBIN "gfx/pokemon/gsback/clefairyb.pic"
SpearowPicFront:     INCBIN "gfx/pokemon/gsfront/spearow.pic"
SpearowPicBack:      INCBIN "gfx/pokemon/gsback/spearowb.pic"
VoltorbPicFront:     INCBIN "gfx/pokemon/gsfront/voltorb.pic"
VoltorbPicBack:      INCBIN "gfx/pokemon/gsback/voltorbb.pic"
NidokingPicFront:    INCBIN "gfx/pokemon/gsfront/nidoking.pic"
NidokingPicBack:     INCBIN "gfx/pokemon/gsback/nidokingb.pic"
SlowbroPicFront:     INCBIN "gfx/pokemon/gsfront/slowbro.pic"
SlowbroPicBack:      INCBIN "gfx/pokemon/gsback/slowbrob.pic"
IvysaurPicFront:     INCBIN "gfx/pokemon/gsfront/ivysaur.pic"
IvysaurPicBack:      INCBIN "gfx/pokemon/gsback/ivysaurb.pic"
ExeggutorPicFront:   INCBIN "gfx/pokemon/gsfront/exeggutor.pic"
ExeggutorPicBack:    INCBIN "gfx/pokemon/gsback/exeggutorb.pic"
LickitungPicFront:   INCBIN "gfx/pokemon/gsfront/lickitung.pic"
LickitungPicBack:    INCBIN "gfx/pokemon/gsback/lickitungb.pic"
ExeggcutePicFront:   INCBIN "gfx/pokemon/gsfront/exeggcute.pic"
ExeggcutePicBack:    INCBIN "gfx/pokemon/gsback/exeggcuteb.pic"
GrimerPicFront:      INCBIN "gfx/pokemon/gsfront/grimer.pic"
GrimerPicBack:       INCBIN "gfx/pokemon/gsback/grimerb.pic"
GengarPicFront:      INCBIN "gfx/pokemon/gsfront/gengar.pic"
GengarPicBack:       INCBIN "gfx/pokemon/gsback/gengarb.pic"
NidoranFPicFront:    INCBIN "gfx/pokemon/gsfront/nidoranf.pic"
NidoranFPicBack:     INCBIN "gfx/pokemon/gsback/nidoranfb.pic"
NidoqueenPicFront:   INCBIN "gfx/pokemon/gsfront/nidoqueen.pic"
NidoqueenPicBack:    INCBIN "gfx/pokemon/gsback/nidoqueenb.pic"
CubonePicFront:      INCBIN "gfx/pokemon/gsfront/cubone.pic"
CubonePicBack:       INCBIN "gfx/pokemon/gsback/cuboneb.pic"
RhyhornPicFront:     INCBIN "gfx/pokemon/gsfront/rhyhorn.pic"
RhyhornPicBack:      INCBIN "gfx/pokemon/gsback/rhyhornb.pic"
LaprasPicFront:      INCBIN "gfx/pokemon/gsfront/lapras.pic"
LaprasPicBack:       INCBIN "gfx/pokemon/gsback/laprasb.pic"
ArcaninePicFront:    INCBIN "gfx/pokemon/gsfront/arcanine.pic"
ArcaninePicBack:     INCBIN "gfx/pokemon/gsback/arcanineb.pic"
GyaradosPicFront:    INCBIN "gfx/pokemon/gsfront/gyarados.pic"
GyaradosPicBack:     INCBIN "gfx/pokemon/gsback/gyaradosb.pic"
ShellderPicFront:    INCBIN "gfx/pokemon/gsfront/shellder.pic"
ShellderPicBack:     INCBIN "gfx/pokemon/gsback/shellderb.pic"


SECTION "bank34",ROMX


ArticunoPicFront:    INCBIN "gfx/pokemon/gsfront/articuno.pic"
ArticunoPicBack:     INCBIN "gfx/pokemon/gsback/articunob.pic"
ZapdosPicFront:      INCBIN "gfx/pokemon/gsfront/zapdos.pic"
ZapdosPicBack:       INCBIN "gfx/pokemon/gsback/zapdosb.pic"
DittoPicFront:       INCBIN "gfx/pokemon/gsfront/ditto.pic"
DittoPicBack:        INCBIN "gfx/pokemon/gsback/dittob.pic"
MeowthPicFront:      INCBIN "gfx/pokemon/gsfront/meowth.pic"
MeowthPicBack:       INCBIN "gfx/pokemon/gsback/meowthb.pic"
KrabbyPicFront:      INCBIN "gfx/pokemon/gsfront/krabby.pic"
KrabbyPicBack:       INCBIN "gfx/pokemon/gsback/krabbyb.pic"
VulpixPicFront:      INCBIN "gfx/pokemon/gsfront/vulpix.pic"
VulpixPicBack:       INCBIN "gfx/pokemon/gsback/vulpixb.pic"
NinetalesPicFront:   INCBIN "gfx/pokemon/gsfront/ninetales.pic"
NinetalesPicBack:    INCBIN "gfx/pokemon/gsback/ninetalesb.pic"
PikachuPicFront:     INCBIN "gfx/pokemon/gsfront/pikachu.pic"
PikachuPicBack:      INCBIN "gfx/pokemon/gsback/pikachub.pic"
RaichuPicFront:      INCBIN "gfx/pokemon/gsfront/raichu.pic"
RaichuPicBack:       INCBIN "gfx/pokemon/gsback/raichub.pic"
DratiniPicFront:     INCBIN "gfx/pokemon/gsfront/dratini.pic"
DratiniPicBack:      INCBIN "gfx/pokemon/gsback/dratinib.pic"
DragonairPicFront:   INCBIN "gfx/pokemon/gsfront/dragonair.pic"
DragonairPicBack:    INCBIN "gfx/pokemon/gsback/dragonairb.pic"
KabutoPicFront:      INCBIN "gfx/pokemon/gsfront/kabuto.pic"
KabutoPicBack:       INCBIN "gfx/pokemon/gsback/kabutob.pic"
KabutopsPicFront:    INCBIN "gfx/pokemon/gsfront/kabutops.pic"
KabutopsPicBack:     INCBIN "gfx/pokemon/gsback/kabutopsb.pic"
HorseaPicFront:      INCBIN "gfx/pokemon/gsfront/horsea.pic"
HorseaPicBack:       INCBIN "gfx/pokemon/gsback/horseab.pic"
SeadraPicFront:      INCBIN "gfx/pokemon/gsfront/seadra.pic"
SeadraPicBack:       INCBIN "gfx/pokemon/gsback/seadrab.pic"
SandshrewPicFront:   INCBIN "gfx/pokemon/gsfront/sandshrew.pic"
SandshrewPicBack:    INCBIN "gfx/pokemon/gsback/sandshrewb.pic"
SandslashPicFront:   INCBIN "gfx/pokemon/gsfront/sandslash.pic"
SandslashPicBack:    INCBIN "gfx/pokemon/gsback/sandslashb.pic"
OmanytePicFront:     INCBIN "gfx/pokemon/gsfront/omanyte.pic"
OmanytePicBack:      INCBIN "gfx/pokemon/gsback/omanyteb.pic"
OmastarPicFront:     INCBIN "gfx/pokemon/gsfront/omastar.pic"
OmastarPicBack:      INCBIN "gfx/pokemon/gsback/omastarb.pic"
JigglypuffPicFront:  INCBIN "gfx/pokemon/gsfront/jigglypuff.pic"
JigglypuffPicBack:   INCBIN "gfx/pokemon/gsback/jigglypuffb.pic"
WigglytuffPicFront:  INCBIN "gfx/pokemon/gsfront/wigglytuff.pic"
WigglytuffPicBack:   INCBIN "gfx/pokemon/gsback/wigglytuffb.pic"
EeveePicFront:       INCBIN "gfx/pokemon/gsfront/eevee.pic"
EeveePicBack:        INCBIN "gfx/pokemon/gsback/eeveeb.pic"
FlareonPicFront:     INCBIN "gfx/pokemon/gsfront/flareon.pic"
FlareonPicBack:      INCBIN "gfx/pokemon/gsback/flareonb.pic"


SECTION "bank35",ROMX


DodrioPicFront:      INCBIN "gfx/pokemon/gsfront/dodrio.pic"
DodrioPicBack:       INCBIN "gfx/pokemon/gsback/dodriob.pic"
PrimeapePicFront:    INCBIN "gfx/pokemon/gsfront/primeape.pic"
PrimeapePicBack:     INCBIN "gfx/pokemon/gsback/primeapeb.pic"
DugtrioPicFront:     INCBIN "gfx/pokemon/gsfront/dugtrio.pic"
DugtrioPicBack:      INCBIN "gfx/pokemon/gsback/dugtriob.pic"
VenomothPicFront:    INCBIN "gfx/pokemon/gsfront/venomoth.pic"
VenomothPicBack:     INCBIN "gfx/pokemon/gsback/venomothb.pic"
DewgongPicFront:     INCBIN "gfx/pokemon/gsfront/dewgong.pic"
DewgongPicBack:      INCBIN "gfx/pokemon/gsback/dewgongb.pic"
CaterpiePicFront:    INCBIN "gfx/pokemon/gsfront/caterpie.pic"
CaterpiePicBack:     INCBIN "gfx/pokemon/gsback/caterpieb.pic"
MetapodPicFront:     INCBIN "gfx/pokemon/gsfront/metapod.pic"
MetapodPicBack:      INCBIN "gfx/pokemon/gsback/metapodb.pic"
ButterfreePicFront:  INCBIN "gfx/pokemon/gsfront/butterfree.pic"
ButterfreePicBack:   INCBIN "gfx/pokemon/gsback/butterfreeb.pic"
MachampPicFront:     INCBIN "gfx/pokemon/gsfront/machamp.pic"
MachampPicBack:      INCBIN "gfx/pokemon/gsback/machampb.pic"
GolduckPicFront:     INCBIN "gfx/pokemon/gsfront/golduck.pic"
GolduckPicBack:      INCBIN "gfx/pokemon/gsback/golduckb.pic"
HypnoPicFront:       INCBIN "gfx/pokemon/gsfront/hypno.pic"
HypnoPicBack:        INCBIN "gfx/pokemon/gsback/hypnob.pic"
GolbatPicFront:      INCBIN "gfx/pokemon/gsfront/golbat.pic"
GolbatPicBack:       INCBIN "gfx/pokemon/gsback/golbatb.pic"
MewtwoPicFront:      INCBIN "gfx/pokemon/gsfront/mewtwo.pic"
MewtwoPicBack:       INCBIN "gfx/pokemon/gsback/mewtwob.pic"
SnorlaxPicFront:     INCBIN "gfx/pokemon/gsfront/snorlax.pic"
SnorlaxPicBack:      INCBIN "gfx/pokemon/gsback/snorlaxb.pic"
MagikarpPicFront:    INCBIN "gfx/pokemon/gsfront/magikarp.pic"
MagikarpPicBack:     INCBIN "gfx/pokemon/gsback/magikarpb.pic"
MukPicFront:         INCBIN "gfx/pokemon/gsfront/muk.pic"
MukPicBack:          INCBIN "gfx/pokemon/gsback/mukb.pic"
KinglerPicFront:     INCBIN "gfx/pokemon/gsfront/kingler.pic"
KinglerPicBack:      INCBIN "gfx/pokemon/gsback/kinglerb.pic"
CloysterPicFront:    INCBIN "gfx/pokemon/gsfront/cloyster.pic"
CloysterPicBack:     INCBIN "gfx/pokemon/gsback/cloysterb.pic"
ElectrodePicFront:   INCBIN "gfx/pokemon/gsfront/electrode.pic"
ElectrodePicBack:    INCBIN "gfx/pokemon/gsback/electrodeb.pic"
ClefablePicFront:    INCBIN "gfx/pokemon/gsfront/clefable.pic"
ClefablePicBack:     INCBIN "gfx/pokemon/gsback/clefableb.pic"
WeezingPicFront:     INCBIN "gfx/pokemon/gsfront/weezing.pic"
WeezingPicBack:      INCBIN "gfx/pokemon/gsback/weezingb.pic"
PersianPicFront:     INCBIN "gfx/pokemon/gsfront/persian.pic"
PersianPicBack:      INCBIN "gfx/pokemon/gsback/persianb.pic"



SECTION "bank36",ROMX


BulbasaurPicFront:   INCBIN "gfx/pokemon/gsfront/bulbasaur.pic"
BulbasaurPicBack:    INCBIN "gfx/pokemon/gsback/bulbasaurb.pic"
VenusaurPicFront:    INCBIN "gfx/pokemon/gsfront/venusaur.pic"
VenusaurPicBack:     INCBIN "gfx/pokemon/gsback/venusaurb.pic"
TentacruelPicFront:  INCBIN "gfx/pokemon/gsfront/tentacruel.pic"
TentacruelPicBack:   INCBIN "gfx/pokemon/gsback/tentacruelb.pic"
GoldeenPicFront:     INCBIN "gfx/pokemon/gsfront/goldeen.pic"
GoldeenPicBack:      INCBIN "gfx/pokemon/gsback/goldeenb.pic"
SeakingPicFront:     INCBIN "gfx/pokemon/gsfront/seaking.pic"
SeakingPicBack:      INCBIN "gfx/pokemon/gsback/seakingb.pic"
PonytaPicFront:      INCBIN "gfx/pokemon/gsfront/ponyta.pic"
RapidashPicFront:    INCBIN "gfx/pokemon/gsfront/rapidash.pic"
PonytaPicBack:       INCBIN "gfx/pokemon/gsback/ponytab.pic"
RapidashPicBack:     INCBIN "gfx/pokemon/gsback/rapidashb.pic"
RattataPicFront:     INCBIN "gfx/pokemon/gsfront/rattata.pic"
RattataPicBack:      INCBIN "gfx/pokemon/gsback/rattatab.pic"
RaticatePicFront:    INCBIN "gfx/pokemon/gsfront/raticate.pic"
RaticatePicBack:     INCBIN "gfx/pokemon/gsback/raticateb.pic"
NidorinoPicFront:    INCBIN "gfx/pokemon/gsfront/nidorino.pic"
NidorinoPicBack:     INCBIN "gfx/pokemon/gsback/nidorinob.pic"
NidorinaPicFront:    INCBIN "gfx/pokemon/gsfront/nidorina.pic"
NidorinaPicBack:     INCBIN "gfx/pokemon/gsback/nidorinab.pic"
GeodudePicFront:     INCBIN "gfx/pokemon/gsfront/geodude.pic"
GeodudePicBack:      INCBIN "gfx/pokemon/gsback/geodudeb.pic"
PorygonPicFront:     INCBIN "gfx/pokemon/gsfront/porygon.pic"
PorygonPicBack:      INCBIN "gfx/pokemon/gsback/porygonb.pic"
AerodactylPicFront:  INCBIN "gfx/pokemon/gsfront/aerodactyl.pic"
AerodactylPicBack:   INCBIN "gfx/pokemon/gsback/aerodactylb.pic"
MagnemitePicFront:   INCBIN "gfx/pokemon/gsfront/magnemite.pic"
MagnemitePicBack:    INCBIN "gfx/pokemon/gsback/magnemiteb.pic"
CharmanderPicFront:  INCBIN "gfx/pokemon/gsfront/charmander.pic"
CharmanderPicBack:   INCBIN "gfx/pokemon/gsback/charmanderb.pic"
SquirtlePicFront:    INCBIN "gfx/pokemon/gsfront/squirtle.pic"
SquirtlePicBack:     INCBIN "gfx/pokemon/gsback/squirtleb.pic"
CharmeleonPicFront:  INCBIN "gfx/pokemon/gsfront/charmeleon.pic"
CharmeleonPicBack:   INCBIN "gfx/pokemon/gsback/charmeleonb.pic"
WartortlePicFront:   INCBIN "gfx/pokemon/gsfront/wartortle.pic"
WartortlePicBack:    INCBIN "gfx/pokemon/gsback/wartortleb.pic"
CharizardPicFront:   INCBIN "gfx/pokemon/gsfront/charizard.pic"
CharizardPicBack:    INCBIN "gfx/pokemon/gsback/charizardb.pic"
FossilKabutopsPic:   INCBIN "gfx/pokemon/front/fossilkabutops.pic"
FossilAerodactylPic: INCBIN "gfx/pokemon/front/fossilaerodactyl.pic"
GhostPic:            INCBIN "gfx/pokemon/ghost.pic"
OddishPicFront:      INCBIN "gfx/pokemon/gsfront/oddish.pic"
OddishPicBack:       INCBIN "gfx/pokemon/gsback/oddishb.pic"
GloomPicFront:       INCBIN "gfx/pokemon/gsfront/gloom.pic"
GloomPicBack:        INCBIN "gfx/pokemon/gsback/gloomb.pic"


SECTION "bank37",ROMX


BellsproutPicFront:  INCBIN "gfx/pokemon/gsfront/bellsprout.pic"
BellsproutPicBack:   INCBIN "gfx/pokemon/gsback/bellsproutb.pic"
WeepinbellPicFront:  INCBIN "gfx/pokemon/gsfront/weepinbell.pic"
WeepinbellPicBack:   INCBIN "gfx/pokemon/gsback/weepinbellb.pic"
VictreebelPicFront:  INCBIN "gfx/pokemon/gsfront/victreebel.pic"
VictreebelPicBack:   INCBIN "gfx/pokemon/gsback/victreebelb.pic"

MewPicFront:         INCBIN "gfx/pokemon/gsfront/mew.pic"
MewPicBack:          INCBIN "gfx/pokemon/gsback/mewb.pic"

FarfetchdPicFront:   INCBIN "gfx/pokemon/gsfront/farfetchd.pic"
FarfetchdPicBack:    INCBIN "gfx/pokemon/gsback/farfetchdb.pic"
VenonatPicFront:     INCBIN "gfx/pokemon/gsfront/venonat.pic"
VenonatPicBack:      INCBIN "gfx/pokemon/gsback/venonatb.pic"
DragonitePicFront:   INCBIN "gfx/pokemon/gsfront/dragonite.pic"
DragonitePicBack:    INCBIN "gfx/pokemon/gsback/dragoniteb.pic"
DoduoPicFront:       INCBIN "gfx/pokemon/gsfront/doduo.pic"
DoduoPicBack:        INCBIN "gfx/pokemon/gsback/doduob.pic"
PoliwagPicFront:     INCBIN "gfx/pokemon/gsfront/poliwag.pic"
PoliwagPicBack:      INCBIN "gfx/pokemon/gsback/poliwagb.pic"
JynxPicFront:        INCBIN "gfx/pokemon/gsfront/jynx.pic"
JynxPicBack:         INCBIN "gfx/pokemon/gsback/jynxb.pic"
MarowakPicFront:     INCBIN "gfx/pokemon/gsfront/marowak.pic"
MarowakPicBack:      INCBIN "gfx/pokemon/gsback/marowakb.pic"
ENDC

IF !GEN_2_GRAPHICS
SECTION "bank32",ROMX

GrowlithePicFront:   INCBIN "gfx/pokemon/front/growlithe.pic"
GrowlithePicBack:    INCBIN "gfx/pokemon/back/growlitheb.pic"
OnixPicFront:        INCBIN "gfx/pokemon/front/onix.pic"
OnixPicBack:         INCBIN "gfx/pokemon/back/onixb.pic"
FearowPicFront:      INCBIN "gfx/pokemon/front/fearow.pic"
FearowPicBack:       INCBIN "gfx/pokemon/back/fearowb.pic"
PidgeyPicFront:      INCBIN "gfx/pokemon/front/pidgey.pic"
PidgeyPicBack:       INCBIN "gfx/pokemon/back/pidgeyb.pic"
SlowpokePicFront:    INCBIN "gfx/pokemon/front/slowpoke.pic"
SlowpokePicBack:     INCBIN "gfx/pokemon/back/slowpokeb.pic"
KadabraPicFront:     INCBIN "gfx/pokemon/front/kadabra.pic"
KadabraPicBack:      INCBIN "gfx/pokemon/back/kadabrab.pic"
GravelerPicFront:    INCBIN "gfx/pokemon/front/graveler.pic"
GravelerPicBack:     INCBIN "gfx/pokemon/back/gravelerb.pic"
ChanseyPicFront:     INCBIN "gfx/pokemon/front/chansey.pic"
ChanseyPicBack:      INCBIN "gfx/pokemon/back/chanseyb.pic"
MachokePicFront:     INCBIN "gfx/pokemon/front/machoke.pic"
MachokePicBack:      INCBIN "gfx/pokemon/back/machokeb.pic"
MrMimePicFront:      INCBIN "gfx/pokemon/front/mr.mime.pic"
MrMimePicBack:       INCBIN "gfx/pokemon/back/mr.mimeb.pic"
HitmonleePicFront:   INCBIN "gfx/pokemon/front/hitmonlee.pic"
HitmonleePicBack:    INCBIN "gfx/pokemon/back/hitmonleeb.pic"
HitmonchanPicFront:  INCBIN "gfx/pokemon/front/hitmonchan.pic"
HitmonchanPicBack:   INCBIN "gfx/pokemon/back/hitmonchanb.pic"
ArbokPicFront:       INCBIN "gfx/pokemon/front/arbok.pic"
ArbokPicBack:        INCBIN "gfx/pokemon/back/arbokb.pic"
ParasectPicFront:    INCBIN "gfx/pokemon/front/parasect.pic"
ParasectPicBack:     INCBIN "gfx/pokemon/back/parasectb.pic"
PsyduckPicFront:     INCBIN "gfx/pokemon/front/psyduck.pic"
PsyduckPicBack:      INCBIN "gfx/pokemon/back/psyduckb.pic"
DrowzeePicFront:     INCBIN "gfx/pokemon/front/drowzee.pic"
DrowzeePicBack:      INCBIN "gfx/pokemon/back/drowzeeb.pic"
GolemPicFront:       INCBIN "gfx/pokemon/front/golem.pic"
GolemPicBack:        INCBIN "gfx/pokemon/back/golemb.pic"
MagmarPicFront:      INCBIN "gfx/pokemon/front/magmar.pic"
MagmarPicBack:       INCBIN "gfx/pokemon/back/magmarb.pic"
ElectabuzzPicFront:  INCBIN "gfx/pokemon/front/electabuzz.pic"
ElectabuzzPicBack:   INCBIN "gfx/pokemon/back/electabuzzb.pic"
MagnetonPicFront:    INCBIN "gfx/pokemon/front/magneton.pic"
MagnetonPicBack:     INCBIN "gfx/pokemon/back/magnetonb.pic"
KoffingPicFront:     INCBIN "gfx/pokemon/front/koffing.pic"
KoffingPicBack:      INCBIN "gfx/pokemon/back/koffingb.pic"
MankeyPicFront:      INCBIN "gfx/pokemon/front/mankey.pic"
MankeyPicBack:       INCBIN "gfx/pokemon/back/mankeyb.pic"
SeelPicFront:        INCBIN "gfx/pokemon/front/seel.pic"
SeelPicBack:         INCBIN "gfx/pokemon/back/seelb.pic"
DiglettPicFront:     INCBIN "gfx/pokemon/front/diglett.pic"
DiglettPicBack:      INCBIN "gfx/pokemon/back/diglettb.pic"
TaurosPicFront:      INCBIN "gfx/pokemon/front/tauros.pic"
TaurosPicBack:       INCBIN "gfx/pokemon/back/taurosb.pic"


SECTION "bank33",ROMX


RhydonPicFront:      INCBIN "gfx/pokemon/front/rhydon.pic"
RhydonPicBack:       INCBIN "gfx/pokemon/back/rhydonb.pic"
KangaskhanPicFront:  INCBIN "gfx/pokemon/front/kangaskhan.pic"
KangaskhanPicBack:   INCBIN "gfx/pokemon/back/kangaskhanb.pic"
NidoranMPicFront:    INCBIN "gfx/pokemon/front/nidoranm.pic"
NidoranMPicBack:     INCBIN "gfx/pokemon/back/nidoranmb.pic"
ClefairyPicFront:    INCBIN "gfx/pokemon/front/clefairy.pic"
ClefairyPicBack:     INCBIN "gfx/pokemon/back/clefairyb.pic"
SpearowPicFront:     INCBIN "gfx/pokemon/front/spearow.pic"
SpearowPicBack:      INCBIN "gfx/pokemon/back/spearowb.pic"
VoltorbPicFront:     INCBIN "gfx/pokemon/front/voltorb.pic"
VoltorbPicBack:      INCBIN "gfx/pokemon/back/voltorbb.pic"
NidokingPicFront:    INCBIN "gfx/pokemon/front/nidoking.pic"
NidokingPicBack:     INCBIN "gfx/pokemon/back/nidokingb.pic"
SlowbroPicFront:     INCBIN "gfx/pokemon/front/slowbro.pic"
SlowbroPicBack:      INCBIN "gfx/pokemon/back/slowbrob.pic"
IvysaurPicFront:     INCBIN "gfx/pokemon/front/ivysaur.pic"
IvysaurPicBack:      INCBIN "gfx/pokemon/back/ivysaurb.pic"
ExeggutorPicFront:   INCBIN "gfx/pokemon/front/exeggutor.pic"
ExeggutorPicBack:    INCBIN "gfx/pokemon/back/exeggutorb.pic"
LickitungPicFront:   INCBIN "gfx/pokemon/front/lickitung.pic"
LickitungPicBack:    INCBIN "gfx/pokemon/back/lickitungb.pic"
ExeggcutePicFront:   INCBIN "gfx/pokemon/front/exeggcute.pic"
ExeggcutePicBack:    INCBIN "gfx/pokemon/back/exeggcuteb.pic"
GrimerPicFront:      INCBIN "gfx/pokemon/front/grimer.pic"
GrimerPicBack:       INCBIN "gfx/pokemon/back/grimerb.pic"
GengarPicFront:      INCBIN "gfx/pokemon/front/gengar.pic"
GengarPicBack:       INCBIN "gfx/pokemon/back/gengarb.pic"
NidoranFPicFront:    INCBIN "gfx/pokemon/front/nidoranf.pic"
NidoranFPicBack:     INCBIN "gfx/pokemon/back/nidoranfb.pic"
NidoqueenPicFront:   INCBIN "gfx/pokemon/front/nidoqueen.pic"
NidoqueenPicBack:    INCBIN "gfx/pokemon/back/nidoqueenb.pic"
CubonePicFront:      INCBIN "gfx/pokemon/front/cubone.pic"
CubonePicBack:       INCBIN "gfx/pokemon/back/cuboneb.pic"
RhyhornPicFront:     INCBIN "gfx/pokemon/front/rhyhorn.pic"
RhyhornPicBack:      INCBIN "gfx/pokemon/back/rhyhornb.pic"
LaprasPicFront:      INCBIN "gfx/pokemon/front/lapras.pic"
LaprasPicBack:       INCBIN "gfx/pokemon/back/laprasb.pic"
ArcaninePicFront:    INCBIN "gfx/pokemon/front/arcanine.pic"
ArcaninePicBack:     INCBIN "gfx/pokemon/back/arcanineb.pic"
GyaradosPicFront:    INCBIN "gfx/pokemon/front/gyarados.pic"
GyaradosPicBack:     INCBIN "gfx/pokemon/back/gyaradosb.pic"
ShellderPicFront:    INCBIN "gfx/pokemon/front/shellder.pic"
ShellderPicBack:     INCBIN "gfx/pokemon/back/shellderb.pic"


SECTION "bank34",ROMX


ArticunoPicFront:    INCBIN "gfx/pokemon/front/articuno.pic"
ArticunoPicBack:     INCBIN "gfx/pokemon/back/articunob.pic"
ZapdosPicFront:      INCBIN "gfx/pokemon/front/zapdos.pic"
ZapdosPicBack:       INCBIN "gfx/pokemon/back/zapdosb.pic"
DittoPicFront:       INCBIN "gfx/pokemon/front/ditto.pic"
DittoPicBack:        INCBIN "gfx/pokemon/back/dittob.pic"
MeowthPicFront:      INCBIN "gfx/pokemon/front/meowth.pic"
MeowthPicBack:       INCBIN "gfx/pokemon/back/meowthb.pic"
KrabbyPicFront:      INCBIN "gfx/pokemon/front/krabby.pic"
KrabbyPicBack:       INCBIN "gfx/pokemon/back/krabbyb.pic"
VulpixPicFront:      INCBIN "gfx/pokemon/front/vulpix.pic"
VulpixPicBack:       INCBIN "gfx/pokemon/back/vulpixb.pic"
NinetalesPicFront:   INCBIN "gfx/pokemon/front/ninetales.pic"
NinetalesPicBack:    INCBIN "gfx/pokemon/back/ninetalesb.pic"
PikachuPicFront:     INCBIN "gfx/pokemon/front/pikachu.pic"
PikachuPicBack:      INCBIN "gfx/pokemon/back/pikachub.pic"
RaichuPicFront:      INCBIN "gfx/pokemon/front/raichu.pic"
RaichuPicBack:       INCBIN "gfx/pokemon/back/raichub.pic"
DratiniPicFront:     INCBIN "gfx/pokemon/front/dratini.pic"
DratiniPicBack:      INCBIN "gfx/pokemon/back/dratinib.pic"
DragonairPicFront:   INCBIN "gfx/pokemon/front/dragonair.pic"
DragonairPicBack:    INCBIN "gfx/pokemon/back/dragonairb.pic"
KabutoPicFront:      INCBIN "gfx/pokemon/front/kabuto.pic"
KabutoPicBack:       INCBIN "gfx/pokemon/back/kabutob.pic"
KabutopsPicFront:    INCBIN "gfx/pokemon/front/kabutops.pic"
KabutopsPicBack:     INCBIN "gfx/pokemon/back/kabutopsb.pic"
HorseaPicFront:      INCBIN "gfx/pokemon/front/horsea.pic"
HorseaPicBack:       INCBIN "gfx/pokemon/back/horseab.pic"
SeadraPicFront:      INCBIN "gfx/pokemon/front/seadra.pic"
SeadraPicBack:       INCBIN "gfx/pokemon/back/seadrab.pic"
SandshrewPicFront:   INCBIN "gfx/pokemon/front/sandshrew.pic"
SandshrewPicBack:    INCBIN "gfx/pokemon/back/sandshrewb.pic"
SandslashPicFront:   INCBIN "gfx/pokemon/front/sandslash.pic"
SandslashPicBack:    INCBIN "gfx/pokemon/back/sandslashb.pic"
OmanytePicFront:     INCBIN "gfx/pokemon/front/omanyte.pic"
OmanytePicBack:      INCBIN "gfx/pokemon/back/omanyteb.pic"
OmastarPicFront:     INCBIN "gfx/pokemon/front/omastar.pic"
OmastarPicBack:      INCBIN "gfx/pokemon/back/omastarb.pic"
JigglypuffPicFront:  INCBIN "gfx/pokemon/front/jigglypuff.pic"
JigglypuffPicBack:   INCBIN "gfx/pokemon/back/jigglypuffb.pic"
WigglytuffPicFront:  INCBIN "gfx/pokemon/front/wigglytuff.pic"
WigglytuffPicBack:   INCBIN "gfx/pokemon/back/wigglytuffb.pic"
EeveePicFront:       INCBIN "gfx/pokemon/front/eevee.pic"
EeveePicBack:        INCBIN "gfx/pokemon/back/eeveeb.pic"
FlareonPicFront:     INCBIN "gfx/pokemon/front/flareon.pic"
FlareonPicBack:      INCBIN "gfx/pokemon/back/flareonb.pic"


SECTION "bank35",ROMX


DodrioPicFront:      INCBIN "gfx/pokemon/front/dodrio.pic"
DodrioPicBack:       INCBIN "gfx/pokemon/back/dodriob.pic"
PrimeapePicFront:    INCBIN "gfx/pokemon/front/primeape.pic"
PrimeapePicBack:     INCBIN "gfx/pokemon/back/primeapeb.pic"
DugtrioPicFront:     INCBIN "gfx/pokemon/front/dugtrio.pic"
DugtrioPicBack:      INCBIN "gfx/pokemon/back/dugtriob.pic"
VenomothPicFront:    INCBIN "gfx/pokemon/front/venomoth.pic"
VenomothPicBack:     INCBIN "gfx/pokemon/back/venomothb.pic"
DewgongPicFront:     INCBIN "gfx/pokemon/front/dewgong.pic"
DewgongPicBack:      INCBIN "gfx/pokemon/back/dewgongb.pic"
CaterpiePicFront:    INCBIN "gfx/pokemon/front/caterpie.pic"
CaterpiePicBack:     INCBIN "gfx/pokemon/back/caterpieb.pic"
MetapodPicFront:     INCBIN "gfx/pokemon/front/metapod.pic"
MetapodPicBack:      INCBIN "gfx/pokemon/back/metapodb.pic"
ButterfreePicFront:  INCBIN "gfx/pokemon/front/butterfree.pic"
ButterfreePicBack:   INCBIN "gfx/pokemon/back/butterfreeb.pic"
MachampPicFront:     INCBIN "gfx/pokemon/front/machamp.pic"
MachampPicBack:      INCBIN "gfx/pokemon/back/machampb.pic"
GolduckPicFront:     INCBIN "gfx/pokemon/front/golduck.pic"
GolduckPicBack:      INCBIN "gfx/pokemon/back/golduckb.pic"
HypnoPicFront:       INCBIN "gfx/pokemon/front/hypno.pic"
HypnoPicBack:        INCBIN "gfx/pokemon/back/hypnob.pic"
GolbatPicFront:      INCBIN "gfx/pokemon/front/golbat.pic"
GolbatPicBack:       INCBIN "gfx/pokemon/back/golbatb.pic"
MewtwoPicFront:      INCBIN "gfx/pokemon/front/mewtwo.pic"
MewtwoPicBack:       INCBIN "gfx/pokemon/back/mewtwob.pic"
SnorlaxPicFront:     INCBIN "gfx/pokemon/front/snorlax.pic"
SnorlaxPicBack:      INCBIN "gfx/pokemon/back/snorlaxb.pic"
MagikarpPicFront:    INCBIN "gfx/pokemon/front/magikarp.pic"
MagikarpPicBack:     INCBIN "gfx/pokemon/back/magikarpb.pic"
MukPicFront:         INCBIN "gfx/pokemon/front/muk.pic"
MukPicBack:          INCBIN "gfx/pokemon/back/mukb.pic"
KinglerPicFront:     INCBIN "gfx/pokemon/front/kingler.pic"
KinglerPicBack:      INCBIN "gfx/pokemon/back/kinglerb.pic"
CloysterPicFront:    INCBIN "gfx/pokemon/front/cloyster.pic"
CloysterPicBack:     INCBIN "gfx/pokemon/back/cloysterb.pic"
ElectrodePicFront:   INCBIN "gfx/pokemon/front/electrode.pic"
ElectrodePicBack:    INCBIN "gfx/pokemon/back/electrodeb.pic"
ClefablePicFront:    INCBIN "gfx/pokemon/front/clefable.pic"
ClefablePicBack:     INCBIN "gfx/pokemon/back/clefableb.pic"
WeezingPicFront:     INCBIN "gfx/pokemon/front/weezing.pic"
WeezingPicBack:      INCBIN "gfx/pokemon/back/weezingb.pic"
PersianPicFront:     INCBIN "gfx/pokemon/front/persian.pic"
PersianPicBack:      INCBIN "gfx/pokemon/back/persianb.pic"



SECTION "bank36",ROMX


BulbasaurPicFront:   INCBIN "gfx/pokemon/front/bulbasaur.pic"
BulbasaurPicBack:    INCBIN "gfx/pokemon/back/bulbasaurb.pic"
VenusaurPicFront:    INCBIN "gfx/pokemon/front/venusaur.pic"
VenusaurPicBack:     INCBIN "gfx/pokemon/back/venusaurb.pic"
TentacruelPicFront:  INCBIN "gfx/pokemon/front/tentacruel.pic"
TentacruelPicBack:   INCBIN "gfx/pokemon/back/tentacruelb.pic"
GoldeenPicFront:     INCBIN "gfx/pokemon/front/goldeen.pic"
GoldeenPicBack:      INCBIN "gfx/pokemon/back/goldeenb.pic"
SeakingPicFront:     INCBIN "gfx/pokemon/front/seaking.pic"
SeakingPicBack:      INCBIN "gfx/pokemon/back/seakingb.pic"
PonytaPicFront:      INCBIN "gfx/pokemon/front/ponyta.pic"
RapidashPicFront:    INCBIN "gfx/pokemon/front/rapidash.pic"
PonytaPicBack:       INCBIN "gfx/pokemon/back/ponytab.pic"
RapidashPicBack:     INCBIN "gfx/pokemon/back/rapidashb.pic"
RattataPicFront:     INCBIN "gfx/pokemon/front/rattata.pic"
RattataPicBack:      INCBIN "gfx/pokemon/back/rattatab.pic"
RaticatePicFront:    INCBIN "gfx/pokemon/front/raticate.pic"
RaticatePicBack:     INCBIN "gfx/pokemon/back/raticateb.pic"
NidorinoPicFront:    INCBIN "gfx/pokemon/front/nidorino.pic"
NidorinoPicBack:     INCBIN "gfx/pokemon/back/nidorinob.pic"
NidorinaPicFront:    INCBIN "gfx/pokemon/front/nidorina.pic"
NidorinaPicBack:     INCBIN "gfx/pokemon/back/nidorinab.pic"
GeodudePicFront:     INCBIN "gfx/pokemon/front/geodude.pic"
GeodudePicBack:      INCBIN "gfx/pokemon/back/geodudeb.pic"
PorygonPicFront:     INCBIN "gfx/pokemon/front/porygon.pic"
PorygonPicBack:      INCBIN "gfx/pokemon/back/porygonb.pic"
AerodactylPicFront:  INCBIN "gfx/pokemon/front/aerodactyl.pic"
AerodactylPicBack:   INCBIN "gfx/pokemon/back/aerodactylb.pic"
MagnemitePicFront:   INCBIN "gfx/pokemon/front/magnemite.pic"
MagnemitePicBack:    INCBIN "gfx/pokemon/back/magnemiteb.pic"
CharmanderPicFront:  INCBIN "gfx/pokemon/front/charmander.pic"
CharmanderPicBack:   INCBIN "gfx/pokemon/back/charmanderb.pic"
SquirtlePicFront:    INCBIN "gfx/pokemon/front/squirtle.pic"
SquirtlePicBack:     INCBIN "gfx/pokemon/back/squirtleb.pic"
CharmeleonPicFront:  INCBIN "gfx/pokemon/front/charmeleon.pic"
CharmeleonPicBack:   INCBIN "gfx/pokemon/back/charmeleonb.pic"
WartortlePicFront:   INCBIN "gfx/pokemon/front/wartortle.pic"
WartortlePicBack:    INCBIN "gfx/pokemon/back/wartortleb.pic"
CharizardPicFront:   INCBIN "gfx/pokemon/front/charizard.pic"
CharizardPicBack:    INCBIN "gfx/pokemon/back/charizardb.pic"
FossilKabutopsPic:   INCBIN "gfx/pokemon/front/fossilkabutops.pic"
FossilAerodactylPic: INCBIN "gfx/pokemon/front/fossilaerodactyl.pic"
GhostPic:            INCBIN "gfx/pokemon/ghost.pic"
OddishPicFront:      INCBIN "gfx/pokemon/front/oddish.pic"
OddishPicBack:       INCBIN "gfx/pokemon/back/oddishb.pic"
GloomPicFront:       INCBIN "gfx/pokemon/front/gloom.pic"
GloomPicBack:        INCBIN "gfx/pokemon/back/gloomb.pic"


SECTION "bank37",ROMX


BellsproutPicFront:  INCBIN "gfx/pokemon/front/bellsprout.pic"
BellsproutPicBack:   INCBIN "gfx/pokemon/back/bellsproutb.pic"
WeepinbellPicFront:  INCBIN "gfx/pokemon/front/weepinbell.pic"
WeepinbellPicBack:   INCBIN "gfx/pokemon/back/weepinbellb.pic"
VictreebelPicFront:  INCBIN "gfx/pokemon/front/victreebel.pic"
VictreebelPicBack:   INCBIN "gfx/pokemon/back/victreebelb.pic"

MewPicFront:         INCBIN "gfx/pokemon/front/mew.pic"
MewPicBack:          INCBIN "gfx/pokemon/back/mewb.pic"

FarfetchdPicFront:   INCBIN "gfx/pokemon/front/farfetchd.pic"
FarfetchdPicBack:    INCBIN "gfx/pokemon/back/farfetchdb.pic"
VenonatPicFront:     INCBIN "gfx/pokemon/front/venonat.pic"
VenonatPicBack:      INCBIN "gfx/pokemon/back/venonatb.pic"
DragonitePicFront:   INCBIN "gfx/pokemon/front/dragonite.pic"
DragonitePicBack:    INCBIN "gfx/pokemon/back/dragoniteb.pic"
DoduoPicFront:       INCBIN "gfx/pokemon/front/doduo.pic"
DoduoPicBack:        INCBIN "gfx/pokemon/back/doduob.pic"
PoliwagPicFront:     INCBIN "gfx/pokemon/front/poliwag.pic"
PoliwagPicBack:      INCBIN "gfx/pokemon/back/poliwagb.pic"
JynxPicFront:        INCBIN "gfx/pokemon/front/jynx.pic"
JynxPicBack:         INCBIN "gfx/pokemon/back/jynxb.pic"
MarowakPicFront:     INCBIN "gfx/pokemon/front/marowak.pic"
MarowakPicBack:      INCBIN "gfx/pokemon/back/marowakb.pic"
ENDC

SECTION "bank38", ROMX,BANK[$38]

INCLUDE "custom_functions/func_overworld.asm"
INCLUDE "custom_functions/menu/item_descriptions.asm"
INCLUDE "custom_functions/func_physical_special_split.asm"
INCLUDE "custom_functions/func_mon_gender.asm"

SECTION "bank39", ROMX,BANK[$39]

SECTION "bank40", ROMX,BANK[$40]
