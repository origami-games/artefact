#checks for entity noises
#@s - @e[tag=mob,tag=!no_sound]
#called by artefact-core:tick

#health sound
scoreboard players operation @s health.prev = @s health
execute store result score @s health run data get entity @s Health
execute if entity @s[tag=spawned] unless score @s health.prev <= @s health run function artefact-api:entities/effects/check/health

#ambient
execute if entity @s[tag=spawned] run function artefact-api:entities/effects/check/ambient
