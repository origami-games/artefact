#gives dropped items names
#@s - @e[type=minecraft:item]
#called by artefact-core:tick

data merge entity @s {CustomNameVisible:1b}
data modify entity @s CustomName set from entity @s Item.tag.display.Name
