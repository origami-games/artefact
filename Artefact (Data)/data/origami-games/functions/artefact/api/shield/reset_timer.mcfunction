#resets shield activation timer
#@s - primary player
#called by origami-games:artefact/core/player/tick

scoreboard players set timer shield 0

bossbar set origami-games:artefact/api/shield/timer visible false
bossbar set origami-games:artefact/api/shield/timer value 0
