#runs if a player 'flicks'
#@s - primary player
#called by origami-games:artefact/api/action_detection/flick/check

#abilities
execute unless score rage ability_cooldown matches 1.. unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{is_shield:1b}}}]}] unless score flick.timer abilities matches 1.. unless score shield_bash.timer abilities matches 1.. unless score esp.timer abilities matches 1.. run function origami-games:artefact/api/abilities/rage/start_timer

execute unless score shield_bash ability_cooldown matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{is_shield:1b}}}]}] unless score flick.timer abilities matches 1.. unless score shield_bash.timer abilities matches 1.. unless score esp.timer abilities matches 1.. run function origami-games:artefact/api/abilities/shield_bash/activate
