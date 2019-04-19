#subsequent ability effect
#@s - primary player
#called by origami-games:artefact/api/abilities/run_checks

#tick down score
scoreboard players remove snake_step.teleport_count abilities 1
#teleport player
execute unless block ^ ^ ^1 #origami-games:artefact/type/passthrough positioned ~ ~1 ~ unless block ^ ^ ^1 #origami-games:artefact/type/passthrough run scoreboard players set snake_step.teleport_count 0
execute if score snake_step.teleport_count abilities matches 1.. if block ^ ^ ^1 #origami-games:artefact/type/passthrough positioned ~ ~.1 ~ if block ^ ^ ^1 #origami-games:artefact/type/passthrough positioned ~ ~ ~ rotated as @e[type=minecraft:area_effect_cloud,tag=ability.snake_step.rotation,sort=nearest,limit=1] run tp @s ^ ^ ^.5 ~ ~
#stun
execute if score snake_step.teleport_count abilities matches 1.. run function origami-games:artefact/api/abilities/snake_step/stun
#clear levitation if 0
execute if score snake_step.teleport_count abilities matches 0 run effect clear @s minecraft:levitation
#reset score if 0
execute if score snake_step.teleport_count abilities matches 0 run scoreboard players reset snake_step.teleport_count abilities
