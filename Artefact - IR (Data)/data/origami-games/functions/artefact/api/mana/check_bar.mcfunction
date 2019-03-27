#runs if score `mana` isn't the same as `food_bar` and corrects
#@s - primary player
#called by origami-games:artefact/api/tick

execute if score mana spells < @s food_bar run effect give @s minecraft:hunger 999999 255 true

execute if score mana spells > @s food_bar run function origami-games:artefact/api/mana/math/rise
