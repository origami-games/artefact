#runs if the primary player has an item in their offhand
#@s - primary player
#called by artefact-core:player/tick

#store offhand item in item entity
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},Tags:["offhand"]}
data modify entity @e[type=minecraft:item,tag=offhand,sort=nearest,limit=1] Item merge from entity @s Inventory[{Slot:-106b}]
data remove entity @e[type=minecraft:item,tag=offhand,sort=nearest,limit=1] Item.tag.CustomModelData
#replace offhand slot
function artefact-core:player/offhand/replace/check
