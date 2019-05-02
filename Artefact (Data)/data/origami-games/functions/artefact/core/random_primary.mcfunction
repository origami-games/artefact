#sets a random primary player
#@s - varies
#called arbitrarily

#remove all primary players
execute as @r run function origami-games:artefact/core/player/set_primary
#notify players
#tellraw @a {"translate":"text.artefact.random_primary_player","color":"gold"}
