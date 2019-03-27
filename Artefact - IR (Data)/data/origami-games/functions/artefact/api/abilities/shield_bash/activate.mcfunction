#activates ability
#@s - primary player
#called by origami-games:artefact/api/action_detection/flick/execute

#audiovisuals
playsound minecraft:entity.player.burp player @a[distance=..20] ~ ~ ~ 100 2 1

#functionality
execute as @e[type=!#origami-games:artefact/api/abilities/shield_bash/no_target,distance=..5] at @s run function origami-games:artefact/api/abilities/shield_bash/execute_entities

#scores
scoreboard players operation last_used abilities = shield_bash ability_id
scoreboard players operation shield_bash ability_cooldown = shield_bash.start ability_cooldown

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 20

#tags
tag @s add ability.used
