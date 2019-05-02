#sets up throw for throwing knife
#@s - primary player
#called by origami-games:artefact/api/action_detection/right_click

#audiovisuals
playsound minecraft:item.trident.throw player @a[distance=..20] ~ ~ ~ 100 2 1

#summon entity
function origami-games:artefact/api/items/weapons/melee/throwing_knife/summon_checks

#remove item
replaceitem entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand minecraft:air
