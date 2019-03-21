#runs if a player 'flicks'
#@s - primary player
#called by artefact-api:action_detection/flick/check

#functionality
execute unless score cooldown abilities matches 1.. unless score flick.timer abilities matches 1.. unless score esp.timer abilities matches 1.. run function artefact-api:abilities/rage/start_timer
