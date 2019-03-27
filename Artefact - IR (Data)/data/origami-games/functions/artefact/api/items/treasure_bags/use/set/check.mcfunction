#checks set treasure bag type
#@s - primary player
#called by origami-games:artefact/api/items/treasure_bags/use/check

#check set
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{set:"dungeon.test"}}}}}] run function origami-games:artefact/api/items/treasure_bags/use/set/test
