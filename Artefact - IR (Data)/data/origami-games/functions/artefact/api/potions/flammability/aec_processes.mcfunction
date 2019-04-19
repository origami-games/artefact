#potion area effect cloud processes
#@s - @e[type=minecraft:area_effect_cloud,tag=potion.flammability.flame]
#called by origami-games:artefact/api/potions/flammability/effects

#functionality
execute as @e[type=!#origami-games:artefact/api/potions/flammability/no_target,distance=..1] run data merge entity @s {Fire:100s}

#audiovisuals
particle minecraft:flame
