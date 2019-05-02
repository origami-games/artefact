#checks dropped item entities
#@s - @e[type=minecraft:item]
#called by origami-games:artefact/core/tick

#custom name
execute if data entity @s Item.tag.display.Name run function origami-games:artefact/api/items/dropped/custom_name

#offhand placeholder patch
kill @s[nbt={Item:{tag:{artefact:{item_type:["remove_offhand"]}}}}]
execute if entity @s[nbt={CustomName:'{"italic":false,"color":"gray","translate":"text.artefact.gui.attribute_status"}'}] run function origami-games:artefact/api/items/dropped/remove_attribute_status
