#'poofs' dust
#@s - @e[type=minecraft:item,nbt={Item:{tag:{artefact:{item_type:["dust"]}}},OnGround:1b}] if entity @s[nbt={Item:{tag:{artefact:{item:["pixie_dust"]}}}}]
#called by origami-games:artefact/api/items/dust/poof_check

#audiovisuals
playsound minecraft:entity.bat.takeoff player @p ~ ~ ~ 100 .5 1
playsound minecraft:entity.bat.takeoff player @p ~ ~ ~ 100 1.5 1
particle minecraft:end_rod ~ ~1 ~ 1 1 1 0 20 force

#functionality
summon minecraft:armor_stand ~ ~ ~ {Tags:["spawn_mob","spawn_mob.pixie"],Invisible:1b,Marker:1b,Small:1b}
kill @s
