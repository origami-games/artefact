#kills effect entities
#@s - @e[type=minecraft:armor_stand,tag=spell_visual.rain]
#called by origami-games:artefact/api/spells/visual/submerge/effects

#audiovisuals
execute if block ~ ~ ~ minecraft:blue_ice run particle minecraft:block minecraft:blue_ice ~ ~ ~ 0 0 0 0 64 normal @a
execute if block ~ ~ ~ minecraft:light_blue_stained_glass run particle minecraft:block minecraft:light_blue_stained_glass ~ ~ ~ 0 0 0 0 64 normal @a
execute if block ~ ~ ~ minecraft:packed_ice run particle minecraft:block minecraft:packed_ice ~ ~ ~ 0 0 0 0 64 normal @a

playsound minecraft:block.glass.break player @a[distance=..20] ~ ~ ~ 1 0 1

#remove blocks
execute if block ~ ~ ~ #origami-games:artefact/api/spells/action/submerge/block run setblock ~ ~ ~ minecraft:air
#remove entity
kill @s[type=!minecraft:player]
