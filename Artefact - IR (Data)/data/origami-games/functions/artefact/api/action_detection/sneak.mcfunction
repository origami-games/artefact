#runs if the player senaks
#@s - primary player
#called by origami-games:artefact/core/player/tick

#shield
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]},nbt=!{abilities:{flying:1b}}] unless score cooldown shield matches 1.. run function origami-games:artefact/api/shield/check_sneak

#camera flick
function origami-games:artefact/api/action_detection/flick/check

#reset score
scoreboard players set @s sneak_check 0
