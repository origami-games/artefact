#runs if a player uses a loot bag
#@s - primary player
#called by artefact-api:items/treasure_bags/use_check

#remove bag
replaceitem entity @s weapon.mainhand minecraft:air

#give loot
give @s minecraft:diamond_sword
#text
tellraw @s {"translate":"item.artefact.treasure_bag.set.use","color":"gold"}

#post
tag @s add treasure_bag_used
