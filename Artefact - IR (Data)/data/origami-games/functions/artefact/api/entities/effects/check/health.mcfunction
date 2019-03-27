#checks entity to run health sound
#@s - @e[tag=mob,tag=!no_sound]
#called by origami-games:artefact/api/entities/sounds/check/run

execute if entity @s[tag=entity.artefact.pixie] run function origami-games:artefact/api/entities/effects/pixie/health
execute if entity @s[tag=entity.artefact.goblin] run function origami-games:artefact/api/entities/effects/zombie/goblin/health
