PokemonLogoGraphics:            INCBIN "gfx/gs/new_pokemon_logo.2bpp"
IF GEN_2_GRAPHICS
FontGraphics:                   INCBIN "gfx/gs/font.1bpp"
FontGraphicsEnd:
ELSE
FontGraphics:                   INCBIN "gfx/fonts/font.1bpp"
FontGraphicsEnd:
ENDC
ABTiles:                        INCBIN "gfx/fonts/AB.2bpp"
IF GEN_2_GRAPHICS
HpBarAndStatusGraphics:  INCBIN "gfx/gs/gen2_hp_bar_and_status.2bpp"
HpBarAndStatusGraphicsEnd:
BattleHudTiles1:         INCBIN "gfx/gs/gen2_battle_arrow.1bpp"
BattleHudTiles1End:
BattleHudTiles2:         INCBIN "gfx/gs/gen2_battle_arrow_lines.1bpp"
BattleHudTiles3:         INCBIN "gfx/gs/gen2_battle_arrow_more_lines.1bpp"
BattleHudTiles3End:
ELSE
HpBarAndStatusGraphics:  INCBIN "gfx/battle/hp_bar_and_status.2bpp"
HpBarAndStatusGraphicsEnd:
BattleHudTiles1:         INCBIN "gfx/battle/battle_hud1.1bpp"
BattleHudTiles1End:
BattleHudTiles2:         INCBIN "gfx/battle/battle_hud2.1bpp"
BattleHudTiles3:         INCBIN "gfx/battle/battle_hud3.1bpp"
BattleHudTiles3End:
ENDC

NintendoCopyrightLogoGraphics:  INCBIN "gfx/title/copyright.2bpp"
GamefreakLogoGraphics:          INCBIN "gfx/title/gamefreak.2bpp"
GamefreakLogoGraphicsEnd:

IF GEN_2_GRAPHICS
TextBoxGraphics:                INCBIN "gfx/gs/text_box.2bpp"
TextBoxGraphicsEnd:
ELSE
TextBoxGraphics:                INCBIN "gfx/fonts/text_box.2bpp"
TextBoxGraphicsEnd:
ENDC
PokedexTileGraphics:            INCBIN "gfx/sprites/pokedex.2bpp"
PokedexTileGraphicsEnd:
WorldMapTileGraphics:           INCBIN "gfx/town_map/town_map.2bpp"
WorldMapTileGraphicsEnd:

; Adding Red vs Blue Rival
IF DEF(_RED)
PlayerCharacterTitleGraphics:   INCBIN "gfx/title/player_title.2bpp"
ENDC
IF DEF(_BLUE)
PlayerCharacterTitleGraphics:   INCBIN "gfx/title/playerB_title.2bpp"
ENDC

PlayerCharacterTitleGraphicsEnd: