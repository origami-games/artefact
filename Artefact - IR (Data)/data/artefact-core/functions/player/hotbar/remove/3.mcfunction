#removes hotbar slot and replaces with menu item
#@s - primary player
#called by artefact-core:player/hotbar/remove/check

#store slot in item entity
execute if entity @s[nbt={Inventory:[{Slot:3b}]}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,artefact:{hotbar_replacement:1b}}},Tags:["slot.3"]}
data modify entity @e[type=minecraft:item,tag=slot.3,sort=nearest,limit=1] Item merge from entity @s Inventory[{Slot:3b}]
data remove entity @e[type=minecraft:item,tag=slot.3,sort=nearest,limit=1] Item.tag.CustomModelData
#replace with menu item
replaceitem entity @s hotbar.3 minecraft:andesite{artefact:{hotbar_item:["3"],is_hotbar_item:1b}}
