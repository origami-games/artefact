#potion sub-effects
#@s - primary player
#called by origami-games:artefact/api/potions/run_checks

#functionality
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:40,Tags:["potion.flammability.flame"]}

execute at @e[type=minecraft:area_effect_cloud,tag=potion.flammability.flame] run function origami-games:artefact/api/potions/flammability/aec_processes

#tick down effect timer
scoreboard players remove flammability custom_potion 1
