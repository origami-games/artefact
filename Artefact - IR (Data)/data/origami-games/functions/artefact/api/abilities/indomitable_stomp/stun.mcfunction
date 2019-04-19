#stun
#@s - primary player
#called by origami-games:artefact/api/abilities/indomitable_stomp/land

#execute entities
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=-10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base
execute as @e[type=!#origami-games:artefact/api/stuns/base/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=-10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/base

execute as @e[type=!#origami-games:artefact/api/stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/rise
execute as @e[type=!#origami-games:artefact/api/stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=-10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/rise
execute as @e[type=!#origami-games:artefact/api/stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/rise
execute as @e[type=!#origami-games:artefact/api/stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=-10,dy=2] at @s run function origami-games:artefact/api/stuns/effect/rise
