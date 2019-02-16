#checks right-click 'things'
#@s - primary player
#called by artefact-core:player/tick

#treasure bags
execute if entity @s[scores={use_carrot_stick=1..},nbt={SelectedItem:{tag:{artefact:{treasure_bag:{}}}}}] run function artefact-api:items/treasure_bags/use/check

#spells
scoreboard players set @s[scores={use_carrot_stick=1..},nbt=!{SelectedItem:{tag:{artefact:{can_right_click:1b}}}}] use_carrot_stick 0
