#runs if the player right clicks
#@s - primary player
#called by artefact-core:player/tick

#audiovisuals
playsound minecraft:ui.button.click player @s ~ ~ ~ .25 2 1

#functionality
scoreboard players set timeout spells 0
execute if score state spells matches 0..2 run scoreboard players add state spells 1

execute if score state spells matches 1 run scoreboard players set click_1 spells 2
execute if score state spells matches 2 run scoreboard players set click_2 spells 2
execute if score state spells matches 3 run scoreboard players set click_3 spells 2

#text
execute if score click_1 spells matches 2 if score cooldown spells matches 0 run function artefact-api:spells/click_status_actionbar
execute if score state spells matches 3.. run scoreboard players set actionbar_cooldown spells 30

#actions
execute if score @s food_bar matches 4.. if score state spells matches 3.. at @p[tag=primary] run function artefact-api:spells/activate_action

#reset
execute if score state spells matches 3.. run function artefact-api:spells/reset_activation

#reset score
scoreboard players set @s use_carrot_stick 0
