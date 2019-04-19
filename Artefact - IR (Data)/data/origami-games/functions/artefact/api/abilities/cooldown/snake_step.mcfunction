#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/cooldown/snake_step max run scoreboard players get snake_step.start ability_cooldown
execute store result bossbar origami-games:artefact/api/abilities/cooldown/snake_step value run scoreboard players get snake_step ability_cooldown
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/cooldown/snake_step visible true
