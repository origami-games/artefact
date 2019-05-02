#runs if a player uses a treasure bag without a defined bag type
#@s - primary player
#called by origami-games:artefact/api/items/treasure_bags/use/check

#remove bag
replaceitem entity @s weapon.mainhand minecraft:air
#text
tellraw @s {"translate":"item.artefact.treasure_bag.no_loot","color":"red"}
