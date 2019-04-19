#attaches throwing knife to block
#@s - @e[type=minecraft:armor_stand,tag=weapon.melee.throwing_knife]
#called by origami-games:artefact/api/items/weapons/melee/throwing_knife/checks

#set data
data merge entity @s {NoGravity:1b}
data remove entity @s Motion

#unless in block, tp
execute if block ^ ^ ^.1 #origami-games:artefact/type/passthrough run tp @s ^ ^ ^.1
