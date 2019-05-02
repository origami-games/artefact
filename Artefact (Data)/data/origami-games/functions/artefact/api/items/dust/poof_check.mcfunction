#checks dust type for poof
#@s - @e[type=minecraft:item,nbt={Item:{tag:{artefact:{item_type:["dust"]}}}}]
#called by origami-games:artefact/core/player/tick/5

execute if entity @s[nbt={Item:{tag:{artefact:{item:["pixie_dust"]}}}}] run function origami-games:artefact/api/items/dust/pixie/poof
