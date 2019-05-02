#potion sub-effects
#@s - primary player
#called by origami-games:artefact/api/potions/run_checks

#functionality
execute as @e[type=!#origami-games:artefact/api/potions/pushing/no_target,distance=..4] at @s if block ^ ^ ^-1 #origami-games:artefact/type/passthrough run tp @s ^ ^ ^-1

#tick down effect timer
scoreboard players remove pushing custom_potion 1
