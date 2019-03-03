#checks dropped item entities
#@s - @e[type=minecraft:item]
#called by artefact-core:tick

#custom name
function artefact-api:items/dropped/custom_name

#attribute status patch
kill @s[nbt={Item:{tag:{artefact:{item_type:["remove_offhand"]}}}}]
execute if entity @s[nbt={CustomName:'{"italic":false,"color":"gray","translate":"text.artefact.gui.attribute_status"}'}] run function artefact-api:items/dropped/remove_attribute_status
