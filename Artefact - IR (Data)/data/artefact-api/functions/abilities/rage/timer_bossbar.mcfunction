#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar artefact-api:abilities/rage/timer max run scoreboard players get flick.timer.start abilities
execute store result bossbar artefact-api:abilities/rage/timer value run scoreboard players get flick.timer abilities
#boss bar visibility
bossbar set artefact-api:abilities/rage/timer visible true
