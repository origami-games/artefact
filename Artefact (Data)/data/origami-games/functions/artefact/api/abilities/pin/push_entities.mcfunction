#adds pin detection tag
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/tier_2

#audiovisuals
particle minecraft:cloud ~ ~ ~
particle minecraft:cloud ~-1 ~ ~1
particle minecraft:cloud ~-1 ~ ~-1
particle minecraft:cloud ~1 ~ ~1
particle minecraft:cloud ~1 ~ ~-1

#functionality
effect give @e[type=!#origami-games:artefact/api/undead,type=!#origami-games:artefact/api/abilities/pin/no_target,distance=..4] minecraft:instant_damage 1 0 true
effect give @e[type=#origami-games:artefact/api/undead,type=!#origami-games:artefact/api/abilities/pin/no_target,distance=..4] minecraft:instant_health 1 0 true

execute as @e[type=!#origami-games:artefact/api/abilities/pin/no_target,distance=..4] at @s positioned ^ ^ ^-1 if block ~ ~ ~ #origami-games:artefact/type/passthrough run tp @s ~ ~ ~
execute as @e[type=!#origami-games:artefact/api/abilities/pin/no_target,distance=..4] at @s run tp @s ~ ~.01 ~

#tick timer
scoreboard players remove pin.timer abilities 1
