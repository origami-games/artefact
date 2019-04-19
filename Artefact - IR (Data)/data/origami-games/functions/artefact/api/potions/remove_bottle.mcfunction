#removes potion bottle
#@s - primary player
#scheduled by origami-games:artefact/api/potions/<potion_type>/consumed

#remove item
replaceitem entity @a[tag=potion.artefact.consumed,nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] weapon.mainhand minecraft:air
#remove tag
tag @s[tag=potion.artefact.consumed] remove potion.artefact.consumed
