#spell action
#@s - primary player
#called by origami-games:artefact/api/spells/activate_action

#audiovisuals
playsound minecraft:weather.rain.above player @a[distance=..20] ~ ~ ~ 1 .75 1

#functionality
execute align xyz positioned ~.5 ~ ~.5 run function origami-games:artefact/api/spells/visual/submerge/rain

effect give @s minecraft:water_breathing 5 0 false
effect give @s minecraft:regeneration 5 0 false

#text
title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"   ",{"translate":"text.artefact.spells.submerge","color":"gold"}," ",{"translate":"text.artefact.spells.activated","color":"gold"},"   ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

#remove mana
execute if entity @s[gamemode=adventure] run scoreboard players remove mana spells 4

#start cooldown
scoreboard players set cooldown spells 60
scoreboard players operation last_used spells = submerge spell_id
