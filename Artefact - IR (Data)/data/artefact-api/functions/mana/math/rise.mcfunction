#runs if score `mana` is higher than `food_bar`
#@s - primary player
#called by artefact-api:mana/check_bar

#calculate remaining
scoreboard players operation @s food_until_mana = mana spells
scoreboard players operation @s food_until_mana -= @s food_bar

effect give @s[scores={food_until_mana=1}] minecraft:saturation 1 0 true
effect give @s[scores={food_until_mana=2}] minecraft:saturation 1 1 true
effect give @s[scores={food_until_mana=3}] minecraft:saturation 1 2 true
effect give @s[scores={food_until_mana=4}] minecraft:saturation 1 3 true
effect give @s[scores={food_until_mana=5}] minecraft:saturation 1 4 true
effect give @s[scores={food_until_mana=6}] minecraft:saturation 1 5 true
effect give @s[scores={food_until_mana=7}] minecraft:saturation 1 6 true
effect give @s[scores={food_until_mana=8}] minecraft:saturation 1 7 true
effect give @s[scores={food_until_mana=9}] minecraft:saturation 1 8 true
effect give @s[scores={food_until_mana=10}] minecraft:saturation 1 9 true
effect give @s[scores={food_until_mana=11}] minecraft:saturation 1 10 true
effect give @s[scores={food_until_mana=12}] minecraft:saturation 1 11 true
effect give @s[scores={food_until_mana=13}] minecraft:saturation 1 12 true
effect give @s[scores={food_until_mana=14}] minecraft:saturation 1 13 true
effect give @s[scores={food_until_mana=15}] minecraft:saturation 1 14 true
effect give @s[scores={food_until_mana=16}] minecraft:saturation 1 15 true
effect give @s[scores={food_until_mana=17}] minecraft:saturation 1 16 true
effect give @s[scores={food_until_mana=18}] minecraft:saturation 1 17 true
effect give @s[scores={food_until_mana=19}] minecraft:saturation 1 18 true
effect give @s[scores={food_until_mana=20}] minecraft:saturation 1 19 true
