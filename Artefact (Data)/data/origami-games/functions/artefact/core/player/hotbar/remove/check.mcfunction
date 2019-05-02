#checks to see if the last slot(s) are menu slots
#@s - primary player
#called by origami-games:artefact/core/player/tick

execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{artefact:{is_hotbar_item:1b,hotbar_item:1b}}}]}] run function origami-games:artefact/core/player/hotbar/remove/1
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{artefact:{is_hotbar_item:1b,hotbar_item:2b}}}]}] run function origami-games:artefact/core/player/hotbar/remove/2
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{artefact:{is_hotbar_item:1b,hotbar_item:3b}}}]}] run function origami-games:artefact/core/player/hotbar/remove/3

#post
execute if score slot1 hotbar_counts matches 2.. run clear @s minecraft:carrot_on_a_stick{artefact:{is_hotbar_item:1b,hotbar_item:1b}}
execute if score slot2 hotbar_counts matches 2.. run clear @s minecraft:carrot_on_a_stick{artefact:{is_hotbar_item:1b,hotbar_item:2b}}
execute if score slot3 hotbar_counts matches 2.. run clear @s minecraft:carrot_on_a_stick{artefact:{is_hotbar_item:1b,hotbar_item:3b}}
execute store result score slot1 hotbar_counts run clear @s minecraft:carrot_on_a_stick{artefact:{is_hotbar_item:1b,hotbar_item:1b}} 0
execute store result score slot2 hotbar_counts run clear @s minecraft:carrot_on_a_stick{artefact:{is_hotbar_item:1b,hotbar_item:2b}} 0
execute store result score slot3 hotbar_counts run clear @s minecraft:carrot_on_a_stick{artefact:{is_hotbar_item:1b,hotbar_item:3b}} 0

kill @e[type=minecraft:item,nbt={Item:{tag:{artefact:{is_hotbar_item:1b}}}}]
clear @s minecraft:stick{artefact:{hotbar_replacement:1b}}
