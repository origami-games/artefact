#runs if the player senaks
#@s - primary player
#called by artefact-core:player/tick

#shield
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]},nbt=!{abilities:{flying:1b}}] unless score cooldown shield matches 1.. run function artefact-api:shield/check_sneak

#camera flick
function artefact-api:action_detection/flick/check

#reset score
scoreboard players set @s sneak_check 0
