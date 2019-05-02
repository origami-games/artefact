#throwing knife pick up
#@s - @e[type=minecraft:armor_stand,tag=weapon.melee.throwing_knife]
#called by origami-games:artefact/api/items/weapons/melee/throwing_knife/checks

#give item
execute as @p[tag=primary,gamemode=!creative] run function origami-games:artefact/api/items/give/throwing_knife
execute if entity @p[tag=primary,gamemode=creative] run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 100 2 1

#kill entity
kill @s
