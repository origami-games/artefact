#checks dust type for poof
#@s - @e[type=minecraft:item,nbt={Item:{tag:{artefact:{item_type:["dust"]}}}}]
#called by artefact-core:player/tick/5

execute if entity @s[nbt={Item:{tag:{artefact:{item:["pixie_dust"]}}}}] run function artefact-api:items/dust/pixie/poof
