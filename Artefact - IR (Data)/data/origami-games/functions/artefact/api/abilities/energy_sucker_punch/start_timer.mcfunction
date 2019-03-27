#ability timer
#@s - primary player
#called by origami-games:artefact/core/player/tick

#audiovisuals
execute positioned ^ ^ ^1.75 run particle minecraft:damage_indicator ~ ~.5 ~ .5 .5 .5 0 20 force @a

playsound minecraft:entity.zombie_villager.converted player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:entity.zombie_villager.converted player @a[distance=..20] ~ ~ ~ 100 .5 1
playsound minecraft:entity.zombie_villager.converted player @a[distance=..20] ~ ~ ~ 100 1.5 1
playsound minecraft:entity.zombie_villager.converted player @a[distance=..20] ~ ~ ~ 100 2 1

#functionality
scoreboard players operation esp.timer abilities = esp.timer.start abilities
effect give @s minecraft:strength 2 2

#tags
tag @s add ability.used
