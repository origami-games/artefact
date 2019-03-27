#per-tier ability checks
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/run_checks

#energy sucker punch
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"energy_sucker_punch"}}}}] unless score esp.timer abilities matches 1.. unless score flick.timer abilities matches 1.. unless score energy_sucker_punch ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/energy_sucker_punch/start_timer
