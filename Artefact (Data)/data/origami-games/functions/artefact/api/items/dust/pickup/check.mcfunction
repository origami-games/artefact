#checks for dust with the tag `artefact:{item_type:["no_execution"]}`
#@s - primary player
#called by origami-games:artefact/core/player/tick

#check separately
execute if entity @s[nbt={Inventory:[{tag:{artefact:{item:["pixie_dust"]}}}]}] run function origami-games:artefact/api/items/dust/pickup/pixie
