#stuns
#@s - primary player
#called by origami-games:artefact/api/stuns/run_checks

data merge entity @s {NoAI:0}
#data remove entity @s Motion
tag @s remove stun.base
scoreboard players reset @s stun.base
team leave @s
