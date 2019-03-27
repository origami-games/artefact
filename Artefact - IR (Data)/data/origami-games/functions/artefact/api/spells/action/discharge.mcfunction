#spell action
#@s - primary player
#called by origami-games:artefact/api/spells/activate_action

#audiovisuals
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 1 1.5 1
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 1 1 1

particle minecraft:flame ~ ~ ~ 0 1 0 .5 1000 force
#functionality
effect give @s minecraft:slow_falling 4 255 true

effect give @s minecraft:resistance 1 255 true
effect give @e[tag=left_click] minecraft:resistance 1 255 true

summon minecraft:creeper ~ ~ ~ {ignited:1b,Fuse:0s}

#text
title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"  ",{"translate":"text.artefact.spells.discharge","color":"gold"}," ",{"translate":"text.artefact.spells.activated","color":"gold"},"  ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

#remove mana
execute if entity @s[gamemode=adventure] run scoreboard players remove mana spells 6

#start cooldown
scoreboard players set cooldown spells 60
scoreboard players operation last_used spells = discharge spell_id
