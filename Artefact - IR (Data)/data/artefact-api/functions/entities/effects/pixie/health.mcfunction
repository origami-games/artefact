#minus health effects
#@s - @e[tag=mob,tag=!no_sound]
#called by artefact-api:entities/effects/check/health

particle minecraft:witch ~ ~ ~ .1 .1 .1 .1 5 normal @a
playsound minecraft:entity.parrot.hurt hostile @a[distance=..20] ~ ~ ~ 100 2 1
playsound minecraft:entity.silverfish.hurt hostile @a[distance=..20] ~ ~ ~ 0.25 1 1
