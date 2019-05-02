#stuns
#@s - primary player
#called by origami-games:artefact/api/stuns/run_checks

#remove effects
effect clear @s minecraft:glowing

#remove tag
tag @s remove stun.glowing
#remove score
scoreboard players reset @s stun.glowing
