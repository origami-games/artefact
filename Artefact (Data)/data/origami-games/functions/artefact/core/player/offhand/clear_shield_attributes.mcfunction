#runs if more than one shield is found on a player
#@s - primary player
#called by origami-games:artefact/core/player/tick

execute store result score normal_shield offhand_counts run clear @s minecraft:shield{artefact:{item_type:["shield"]},AttributeModifiers:[{}]}
execute store result score magic_shield offhand_counts run clear @s minecraft:shield{artefact:{item_type:["magic_shield"]},AttributeModifiers:[{}]}
