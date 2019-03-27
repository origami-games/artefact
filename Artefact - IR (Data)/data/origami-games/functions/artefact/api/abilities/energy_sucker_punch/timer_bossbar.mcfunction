#checks values for cooldown bossbar
#@s - primary player
#called by origami-games:artefact/api/abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/energy_sucker_punch/timer max run scoreboard players get esp.timer.start abilities
execute store result bossbar origami-games:artefact/api/abilities/energy_sucker_punch/timer value run scoreboard players get esp.timer abilities
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/energy_sucker_punch/timer visible true
