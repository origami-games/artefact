#per-tier ability checks
#@s - primary player
#called by artefact-api:abilities/check_ability/run_checks

#energy sucker punch
execute unless score esp.timer abilities matches 1.. unless score flick.timer abilities matches 1.. unless score cooldown abilities matches 1.. if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"energy_sucker_punch"}}}}] run function artefact-api:abilities/energy_sucker_punch/start_timer
