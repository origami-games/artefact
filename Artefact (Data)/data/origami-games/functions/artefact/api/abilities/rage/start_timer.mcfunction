#ability timer
#@s - primary player
#called by origami-games:artefact/core/player/tick

scoreboard players operation flick.timer abilities = flick.timer.start abilities
execute positioned ^ ^ ^3 run particle minecraft:angry_villager ~ ~-1 ~ .5 .5 .5 1 10 force @a
