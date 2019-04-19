#runs if a player who used a potion didn't have enough mana
#@s - primary player
#called by [potion `check_mana` functions]

#damage
effect give @s minecraft:instant_damage 1 0 true

#audiovisuals
playsound minecraft:entity.guardian.flop player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:entity.guardian.flop player @a[distance=..20] ~ ~ ~ 100 2 1

particle minecraft:dripping_water ~ ~-1 ~ .5 1 .5 .1 1000 force
