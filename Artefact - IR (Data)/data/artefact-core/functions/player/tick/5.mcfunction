#runs every five ticks on the primary player
#@s - primary player
#called by artefact-core:player/tick

#get data
function artefact-api:flick/get_data

#check for pixie dust
execute as @e[type=minecraft:item,nbt={Item:{tag:{artefact:{item_type:["dust"]}},Count:1b},OnGround:1b},nbt=!{Item:{tag:{artefact:{item_type:["no_execution"]}}}}] at @s run function artefact-api:items/dust/poof_check

#reset clock
scoreboard players set tick_5 clock 0
