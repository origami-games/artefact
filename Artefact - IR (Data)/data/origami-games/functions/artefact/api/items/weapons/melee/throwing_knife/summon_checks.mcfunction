#throwing knife rotation spawn checks
#@s - primary player
#called by origami-games:artefact/api/items/weapons/melee/throwing_knife/throw

#spawn checks
summon minecraft:armor_stand ~ ~1.62 ~ {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"translate":"item.artefact.throwing_knife","italic":false}'},artefact:{item:"throwing_knife"},CustomModelData:32}}],CustomName:'{"translate":"item.artefact.throwing_knife"}',Tags:["weapon","weapon.melee","weapon.melee.throwing_knife","to_throw"],Invisible:1b,Silent:1b,Small:1b,NoBasePlate:1b,Pose:{Head:[0.1f,0.1f]},DisabledSlots:2039583}

#set rotation
execute store result entity @e[type=minecraft:armor_stand,tag=to_throw,tag=!thrown,sort=nearest,limit=1] Pose.Head[1] float 1 run scoreboard players get player_x_rot wpn.thr_kni
execute store result entity @e[type=minecraft:armor_stand,tag=to_throw,tag=!thrown,sort=nearest,limit=1] Pose.Head[0] float 1 run scoreboard players get player_y_rot wpn.thr_kni

#throw
tp @e[type=minecraft:armor_stand,tag=to_throw,tag=!thrown,sort=nearest,limit=1] ~ ~1.62 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=to_throw,tag=!thrown,sort=nearest,limit=1] at @s run function origami-games:artefact/api/items/weapons/melee/throwing_knife/execute_throw
