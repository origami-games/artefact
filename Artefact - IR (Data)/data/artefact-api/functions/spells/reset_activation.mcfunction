#runs when the activation mechanism times out
#@s - primary player
#called by artefact-core:player/tick

scoreboard players set state spells 0

scoreboard players reset click_1 spells
scoreboard players reset click_2 spells
scoreboard players reset click_3 spells

scoreboard players set timeout spells 0

execute unless data entity @s SelectedItem.tag.artefact.spells run tag @s remove holding_spell
