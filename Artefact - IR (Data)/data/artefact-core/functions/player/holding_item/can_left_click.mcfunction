#runs on players holding an item with the tag `artefact:{can_left_click:1b}`
#@s - primary player
#called by artefact-core:player/tick

#left-click detection
execute positioned ~ ~.75 ~ run tp @e[type=minecraft:slime,tag=left_click,tag=!remove] ^ ^ ^2

execute if entity @e[type=minecraft:slime,tag=left_click,tag=!remove] run scoreboard players operation left_click_health.prev general = left_click_health general
execute store result score left_click_health general run data get entity @e[type=minecraft:slime,tag=left_click,tag=!remove,limit=1] Health
execute if entity @s[scores={damage_dealt=10..}] unless score cooldown spells matches 1.. if score left_click_health general < left_click_health.prev general run function artefact-api:click_detection/left_click
execute unless entity @s[scores={damage_dealt=10..}] unless score cooldown spells matches 1.. if score left_click_health general < left_click_health.prev general run tp @e[type=minecraft:slime,tag=left_click] 0 -512 0
