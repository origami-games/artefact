#runs every tick - the core loop
#@s - console
#called by #artefact-core:tick

#ensure there is only one primary player
execute store result score primary_players general if entity @e[tag=primary]
execute if score primary_players general matches 2.. run function artefact-core:random_primary
execute unless entity @p[tag=primary] run function artefact-core:random_primary

scoreboard players reset @a[tag=!primary]

#fire stands
execute as @e[type=minecraft:armor_stand,tag=fire_stand] run data merge entity @s {Marker:1b,Fire:10s}

#tags
tag @e[type=#artefact-type:check_moving,nbt={Motion:[0.0d,0.0d,0.0d]}] remove moving
tag @e[type=#artefact-type:check_moving,nbt=!{Motion:[0.0d,0.0d,0.0d]}] add moving

scoreboard players add @e[tag=lifetime] lifetime 1

execute as @e[tag=mob_top] at @s unless entity @e[tag=mob_bottom,distance=...5] positioned ~ ~-.775 ~ unless entity @e[tag=mob_bottom,distance=...5] run tag @s add remove
execute as @e[tag=mob_vessel,tag=spawned] at @s positioned ~ ~.775 ~ unless entity @e[tag=mob_bottom,sort=nearest,limit=1,distance=...1] run tag @s add remove
tag @e[tag=mob_bottom,nbt=!{Passengers:[{}]}] add remove

tag @e[type=slime,tag=!left_click,tag=!mob] add remove

#NPCs
#TODO - more than 1 NPC in the world at a time
tp @e[tag=npc.player.andante,limit=1] @e[tag=npc.player.andante.pilot,limit=1]
tp @e[tag=npc.player.razorsharp,limit=1] @e[tag=npc.player.razorsharp.pilot,limit=1]
tp @e[tag=npc.player.toffeemax,limit=1] @e[tag=npc.player.toffeemax.pilot,limit=1]

execute as @e[tag=npc.invulnerable] run data merge entity @s {Health:20.0f}
execute as @e[tag=npc.look] at @s run function artefact-api:npcs/look

#mobs
## spawning (SPREAD AND SPAWN CHECK CANNOT BE RAN IN THE SAME SUBTICK)
execute as @e[type=minecraft:armor_stand,tag=spawn_mob] at @s run function artefact-api:entities/spread
execute as @e[type=minecraft:armor_stand,tag=spawn_mob] at @s run function artefact-api:entities/check_spawn
## sounds
execute as @e[tag=sounds] at @s run function artefact-api:entities/effects/check/run
## spawned score
tag @e[tag=mob] add spawned

#random
#NEEDS ADDING

#remove entities
kill @e[type=minecraft:item,nbt={Item:{tag:{artefact:{is_hotbar_item:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{tag:{artefact:{no_pickup:1b}}}}]

execute as @e[tag=remove] at @s run tp @s ~ 1 ~
execute as @e[tag=remove] run data merge entity @s {DeathTime:19s,Health:0.0f}

kill @e[tag=remove.kill]

#items
execute as @e[type=minecraft:item] run function artefact-api:items/dropped/check

#prevent left-click entity suffocation
execute as @e[type=minecraft:slime,tag=left_click,nbt=!{Pos:[0.5d,0.0d,0.5d]}] at @s unless entity @p[distance=..3,gamemode=!spectator] run data merge entity @s {DeathLootTable:"minecraft:empty",Size:0,Health:0.0f,DeathTime:19s}
#create left-click if no left-click is found
execute unless entity @e[tag=left_click] run function artefact-api:action_detection/create_click
#remove left-click children
kill @e[type=slime,tag=!left_click,tag=!mob]

execute as @e[type=minecraft:slime,tag=!left_click,name=left_click] run data merge entity @s {Health:0.0f,Size:0,Pos:[0.5d,1.0d,0.5d]}

#offhand removal
execute as @e[type=minecraft:item,tag=offhand] run data modify entity @s Pos set from entity @p[tag=primary] Pos
clear @a[tag=!primary] minecraft:stick{artefact:{offhand_placeholder:1b}}

stopsound @a[tag=!primary] * minecraft:entity.player.attack.nodamage

#run primary player processes
execute if score loaded general matches 1..2 as @a[tag=primary] at @s run function artefact-core:player/tick

#other functions
function artefact-api:spells/entity_checks

#check deaths
execute as @a[scores={death_check=1..}] at @s run function artefact-api:death
