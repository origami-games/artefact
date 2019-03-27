#base stun effects
#@s - varies
#called arbitrarily

#execute entities
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base/execute_entities
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=-10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base/execute_entities
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base/execute_entities
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=-10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base/execute_entities
