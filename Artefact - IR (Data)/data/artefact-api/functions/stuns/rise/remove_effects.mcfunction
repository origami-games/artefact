#stuns
#@s - primary player
#called by artefact-api:stuns/run_checks

data merge entity @s {NoAI:0}
#data remove entity @s Motion
tag @s remove stun.rise
scoreboard players reset @s stun.rise
team leave @s
