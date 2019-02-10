#runs on players holding an item with the tag `artefact:{can_right_click:1b}`
#@s - primary player
#called by artefact-core:player/tick

#right-click detection
execute unless score cooldown spells matches 1.. if entity @s[scores={use_carrot_stick=1..}] run function artefact-api:click_detection/right_click
execute if entity @s[scores={use_carrot_stick=1..}] run scoreboard players set @s use_carrot_stick 0
