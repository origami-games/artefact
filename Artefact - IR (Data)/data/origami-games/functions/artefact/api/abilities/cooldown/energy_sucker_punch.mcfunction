#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/cooldown/energy_sucker_punch max run scoreboard players get energy_sucker_punch.start ability_cooldown
execute store result bossbar origami-games:artefact/api/abilities/cooldown/energy_sucker_punch value run scoreboard players get energy_sucker_punch ability_cooldown
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/cooldown/energy_sucker_punch visible true
