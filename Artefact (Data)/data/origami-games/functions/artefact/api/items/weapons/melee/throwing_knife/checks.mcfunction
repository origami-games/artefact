#throwing knife age checks
#@s - @e[type=minecraft:armor_stand,tag=weapon.melee.throwing_knife]
#called by origami-games:artefact/api/items/weapons/run_checks

#stick check
execute unless block ^ ^ ^1 #origami-games:artefact/type/passthrough run function origami-games:artefact/api/items/weapons/melee/throwing_knife/attach/block

execute if entity @e[type=!#origami-games:artefact/api/items/weapons/melee/throwing_knife/no_attach,distance=..1,sort=nearest,limit=1] unless entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] run function origami-games:artefact/api/items/weapons/melee/throwing_knife/attach/entity
execute positioned ~ ~-1 ~ if entity @e[type=!#origami-games:artefact/api/items/weapons/melee/throwing_knife/no_attach,distance=..1,sort=nearest,limit=1] unless entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] run function origami-games:artefact/api/items/weapons/melee/throwing_knife/attach/entity

execute if block ^ ^ ^1 #origami-games:artefact/type/passthrough unless entity @e[type=!#origami-games:artefact/api/items/weapons/melee/throwing_knife/no_attach,distance=...5,sort=nearest,limit=1] run data merge entity @s {NoGravity:0b}

#pick up check
execute if entity @p[tag=primary,gamemode=!spectator,distance=..1] if entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] run function origami-games:artefact/api/items/weapons/melee/throwing_knife/pick_up

#despawn
scoreboard players add @s[nbt={Motion:[0.0d,0.0d,0.0d]}] wpn.thr_kni.age 1
kill @s[scores={wpn.thr_kni.age=100..}]
