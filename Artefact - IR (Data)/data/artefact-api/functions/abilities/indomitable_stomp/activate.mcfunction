#activates ability
#@s - primary player
#called by artefact-api:action_detection/right_click

#audiovisuals
playsound minecraft:entity.bat.takeoff player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:entity.bat.takeoff player @a[distance=..20] ~ ~ ~ 100 2 1

particle minecraft:cloud ~ ~ ~ 0 1 0 .5 100 force

#functionality
effect give @s minecraft:levitation 999999 12 true

schedule function artefact-api:abilities/indomitable_stomp/peak 10t

#scores
scoreboard players operation last_used abilities = indomitable_stomp ability_id
scoreboard players operation cooldown abilities = cooldown.start abilities

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 30

#tags
tag @s add ability.used
