#checks ability used
#@s - primary player
#called by origami-games:artefact/api/abilities/check_action

#per-tier ability checks
execute if score level_bar energy matches 30.. if entity @s[gamemode=!creative,nbt={SelectedItemSlot:1}] run function origami-games:artefact/api/abilities/check_ability/tier_2
execute if score level_bar energy matches 40.. if entity @s[gamemode=!creative,nbt={SelectedItemSlot:2}] run function origami-games:artefact/api/abilities/check_ability/tier_3
execute if score level_bar energy matches 50.. if entity @s[gamemode=!creative,nbt={SelectedItemSlot:3}] run function origami-games:artefact/api/abilities/check_ability/tier_4

execute if entity @s[gamemode=creative,nbt={SelectedItemSlot:1}] run function origami-games:artefact/api/abilities/check_ability/tier_2
execute if entity @s[gamemode=creative,nbt={SelectedItemSlot:2}] run function origami-games:artefact/api/abilities/check_ability/tier_3
execute if entity @s[gamemode=creative,nbt={SelectedItemSlot:3}] run function origami-games:artefact/api/abilities/check_ability/tier_4
