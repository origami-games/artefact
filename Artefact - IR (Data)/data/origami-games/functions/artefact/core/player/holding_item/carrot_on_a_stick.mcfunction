#runs if a player is holding a carrot on a stick
#@s - primary player
#called by origami-games:artefact/core/player/tick

#right-click
execute if entity @s[scores={use_carrot_stick=1..}] run function origami-games:artefact/api/action_detection/right_click
