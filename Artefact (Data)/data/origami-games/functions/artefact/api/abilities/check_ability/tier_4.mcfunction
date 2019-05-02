#per-tier ability checks
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/run_checks

#rush
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"rush"}}}}] unless score rush ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/rush/activate
