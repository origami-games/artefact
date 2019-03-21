#per-tier ability checks
#@s - primary player
#called by artefact-api:abilities/check_ability/run_checks

#indomitable stomp
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"indomitable_stomp"}}}}] run function artefact-api:abilities/indomitable_stomp/activate
