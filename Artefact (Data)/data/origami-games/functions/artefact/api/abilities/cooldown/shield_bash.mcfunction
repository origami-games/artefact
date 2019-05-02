#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/cooldown/shield_bash max run scoreboard players get shield_bash.start ability_cooldown
execute store result bossbar origami-games:artefact/api/abilities/cooldown/shield_bash value run scoreboard players get shield_bash ability_cooldown
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/cooldown/shield_bash visible true
