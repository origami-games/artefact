#stun
#@s - primary player
#called by origami-games:artefact/api/abilities/snake_step/teleport

#execute entities
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,distance=..4] at @s run function origami-games:artefact/api/stuns/effect/base

execute as @e[type=!#origami-games:artefact/api/stuns/glowing/no_target,tag=!artefact-api.stuns.no_target,distance=..4] at @s run function origami-games:artefact/api/stuns/effect/glowing
