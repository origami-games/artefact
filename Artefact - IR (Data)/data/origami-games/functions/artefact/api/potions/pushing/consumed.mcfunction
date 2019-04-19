#consumed mana potion
#@s - primary player
#called by origami-games:artefact/api/potions/pushing/check_mana

#functionality
scoreboard players operation pushing custom_potion = pushing.start custom_potion

#take mana
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove mana spells 6

#tag
tag @s add potion.artefact.consumed
