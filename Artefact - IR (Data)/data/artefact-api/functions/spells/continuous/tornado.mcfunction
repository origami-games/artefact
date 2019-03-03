#continuous visuals
#@s - primary player
#called by artefact-core:player/tick

#particles
particle minecraft:sweep_attack ~ ~.5 ~ .5 .5 .5 1 1 normal @a
#functionality
execute as @e[type=!#artefact-api:spells/action/tornado/no_target,distance=..4] at @s positioned ^ ^ ^-.25 if block ~ ~ ~ #minecraft:air run tp @s ~ ~ ~
execute as @e[type=!#artefact-api:spells/action/tornado/no_target,distance=..4] at @s run tp @s ~ ~.2 ~
