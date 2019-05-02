#throws entity
#@s - @e[type=minecraft:armor_stand,tag=to_throw,tag=!thrown,sort=nearest,limit=1]
#called by origami-games:artefact/api/items/weapons/melee/throwing_knife/throw
#CREDIT: NOPEname

execute store result score @s wpn.thr_kni.x run data get entity @s Pos[0] 1000000
execute store result score @s wpn.thr_kni.y run data get entity @s Pos[1] 1000000
execute store result score @s wpn.thr_kni.z run data get entity @s Pos[2] 1000000

tp @s ^ ^ ^0.001

execute store result score @s wpn.thr_kni.dx run data get entity @s Pos[0] 1000000
execute store result score @s wpn.thr_kni.dy run data get entity @s Pos[1] 1000000
execute store result score @s wpn.thr_kni.dz run data get entity @s Pos[2] 1000000

scoreboard players operation @s wpn.thr_kni.dx -= @s wpn.thr_kni.x
scoreboard players operation @s wpn.thr_kni.dy -= @s wpn.thr_kni.y
scoreboard players operation @s wpn.thr_kni.dz -= @s wpn.thr_kni.z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

execute store result entity @s Motion[0] double 0.00175 run scoreboard players get @s wpn.thr_kni.dx
execute store result entity @s Motion[1] double 0.00175 run scoreboard players get @s wpn.thr_kni.dy
execute store result entity @s Motion[2] double 0.00175 run scoreboard players get @s wpn.thr_kni.dz

tag @s add thrown
