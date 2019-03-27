#subsequent ability effect
#@s - primary player
#called by origami-games:artefact/api/abilities/run_checks

#audiovisuals
playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..20] ~ ~ ~ 100 0 1
playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..20] ~ ~ ~ 100 2 1
playsound minecraft:block.anvil.land player @a[distance=..20] ~ ~ ~ 100 1 1

particle minecraft:block minecraft:barrel ~ ~ ~ 1.5 .1 1.5 0 200 force @a

#functionality
function origami-games:artefact/api/stuns/effect/base
function origami-games:artefact/api/stuns/effect/rise

effect give @e[type=!#origami-games:artefact/api/undead,type=!#origami-games:artefact/api/abilities/indomitable_stomp/no_target,distance=..6] minecraft:instant_damage 1 0 true
effect give @e[type=#origami-games:artefact/api/undead,type=!#origami-games:artefact/api/abilities/indomitable_stomp/no_target,distance=..6] minecraft:instant_health 1 0 true

#clear effects
effect clear @s minecraft:levitation
effect clear @s minecraft:resistance

#remove tag
tag @s remove ability.indomitable_stomp.land
