#checks entity to run health sound
#@s - @e[tag=mob,tag=!no_sound]
#called by artefact-api:entities/sounds/check/run

execute if entity @s[tag=entity.artefact.pixie] run playsound minecraft:entity.parrot.hurt hostile @a[distance=..20] ~ ~ ~ 100 2 1
