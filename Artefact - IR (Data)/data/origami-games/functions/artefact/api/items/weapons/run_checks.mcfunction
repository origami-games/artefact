#weapon item checks
#@s - primary player
#called by origami-games:artefact/core/player/tick

#throwing knife
execute as @e[type=minecraft:armor_stand,tag=weapon.melee.throwing_knife] at @s run function origami-games:artefact/api/items/weapons/melee/throwing_knife/checks

execute store result score player_y_rot wpn.thr_kni run data get entity @s Rotation[1]
execute store result score player_x_rot wpn.thr_kni run data get entity @s Rotation[0]
