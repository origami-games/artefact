#consumed mana potion
#@s - primary player
#called by advancement origami-games:artefact/technical/consume_mana_potion

#functionality
scoreboard players add mana spells 6

#remove bottle
schedule function origami-games:artefact/api/potions/remove_bottle 1t

#tag
tag @s add potion.artefact.consumed

#revoke advancement
advancement revoke @s only origami-games:artefact/technical/consume_mana_potion
