#spell action
#@s - primary player
#called by origami-games:artefact/api/spells/activate_action

#audiovisuals
playsound minecraft:entity.bat.takeoff player @a[distance=..20] ~ ~ ~ 100 1.25 1

particle minecraft:cloud ~ ~ ~ .5 0 .5 0 100 normal @a

#functionality
function origami-games:artefact/api/spells/visual/blitz/lightning

effect give @s minecraft:levitation 1 0 true
effect give @s minecraft:jump_boost 4 255 true
effect give @s minecraft:resistance 4 255 true

#text
title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"      ",{"translate":"text.artefact.spells.blitz","color":"gold"}," ",{"translate":"text.artefact.spells.activated","color":"gold"},"      ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

#remove mana
execute if entity @s[gamemode=adventure] run scoreboard players remove mana spells 4

#start cooldown
scoreboard players set cooldown spells 60
scoreboard players operation last_used spells = blitz spell_id
