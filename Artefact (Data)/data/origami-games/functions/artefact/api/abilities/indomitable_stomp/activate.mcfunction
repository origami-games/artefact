#activates ability
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/tier_2

#audiovisuals
playsound minecraft:entity.bat.takeoff player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:entity.bat.takeoff player @a[distance=..20] ~ ~ ~ 100 2 1

particle minecraft:cloud ~ ~ ~ 0 1 0 .5 100 force

#functionality
effect give @s minecraft:levitation 999999 12 true

schedule function origami-games:artefact/api/abilities/indomitable_stomp/peak 10t

#scores
scoreboard players operation last_used abilities = indomitable_stomp ability_id
scoreboard players operation indomitable_stomp ability_cooldown = indomitable_stomp.start ability_cooldown

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 30

#tags
tag @s add ability.used
