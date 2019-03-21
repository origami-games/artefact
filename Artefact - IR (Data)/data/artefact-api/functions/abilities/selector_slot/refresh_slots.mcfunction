#'refreshes' ability selector slots
#@s - primary player
#called arbitrarily

execute unless score slot_1 abilities = slot_1.prev abilities run clear @s minecraft:carrot_on_a_stick{artefact:{hotbar_item:1b,is_hotbar_item:1b}}
execute unless score slot_2 abilities = slot_2.prev abilities run clear @s minecraft:carrot_on_a_stick{artefact:{hotbar_item:2b,is_hotbar_item:1b}}
execute unless score slot_3 abilities = slot_3.prev abilities run clear @s minecraft:carrot_on_a_stick{artefact:{hotbar_item:3b,is_hotbar_item:1b}}
