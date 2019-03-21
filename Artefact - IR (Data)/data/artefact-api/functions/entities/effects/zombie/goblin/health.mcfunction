#minus health effects
#@s - @e[tag=mob,tag=!no_sound]
#called by artefact-api:entities/effects/check/health

playsound minecraft:entity.zombie.hurt hostile @a[distance=..20] ~ ~ ~ 1 1 1
