#mana check
#@s - primary player
#called by advancement origami-games:artefact/technical/consume_pushing_potion

#unless 6.. damage
execute if entity @s[gamemode=!creative,gamemode=!spectator] unless score mana spells matches 6.. run function origami-games:artefact/api/potions/not_enough_mana

#if 6.. activate
execute if entity @s[gamemode=!creative,gamemode=!spectator] if score mana spells matches 6.. run function origami-games:artefact/api/potions/pushing/consumed
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run function origami-games:artefact/api/potions/pushing/consumed

#revoke advancement
advancement revoke @s only origami-games:artefact/technical/consume_pushing_potion

#remove bottle
schedule function origami-games:artefact/api/potions/remove_bottle 1t
