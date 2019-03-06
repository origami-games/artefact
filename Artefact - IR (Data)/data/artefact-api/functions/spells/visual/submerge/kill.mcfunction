#kills effect entities
#@s - @e[type=minecraft:armor_stand,tag=spell_visual.rain]
#called by artefact-api:spells/visual/submerge/effects

execute if block ~ ~ ~ #artefact-api:spells/action/submerge/block run setblock ~ ~ ~ minecraft:air
kill @s[type=!minecraft:player]
