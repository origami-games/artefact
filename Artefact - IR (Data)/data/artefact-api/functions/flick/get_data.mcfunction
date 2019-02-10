#gets y rotation data for 'flick'
#@s - primary player
#called arbitrarily

#y rot data
execute unless score rot_y flick_math matches -180..180 store result score rot_y flick_math run data get entity @s Rotation[1]
scoreboard players operation rot_y.prev flick_math = rot_y flick_math
execute store result score rot_y flick_math run data get entity @s Rotation[1]
