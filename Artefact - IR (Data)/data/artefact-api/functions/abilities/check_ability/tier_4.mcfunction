#per-tier ability checks
#@s - primary player
#called by artefact-api:abilities/check_ability/run_checks

#rush
execute unless score cooldown abilities matches 1.. if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"rush"}}}}] run function artefact-api:abilities/rush/activate
