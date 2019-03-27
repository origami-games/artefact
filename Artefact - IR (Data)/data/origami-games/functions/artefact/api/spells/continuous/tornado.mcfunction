#continuous visuals
#@s - primary player
#called by origami-games:artefact/core/player/tick

#audiovisuals
particle minecraft:sweep_attack ~ ~.5 ~ .5 .5 .5 1 1 normal @a
execute if score cooldown spells matches 1 run stopsound @s player minecraft:item.elytra.flying
execute if score cooldown spells matches 1 run tag @s remove spell.tornado.no_target
#functionality
execute as @e[type=!#origami-games:artefact/api/spells/action/tornado/no_target,distance=..4,tag=!spell.tornado.no_target] at @s positioned ^ ^ ^-.25 if block ~ ~ ~ #minecraft:air run tp @s ~ ~ ~
execute as @e[type=!#origami-games:artefact/api/spells/action/tornado/no_target,distance=..4,tag=!spell.tornado.no_target] at @s run tp @s ~ ~.2 ~
