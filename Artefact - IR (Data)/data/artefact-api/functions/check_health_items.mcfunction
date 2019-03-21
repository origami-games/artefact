#checks `artefact:{add_hearts:#}` on primary player
#@s - primary player
#called by artefact-core:player/tick

#reset score
scoreboard players reset @s max_hearts

#add hearts
#TODO

#if none added, reset
execute unless entity @s[scores={max_hearts=0..}] run scoreboard players set @s max_hearts 4
