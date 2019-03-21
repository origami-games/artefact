#checks ability activation
#@s - primary player
#called by artefact-api:use_carrot_stick

#check ability used
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{is_hotbar_item:1b}}}}] unless score cooldown abilities matches 1.. run function artefact-api:abilities/check_ability/run_checks
#error noise if no activation
execute if entity @s[tag=!ability.used,nbt={SelectedItem:{tag:{artefact:{is_hotbar_item:1b}}}}] run function artefact-api:abilities/check_ability/failed_use
