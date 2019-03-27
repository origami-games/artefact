#per-tier ability checks
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/run_checks

#indomitable stomp
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"indomitable_stomp"}}}}] unless score indomitable_stomp ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/indomitable_stomp/activate
