#activates shield
#@s - primary player
#called by origami-games:artefact/api/shield/timer

#audiovisuals
playsound minecraft:entity.evoker_fangs.attack player @s ~ ~ ~ 100 0 1
#functionality
effect give @s minecraft:slowness 5 0 true
effect give @s minecraft:blindness 6 0 false
effect give @s minecraft:resistance 5 255 false
effect give @s minecraft:regeneration 5 0
effect give @s minecraft:levitation 1 2 true

summon minecraft:evoker_fangs ~1 ~ ~
summon minecraft:evoker_fangs ~-1 ~ ~
summon minecraft:evoker_fangs ~ ~ ~1
summon minecraft:evoker_fangs ~ ~ ~-1

scoreboard players set timer shield 0
scoreboard players set cooldown shield 100
execute if entity @s[gamemode=adventure] run scoreboard players operation mana spells -= mana_required shield
bossbar set origami-games:artefact/api/shield/timer visible false
