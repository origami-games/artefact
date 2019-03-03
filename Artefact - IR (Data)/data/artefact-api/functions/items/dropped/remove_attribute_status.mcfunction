#remove `Attribute Status:` custom name
#@s - @e[type=minecraft:item] if entity @s[nbt={CustomName:'{"translate":"text.artefact.gui.attribute_status","italic":"false","color":"gray"}'}]
#called by artefact-api:dropped/check

data merge entity @s[nbt={Item:{tag:{artefact:{item_type:["shield"]}}}}] {CustomName:'{"translate":"item.minecraft.shield"}'}
data merge entity @s[nbt={Item:{tag:{artefact:{item_type:["magic_shield"]}}}}] {CustomName:'{"translate":"item.artefact.magic_shield"}'}
