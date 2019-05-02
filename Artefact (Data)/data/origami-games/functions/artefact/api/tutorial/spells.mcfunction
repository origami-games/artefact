#runs if a player has held an item with a spell for the first time
#@s - primary player
#called by origami-games:artefact/core/player/tick

#prevent repetition
tag @s add tutorial.spells
#audiovisuals
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .3 2 1

tellraw @s [{"translate":"tutorial.artefact.prefix","color":"green"},{"text":": ","color":"green"},{"translate":"tutorial.artefact.spells.main","color":"dark_green"},"\n  ",{"translate":"tutorial.artefact.spells.left","color":"dark_green"}," ",{"keybind":"key.attack","color":"dark_green","bold":true},"\n  ",{"translate":"tutorial.artefact.spells.right","color":"dark_green"}," ",{"keybind":"key.use","color":"dark_green","bold":true}]
