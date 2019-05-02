#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/cooldown/rage max run scoreboard players get rage.start ability_cooldown
execute store result bossbar origami-games:artefact/api/abilities/cooldown/rage value run scoreboard players get rage ability_cooldown
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/cooldown/rage visible true
