#runs shield countdown/activation check
#@s - primary player
#called by artefact-api:shield/check_sneak

bossbar set artefact-api:shield/timer players @s
scoreboard players add timer shield 1

execute if score timer shield matches 0..19 run bossbar set artefact-api:shield/timer value 0
execute if score timer shield matches 20..39 run bossbar set artefact-api:shield/timer value 1
execute if score timer shield matches 40..59 run bossbar set artefact-api:shield/timer value 2
execute if score timer shield matches 60.. run function artefact-api:shield/activate
