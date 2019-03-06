#spell action
#@s - primary player
#called by artefact-api:spells/activate_action

#audiovisuals
playsound minecraft:entity.bat.takeoff player @a[distance=..20] ~ ~ ~ 100 1 1
playsound minecraft:item.elytra.flying player @a[distance=..20] ~ ~ ~ 100 1.25 1

particle minecraft:cloud ~ ~ ~ 0 1 0 .5 1000 force
#functionality
tag @s add spell.tornado.no_target

#text
title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"   ",{"translate":"text.artefact.spells.tornado","color":"gold"}," ",{"translate":"text.artefact.spells.activated","color":"gold"},"   ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

#remove mana
execute if entity @s[gamemode=adventure] run scoreboard players remove mana spells 4

#start cooldown
scoreboard players set cooldown spells 60
scoreboard players operation last_used spells = tornado spell_id
