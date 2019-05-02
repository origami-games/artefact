#runs offhand checks
#@s - primary player
#called by origami-games:artefact/core/player/tick

#remove inventory offhand placeholders
clear @s[nbt={Inventory:[{tag:{artefact:{offhand_placeholder:1b,item_type:["remove_offhand"]}}}]},nbt=!{Inventory:[{Slot:-106b,tag:{artefact:{offhand_placeholder:1b,item_type:["remove_offhand"]}}}]}] minecraft:stick{artefact:{offhand_placeholder:1b,item_type:["remove_offhand"]}}

#ensure max hearts are correct
execute unless score @s max_hearts matches 0.. run scoreboard players set @s max_hearts 4

#store *all* shield with attributes count
execute store result score total_attributed offhand_counts run clear @s minecraft:shield{AttributeModifiers:[{}]} 0
execute if score total_attributed offhand_counts matches 1 if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run function origami-games:artefact/core/player/offhand/clear_shield_attributes
execute if score total_attributed offhand_counts matches 2.. run function origami-games:artefact/core/player/offhand/clear_shield_attributes

#store *normal* shield with attributes count
execute if score normal_shield offhand_counts matches 1.. run give @s minecraft:shield{artefact:{offhand_placeholder:1b,item_type:["shield"]},CustomModelData:1,Unbreakable:1b,display:{Name:'{"translate":"item.minecraft.shield","italic":"false"}'},HideFlags:1b}
execute if score normal_shield offhand_counts matches 1.. run scoreboard players remove normal_shield offhand_counts 1

#store *magic* shield with attributes count
execute if score magic_shield offhand_counts matches 1.. run give @s minecraft:shield{artefact:{offhand_placeholder:1b,item_type:["magic_shield"]},CustomModelData:2,Unbreakable:1b,display:{Name:'{"translate":"item.artefact.magic_shield","italic":"false"}'},HideFlags:1b}
execute if score magic_shield offhand_counts matches 1.. run scoreboard players remove magic_shield offhand_counts 1

#check for item removal
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{is_hotbar_item:1b}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b}]},nbt=!{Inventory:[{Slot:-106b,tag:{artefact:{offhand_placeholder:1b}}}]},nbt=!{Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]},nbt=!{Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function origami-games:artefact/core/player/offhand/remove

#check `attributeModifier`
function origami-games:artefact/core/player/offhand/replace/check

#store offhand placeholder sticks count
execute store result score replacement_sticks offhand_counts run clear @s minecraft:stick{artefact:{offhand_placeholder:1b}} 0
#clear sticks if more than one
execute if score replacement_sticks offhand_counts matches 2.. run clear @s minecraft:stick{artefact:{offhand_placeholder:1b}}
