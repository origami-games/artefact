#changes the primary player to the player executing the command
#@s - primary player
#called by entity: minecraft:player

#notify of switch
tellraw @s[type=minecraft:player,tag=!primary] {"translate":"text.artefact.switched_primary_player","color":"green"}
#remove tag from other player
tag @a[tag=primary] remove primary
#add tag to current executor
tag @s[type=minecraft:player,tag=!primary] add primary
