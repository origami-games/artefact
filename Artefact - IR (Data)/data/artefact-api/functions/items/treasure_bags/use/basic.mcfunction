#runs if a player uses a loot bag
#@s - primary player
#called by artefact-api:items/treasure_bags/use_check

#remove bag
replaceitem entity @s weapon.mainhand minecraft:air
loot
#give loot
loot give @s loot artefact-api:treasure_bag/basic
#text
tellraw @s {"translate":"item.artefact.treasure_bag.basic.use","color":"yellow"}

#post
tag @s add treasure_bag_used
