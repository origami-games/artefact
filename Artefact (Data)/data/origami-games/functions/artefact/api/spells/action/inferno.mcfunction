#spell action
#@s - primary player
#called by origami-games:artefact/api/spells/activate_action

#audiovisuals
playsound minecraft:item.firecharge.use player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:item.firecharge.use player @a[distance=..20] ~ ~ ~ 100 1 1
playsound minecraft:item.firecharge.use player @a[distance=..20] ~ ~ ~ 100 2 1
playsound minecraft:entity.enderman.scream player @a[distance=..20] ~ ~ ~ 100 0 1

particle minecraft:flame ~ ~ ~ 0 1 0 .1 1000 force
#functionality
function origami-games:artefact/api/spells/visual/inferno/fire_explosion

#text
title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"   ",{"translate":"text.artefact.spells.inferno","color":"gold"}," ",{"translate":"text.artefact.spells.activated","color":"gold"},"   ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

#remove mana
execute if entity @s[gamemode=adventure] run scoreboard players remove mana spells 8

#start cooldown
scoreboard players set cooldown spells 60
scoreboard players operation last_used spells = inferno spell_id
