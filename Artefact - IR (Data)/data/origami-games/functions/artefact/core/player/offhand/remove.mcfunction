#runs if the primary player has an item in their offhand
#@s - primary player
#called by origami-games:artefact/core/player/tick

#store offhand item in item entity
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,artefact:{item_type:"offhand_removal"}}},Tags:["offhand"],Owner:{L:1,M:2}}
data modify entity @e[type=minecraft:item,tag=offhand,sort=nearest,limit=1] Owner.L set from entity @s UUIDLeast
data modify entity @e[type=minecraft:item,tag=offhand,sort=nearest,limit=1] Owner.M set from entity @s UUIDMost
data modify entity @e[type=minecraft:item,tag=offhand,sort=nearest,limit=1] Item merge from entity @s Inventory[{Slot:-106b}]
data remove entity @e[type=minecraft:item,tag=offhand,sort=nearest,limit=1,nbt={Item:{tag:{CustomModelData:1,id:"minecraft:stick",artefact:{item_type:"offhand_removal"}}}}] Item.tag.CustomModelData
data remove entity @e[type=minecraft:item,tag=offhand,sort=nearest,limit=1,nbt={Item:{tag:{CustomModelData:1,id:"minecraft:stick",artefact:{item_type:"offhand_removal"}}}}] Item.tag.artefact.item_type
#replace offhand slot
function origami-games:artefact/core/player/offhand/replace/check
