#runs if the primary player does NOT have a food score
#@s - primary player
#called by artefact-core:player/tick

#disable player
effect give @s minecraft:hunger 1 255 true
effect give @s minecraft:blindness 2 0
effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:jump_boost 1 129 true

gamemode adventure @s

#notify player
tellraw @s[tag=!no_scores] {"translate":"text.artefact.corrupt_scores","color":"red"}
title @s actionbar {"translate":"text.artefact.corrupt_scores","color":"red"}

#scoreboards
execute unless score @s max_hearts matches 1.. run scoreboard players set @s max_hearts 4

#prevent text repeats
tag @s add no_scores
