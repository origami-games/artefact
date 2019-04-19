#removes hotbar slot and replaces with menu item
#@s - primary player
#called by origami-games:artefact/core/player/hotbar/remove/check

#store slot in item entity
execute if entity @s[nbt={Inventory:[{Slot:2b}]}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,artefact:{hotbar_replacement:1b}}},Tags:["slot.2","no_pickup"],Owner:{L:1,M:2}}
data modify entity @e[type=minecraft:item,tag=slot.2,sort=nearest,limit=1] Owner.L set from entity @s UUIDLeast
data modify entity @e[type=minecraft:item,tag=slot.2,sort=nearest,limit=1] Owner.M set from entity @s UUIDMost
data modify entity @e[type=minecraft:item,tag=slot.2,sort=nearest,limit=1] Item merge from entity @s Inventory[{Slot:2b}]
data remove entity @e[type=minecraft:item,tag=slot.2,sort=nearest,limit=1,nbt={Item:{tag:{CustomModelData:1,id:"minecraft:stick",artefact:{hotbar_replacement:1b}}}}] Item.tag.CustomModelData
data remove entity @e[type=minecraft:item,tag=slot.2,sort=nearest,limit=1] Item.tag.artefact.hotbar_replacement

execute store result score artefact_tag_count hotbar_counts run data get entity @e[type=minecraft:item,tag=slot.2,sort=nearest,limit=1] Item.tag.artefact
execute if score artefact_tag_count hotbar_counts matches 0 run data remove entity @e[type=minecraft:item,tag=slot.2,sort=nearest,limit=1] Item.tag.artefact
scoreboard players reset artefact_tag_count hotbar_counts
#replace with menu item
replaceitem entity @s hotbar.2 minecraft:air
function origami-games:artefact/api/abilities/selector_slot/check/slot_2
