#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar artefact-api:abilities/cooldown max run scoreboard players get cooldown.start abilities
execute store result bossbar artefact-api:abilities/cooldown value run scoreboard players get cooldown abilities
#boss bar visibility
bossbar set artefact-api:abilities/cooldown visible true
