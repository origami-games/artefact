#checks values for cooldown bossbar
#@s - primary player
#called by origami-games:artefact/api/abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/rage/timer max run scoreboard players get flick.timer.start abilities
execute store result bossbar origami-games:artefact/api/abilities/rage/timer value run scoreboard players get flick.timer abilities
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/rage/timer visible true
