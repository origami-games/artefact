#stun
#@s - varies
#called by artefact-api:stuns/levitation/run

tp @s ~ ~.4 ~
tag @s add stun.rise
data merge entity @s {NoAI:1}
team join no_collision @s
