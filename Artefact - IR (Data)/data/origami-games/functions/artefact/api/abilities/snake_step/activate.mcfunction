#activates ability
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/tier_2

#audiovisuals
particle minecraft:portal ~ ~ ~ .35 .5 .35 0 500 normal @a

playsound origami-games:artefact.ability.snake_step player @a[distance=..20] ~ ~ ~ 100 2 1
playsound origami-games:artefact.ability.snake_step player @a[distance=..20] ~ ~ ~ 100 0 1

#functionality
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:-1,Tags:["ability.snake_step.rotation"],CustomName:'{"text":"ability.snake_step.rotation"}'}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=ability.snake_step.rotation,sort=nearest,limit=1] Duration int 1 run scoreboard players get snake_step.teleport_count.start abilities
data modify entity @e[type=minecraft:area_effect_cloud,tag=ability.snake_step.rotation,sort=nearest,limit=1] Rotation set from entity @s Rotation

effect give @s minecraft:invisibility 5 0 false
effect give @s minecraft:levitation 999999 255 true
effect give @s minecraft:jump_boost 999999 255 true

#scores
scoreboard players operation last_used abilities = snake_step ability_id
scoreboard players operation snake_step ability_cooldown = snake_step.start ability_cooldown

scoreboard players operation snake_step.teleport_count abilities = snake_step.teleport_count.start abilities

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 30

#tags
tag @s add ability.used
tag @s add ability.snake_step.land
