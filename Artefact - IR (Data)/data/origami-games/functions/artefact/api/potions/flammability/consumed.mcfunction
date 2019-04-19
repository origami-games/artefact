#consumed mana potion
#@s - primary player
#called by origami-games:artefact/api/potions/flammability/check_mana

#functionality
scoreboard players operation flammability custom_potion = flammability.start custom_potion

#audiovisuals
playsound minecraft:entity.zombie_villager.cure player @a[distance=..20] ~ ~ ~ 100 2 1

particle minecraft:flame ~ ~-1 ~ .5 1 .5 .1 1000 force

#take mana
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove mana spells 10

#tag
tag @s add potion.artefact.consumed
