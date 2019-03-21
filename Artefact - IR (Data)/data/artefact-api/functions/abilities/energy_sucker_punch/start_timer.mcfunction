#ability timer
#@s - primary player
#called by artefact-core:player/tick

#audiovisuals
execute positioned ^ ^ ^1.75 run particle minecraft:damage_indicator ~ ~.5 ~ .5 .5 .5 0 20 force @a

#functionality
scoreboard players operation esp.timer abilities = esp.timer.start abilities
effect give @s minecraft:strength 2 2

#tags
tag @s add ability.used
