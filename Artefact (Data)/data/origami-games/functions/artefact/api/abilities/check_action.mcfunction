#checks ability activation
#@s - primary player
#called by origami-games:artefact/api/action_detection/right_click

#check ability used
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{is_hotbar_item:1b}}}}] run function origami-games:artefact/api/abilities/check_ability/run_checks
#error noise if no activation
execute if entity @s[tag=!ability.used,nbt={SelectedItem:{tag:{artefact:{is_hotbar_item:1b}}}}] run function origami-games:artefact/api/abilities/check_ability/failed_use
