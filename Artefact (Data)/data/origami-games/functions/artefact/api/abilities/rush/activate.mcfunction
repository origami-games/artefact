#activates ability
#@s - primary player
#called by origami-games:artefact/api/action_detection/right_click

#audiovisuals
particle minecraft:cloud ~ ~ ~ .25 0 .25 0 200 normal @a

playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 100 1 1
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 100 2 1

#functionality
effect give @s minecraft:speed 4 0 false
scoreboard players set rush.state abilities 0

#scores
scoreboard players operation last_used abilities = rush ability_id
scoreboard players operation rush ability_cooldown = rush.start ability_cooldown

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 50

#tags
tag @s add ability.used
