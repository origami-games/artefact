#reimburses dust
#@s - primary player
#called by origami-games:artefact/api/items/dust/pickup/check

#get values
clear @s minecraft:glowstone_dust{artefact:{item:["pixie_dust"],item_type:["no_execution"]}} 1
give @s minecraft:glowstone_dust{CustomModelData:1,artefact:{item:["pixie_dust"],item_type:["dust"]},display:{Name:'{"translate":"item.artefact.dust.pixie","color":"light_purple","italic":"false"}',Lore:['{"translate":"item.artefact.dust.pixie.lore"}']}} 1
