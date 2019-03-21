#runs if a player is holding a carrot on a stick
#@s - primary player
#called by artefact-core:player/tick

#right-click
execute if entity @s[scores={use_carrot_stick=1..}] run function artefact-api:action_detection/right_click
