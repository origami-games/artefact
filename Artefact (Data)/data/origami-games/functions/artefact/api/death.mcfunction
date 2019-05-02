#runs if the player dies
#@s - dead player
#called by origami-games:artefact/core/tick

#audiovisuals
playsound minecraft:block.anvil.land player @s ~ ~ ~ 100 1.1 1

particle minecraft:campfire_signal_smoke ~ ~ ~ 0 1 0 .1 10 force @a
particle minecraft:flame ~ ~ ~ 0 1 0 .1 100 force

tellraw @a [{"selector":"@s","color":"red","italic":true}," ",{"translate":"death.artefact.player","color":"dark_red","italic":true}]
#functionality
scoreboard players set @s death_check 0
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players set mana spells 1
scoreboard players set mana_regen clock 0
function origami-games:artefact/api/action_detection/create_click
function origami-games:artefact/api/spells/reset_activation
