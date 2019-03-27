#activates ability
#@s - primary player
#called by origami-games:artefact/api/action_detection/damaged_entity

#audiovisuals
playsound minecraft:entity.player.burp player @a[distance=..20] ~ ~ ~ 100 2 1
playsound minecraft:entity.player.burp player @a[distance=..20] ~ ~ ~ 100 1 1
playsound minecraft:entity.player.burp player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:entity.experience_orb.pickup player @a[distance=..20] ~ ~ ~ .09 0 1

particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:sweep_attack ~ ~ ~ 1 1 1 1 20 normal @a
particle minecraft:witch ~ ~ ~ 1 1 1 1 100 normal @a

#functionality
scoreboard players operation esp.math abilities = @s damage_dealt
execute unless score esp.math abilities >= esp.math.threshold.multiply abilities run scoreboard players operation esp.math abilities *= esp.math.multiplier abilities
execute if score esp.math abilities >= esp.math.threshold.divide abilities run scoreboard players operation esp.math abilities *= esp.math.multiplier abilities
scoreboard players operation level energy += esp.math abilities
scoreboard players reset esp.math abilities

#scores
scoreboard players set esp.timer abilities 0

scoreboard players operation last_used abilities = energy_sucker_punch ability_id
scoreboard players operation energy_sucker_punch ability_cooldown = energy_sucker_punch.start ability_cooldown

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 40

#tags
tag @s add ability.used
