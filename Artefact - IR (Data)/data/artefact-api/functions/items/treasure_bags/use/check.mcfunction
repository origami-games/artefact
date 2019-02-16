#runs if a player has used a treasure bag
#@s - primary player if entity @s[scores={use_carrot_stick=1..},nbt={SelectedItem:{tag:{artefact:{treasure_bag:1b}}}}]
#called by artefact-core:player/holding_item/carrot_on_a_stick

#check type
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{type:"basic"}}}}}] run function artefact-api:items/treasure_bags/use/basic
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{type:"epic"}}}}}] run function artefact-api:items/treasure_bags/use/epic
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{type:"legendary"}}}}}] run function artefact-api:items/treasure_bags/use/legendary
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{type:"set"}}}}}] run function artefact-api:items/treasure_bags/use/set/check

#remove faulty bags
execute unless entity @s[tag=treasure_bag_used] unless data entity @s SelectedItem.tag.artefact.treasure_bag_type run function artefact-api:items/treasure_bags/use/no_loot

#post
tag @s remove treasure_bag_used
