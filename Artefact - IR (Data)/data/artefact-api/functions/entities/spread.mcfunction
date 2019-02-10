#spreads the spawner
#@s - @e[type=minecraft:armor_stand,tag=spawn_mob]
#called by artefact-core:tick

spreadplayers ~ ~ 5 8 false @s[tag=spawn_mob.zombie.level.1]
spreadplayers ~ ~ 10 12 false @s[tag=spawn_mob.pixie]
