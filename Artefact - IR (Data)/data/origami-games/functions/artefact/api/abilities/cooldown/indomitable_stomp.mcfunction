#checks values for cooldown bossbar
#@s - primary player
#called by artefact-api:abilities/run_checks

#store scores
execute store result bossbar origami-games:artefact/api/abilities/cooldown/indomitable_stomp max run scoreboard players get indomitable_stomp.start ability_cooldown
execute store result bossbar origami-games:artefact/api/abilities/cooldown/indomitable_stomp value run scoreboard players get indomitable_stomp ability_cooldown
#boss bar visibility
bossbar set origami-games:artefact/api/abilities/cooldown/indomitable_stomp visible true
