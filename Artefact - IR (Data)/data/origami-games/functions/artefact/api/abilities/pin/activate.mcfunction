#activates ability
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/tier_2

#audiovisuals
playsound minecraft:block.beacon.ambient player @a[distance=..20] ~ ~ ~ 100 2 1
playsound minecraft:block.beacon.ambient player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:block.beacon.activate player @a[distance=..20] ~ ~ ~ 100 1 1
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 100 0 1

particle minecraft:cloud ~ ~ ~ 0 1 0 .5 100 force

#functionality
effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:jump_boost 1 128 true

effect give @s minecraft:speed 4 4

#scores
scoreboard players operation last_used abilities = pin ability_id
scoreboard players operation pin ability_cooldown = pin.start ability_cooldown

scoreboard players operation pin.timer abilities = pin.start ability_cooldown

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 30

#tags
tag @s add ability.used
