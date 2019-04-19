#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/cooldown/pin max run scoreboard players get pin.start ability_cooldown
execute store result bossbar origami-games:artefact/api/abilities/cooldown/pin value run scoreboard players get pin ability_cooldown
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/cooldown/pin visible true
