#checks set treasure bag type
#@s - primary player
#called by artefact-api:items/treasure_bags/use/check

#check set
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{set:"dungeon"}}}}}] run function artefact-api:items/treasure_bags/use/set/dungeon
