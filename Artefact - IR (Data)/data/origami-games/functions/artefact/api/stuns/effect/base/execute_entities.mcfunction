#stun
#@s - varies
#called by origami-games:artefact/api/stuns/levitation/run

tag @s add stun.base
data merge entity @s {NoAI:1}
team join no_collision @s
