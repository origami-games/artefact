#runs on players holding an item with the tag `artefact:{can_right_click:1b}`
#@s - primary player
#called by artefact-core:player/tick

#right-click detection
execute unless score cooldown spells matches 1.. if entity @s[scores={use_carrot_stick=1..}] run function artefact-api:spells/click/right
