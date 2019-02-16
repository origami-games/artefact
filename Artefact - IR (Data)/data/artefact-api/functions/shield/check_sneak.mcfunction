#runs sneaking checks
#@s - primary player
#called by artefact-core:player/tick

#get data
execute store result score y_rot shield run data get entity @s Rotation[1]
#reset sneak score
scoreboard players set @s sneak_check 0
#shield countdown/activation
execute if score y_rot shield matches 70..90 run function artefact-api:shield/timer
