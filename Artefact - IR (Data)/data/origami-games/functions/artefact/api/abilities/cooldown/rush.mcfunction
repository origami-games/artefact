#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/cooldown/rush max run scoreboard players get rush.start ability_cooldown
execute store result bossbar origami-games:artefact/api/abilities/cooldown/rush value run scoreboard players get rush ability_cooldown
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/cooldown/rush visible true
