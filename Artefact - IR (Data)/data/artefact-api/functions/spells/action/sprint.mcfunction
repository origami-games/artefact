#sprint spell action
#@s - primary player
#called by artefact-api:spells/activate_action

#audiovisuals
playsound minecraft:entity.bat.takeoff player @s ~ ~ ~ 100 1.25 1
playsound minecraft:entity.bat.takeoff player @s ~ ~ ~ 100 0 1
playsound minecraft:entity.phantom.swoop player @s ~ ~ ~ 100 2 1

particle minecraft:effect ~ ~ ~ 0 1 0 .5 1000 force
#functionality
effect give @s minecraft:speed 5 3

#text
title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"    ",{"translate":"text.artefact.spells.sprint","color":"gold"}," ",{"translate":"text.artefact.spells.activated","color":"gold"},"    ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

#remove mana
execute if entity @s[gamemode=adventure] run scoreboard players remove mana spells 4

#start cooldown
scoreboard players set cooldown spells 60
scoreboard players operation last_used spells = sprint spell_id
