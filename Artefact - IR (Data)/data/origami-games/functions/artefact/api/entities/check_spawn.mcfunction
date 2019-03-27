#checks for a mob spawn
#@s - @e[type=minecraft:armor_stand,tag=spawn_mob]
#called by origami-games:artefact/core/tick

#check spawned spawned mob
execute if entity @s[tag=spawn_mob.zombie.simple] run function origami-games:artefact/api/entities/spawn/zombie/simple
execute if entity @s[tag=spawn_mob.zombie.goblin] run function origami-games:artefact/api/entities/spawn/zombie/goblin
execute if entity @s[tag=spawn_mob.pixie] run function origami-games:artefact/api/entities/spawn/pixie
execute if entity @s[tag=spawn_mob.rat] run function origami-games:artefact/api/entities/spawn/rat
execute if entity @s[tag=spawn_mob.butterfly] run function origami-games:artefact/api/entities/spawn/butterfly

#kill entity
tag @s[type=!minecraft:player] add remove
