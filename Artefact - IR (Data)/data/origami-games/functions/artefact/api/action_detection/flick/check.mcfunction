#checks for flick
#@s - primary player
#called by origami-games:artefact/core/player/tick

#get difference between y rot and previous y rot
scoreboard players operation rot_y.operate flick_math = rot_y flick_math
scoreboard players operation rot_y.operate flick_math -= rot_y.prev flick_math
#ensure that the score is positive
execute if score rot_y.operate flick_math matches ..-1 run scoreboard players operation rot_y.operate flick_math *= negative_constant flick_math
#check if difference surpasses the threshold
execute if score rot_y flick_math matches ..-40 if score rot_y.operate flick_math >= threshold flick_math run function origami-games:artefact/api/action_detection/flick/execute
