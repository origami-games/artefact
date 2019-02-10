#checks for a mob spawn
#@s - @e[type=minecraft:armor_stand,tag=spawn_mob]
#called by artefact-core:tick

#check spawned spawned mob
execute if entity @s[tag=spawn_mob.zombie.level.1] run function artefact-api:entities/spawn/zombie/level_1
execute if entity @s[tag=spawn_mob.pixie] run function artefact-api:entities/spawn/pixie

#kill entity
tag @s[type=!minecraft:player] add remove
