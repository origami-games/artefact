#sets a random primary player
#@s - varies
#called arbitrarily

#remove all primary players
tag @e[tag=primary] remove primary
#add a random primary player
tag @r add primary
#notify players
tellraw @a {"translate":"text.artefact.random_primary_player","color":"gold"}
