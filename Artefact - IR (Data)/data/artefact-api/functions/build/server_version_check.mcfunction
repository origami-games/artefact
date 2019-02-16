#checks the server version (e.g. 1.14)
#@s - console
#called by artefact-core:build/check

#summon test entity
summon minecraft:armor_stand ~ ~ ~ {HandItems:[{id:"minecraft:trident",Count:1b,tag:{update:13}},{id:"minecraft:lectern",Count:1b,tag:{update:14}}],ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{update:15}},{id:"minecraft:stick",Count:1b,tag:{update:16}},{id:"minecraft:stick",Count:1b,tag:{update:17}},{id:"minecraft:stick",Count:1b,tag:{update:18}}],Tags:["version_test"],Invisible:1b,Marker:1b,Small:1b,NoBasePlate:1b,Invulnerable:1b}
#test hand items
execute if entity @e[type=minecraft:armor_stand,tag=version_test,nbt={HandItems:[{tag:{update:13}}]}] run scoreboard players set server_version general 13
execute if entity @e[type=minecraft:armor_stand,tag=version_test,nbt={HandItems:[{tag:{update:14}}]}] run scoreboard players set server_version general 14
#disable pack is score is too low
execute unless score server_version general matches 14 run tellraw @a {"translate":"text.artefact.core.server_version.too_low","color":"red"}
execute unless score server_version general matches 14 run datapack disable "file/Artefact - IR (Data)"
execute unless score server_version general matches 14 run tellraw @a {"translate":"text.artefact.core.server_version.too_low.done","color":"green"}
#kill test entities
kill @e[type=minecraft:armor_stand,tag=version_test]
