#subsequent ability effect
#@s - primary player
#called by origami-games:artefact/api/action_detection/damaged_entity

#audiovisuals
particle minecraft:cloud ~ ~ ~ .25 0 .25 0 200 normal @a

playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 100 1 1
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 100 2 1
playsound minecraft:entity.player.levelup player @a[distance=..20] ~ ~ ~ 100 2 1

#add state
execute if score rush.state abilities matches 0..4 run scoreboard players add rush.state abilities 1

#give speed
execute if score rush.state abilities matches 1 run effect give @s minecraft:speed 4 1 false
execute if score rush.state abilities matches 2 run effect give @s minecraft:speed 5 2 false
execute if score rush.state abilities matches 3 run effect give @s minecraft:speed 6 3 false
execute if score rush.state abilities matches 4 run effect give @s minecraft:speed 7 4 false
