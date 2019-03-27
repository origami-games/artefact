#runs if a player has held an item with a spell for the first time
#@s - primary player
#called by origami-games:artefact/core/player/tick

#prevent repetition
tag @s add tutorial.abilities
#audiovisuals
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .3 2 1

tellraw @s {"translate":"text.artefact.border.top","color":"gray"}
tellraw @s [{"translate":"tutorial.artefact.prefix","color":"green"},{"text":": ","color":"green"},{"translate":"tutorial.artefact.abilities.main","color":"dark_green"},"\n  ",{"translate":"tutorial.artefact.abilities.right","color":"dark_green"}," ",{"keybind":"key.use","color":"dark_green","bold":true},"\n\n",{"translate":"tutorial.artefact.warning_prefix","color":"red"},{"text":": ","color":"red"},{"translate":"tutorial.artefact.abilities.attack_warning","color":"dark_red"}]
tellraw @s {"translate":"text.artefact.border.bottom","color":"gray"}
