#consumed energy potion
#@s - primary player
#called by advancement origami-games:artefact/technical/consume_energy_potion

#functionality
scoreboard players add level energy 25

#audiovisuals
playsound minecraft:entity.player.burp player @a[distance=..20] ~ ~ ~ 100 2 1
playsound minecraft:entity.player.burp player @a[distance=..20] ~ ~ ~ 100 1 1
playsound minecraft:entity.player.burp player @a[distance=..20] ~ ~ ~ 100 0 1

particle minecraft:happy_villager ~ ~ ~ .5 1 .5 1 200 normal @a
particle minecraft:sweep_attack ~ ~ ~ .85 1 .85 1 80 normal @a
particle minecraft:witch ~ ~ ~ .5 1 .5 1 200 normal @a

#remove bottle
schedule function origami-games:artefact/api/potions/remove_bottle 1t

#tag
tag @s add potion.artefact.consumed

#revoke advancement
advancement revoke @s only origami-games:artefact/technical/consume_energy_potion
