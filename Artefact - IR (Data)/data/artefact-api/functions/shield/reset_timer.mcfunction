#resets shield activation timer
#@s - primary player
#called by artefact-core:player/tick

scoreboard players set timer shield 0

bossbar set artefact-api:shield/timer players none
bossbar set artefact-api:shield/timer value 0