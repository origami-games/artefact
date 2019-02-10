#runs if the primary player does not have any item in their offhand
#@s - primary player
#called by artefact-core:player/offhand/remove

#default
execute unless block ~ ~ ~ #artefact-type:slowing unless block ~ ~-.4 ~ #artefact-type:slowing unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function artefact-core:player/offhand/replace/default
#slowing
execute if block ~ ~ ~ #artefact-type:slowing if entity @s[nbt={abilities:{flying:0b}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function artefact-core:player/offhand/replace/slowing
execute if block ~ ~-.4 ~ #artefact-type:slowing if entity @s[nbt={abilities:{flying:0b}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function artefact-core:player/offhand/replace/slowing
#shield
execute unless block ~ ~ ~ #artefact-type:slowing unless block ~ ~-.4 ~ #artefact-type:slowing if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function artefact-core:player/offhand/replace/shield
#magic shield
execute unless block ~ ~ ~ #artefact-type:slowing unless block ~ ~-.4 ~ #artefact-type:slowing unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function artefact-core:player/offhand/replace/magic_shield

#shield + slowing
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~ ~ #artefact-type:slowing if entity @s[nbt={abilities:{flying:0b}}] run function artefact-core:player/offhand/replace/combinations/shield_slowing
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~-.4 ~ #artefact-type:slowing if entity @s[nbt={abilities:{flying:0b}}] run function artefact-core:player/offhand/replace/combinations/shield_slowing
#remove shield slowing
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]},AttributeModifiers:[{AttributeName:"generic.movementSpeed"}]}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] unless block ~ ~ ~ #artefact-type:slowing unless block ~ ~-.4 ~ #artefact-type:slowing unless entity @s[nbt={abilities:{flying:0b}}] run function artefact-core:player/offhand/replace/shield

#magic shield + slowing
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~ ~ #artefact-type:slowing if entity @s[nbt={abilities:{flying:0b}}] run function artefact-core:player/offhand/replace/combinations/magic_shield_slowing
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~-.4 ~ #artefact-type:slowing if entity @s[nbt={abilities:{flying:0b}}] run function artefact-core:player/offhand/replace/combinations/magic_shield_slowing
#remove magic shield slowing
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]},AttributeModifiers:[{AttributeName:"generic.movementSpeed"}]}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] unless block ~ ~ ~ #artefact-type:slowing unless block ~ ~-.4 ~ #artefact-type:slowing unless entity @s[nbt={abilities:{flying:0b}}] run function artefact-core:player/offhand/replace/magic_shield
