#runs if the primary player does not have any item in their offhand
#@s - primary player
#called by origami-games:artefact/core/player/offhand/remove

#default
execute unless block ~ ~ ~ #origami-games:artefact/type/slowing unless block ~ ~-.4 ~ #origami-games:artefact/type/slowing unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function origami-games:artefact/core/player/offhand/replace/default
execute unless block ~ ~ ~ #origami-games:artefact/type/slowing unless block ~ ~-.4 ~ #origami-games:artefact/type/slowing unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{AttributeModifiers:[{Slot:"offhand",AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-.35,Operation:1,UUIDLeast:2,UUIDMost:2}]}}]}] run function origami-games:artefact/core/player/offhand/replace/force/default
#slowing
execute if block ~ ~ ~ #origami-games:artefact/type/slowing if entity @s[nbt={abilities:{flying:0b}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function origami-games:artefact/core/player/offhand/replace/slowing
execute if block ~ ~-.4 ~ #origami-games:artefact/type/slowing if entity @s[nbt={abilities:{flying:0b}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function origami-games:artefact/core/player/offhand/replace/slowing
#shield
execute unless block ~ ~ ~ #origami-games:artefact/type/slowing unless block ~ ~-.4 ~ #origami-games:artefact/type/slowing if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function origami-games:artefact/core/player/offhand/replace/shield
#magic shield
execute unless block ~ ~ ~ #origami-games:artefact/type/slowing unless block ~ ~-.4 ~ #origami-games:artefact/type/slowing unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function origami-games:artefact/core/player/offhand/replace/magic_shield

#shield + slowing
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~ ~ #origami-games:artefact/type/slowing if entity @s[nbt={abilities:{flying:0b}}] run function origami-games:artefact/core/player/offhand/replace/combinations/shield_slowing
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~-.4 ~ #origami-games:artefact/type/slowing if entity @s[nbt={abilities:{flying:0b}}] run function origami-games:artefact/core/player/offhand/replace/combinations/shield_slowing
#remove shield slowing
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]},AttributeModifiers:[{AttributeName:"generic.movementSpeed"}]}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] unless block ~ ~ ~ #origami-games:artefact/type/slowing unless block ~ ~-.4 ~ #origami-games:artefact/type/slowing unless entity @s[nbt={abilities:{flying:0b}}] run function origami-games:artefact/core/player/offhand/replace/shield

#magic shield + slowing
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~ ~ #origami-games:artefact/type/slowing if entity @s[nbt={abilities:{flying:0b}}] run function origami-games:artefact/core/player/offhand/replace/combinations/magic_shield_slowing
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]}}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] if block ~ ~-.4 ~ #origami-games:artefact/type/slowing if entity @s[nbt={abilities:{flying:0b}}] run function origami-games:artefact/core/player/offhand/replace/combinations/magic_shield_slowing
#remove magic shield slowing
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["shield"]},AttributeModifiers:[{AttributeName:"generic.movementSpeed"}]}}]}] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] unless block ~ ~ ~ #origami-games:artefact/type/slowing unless block ~ ~-.4 ~ #origami-games:artefact/type/slowing unless entity @s[nbt={abilities:{flying:0b}}] run function origami-games:artefact/core/player/offhand/replace/magic_shield
