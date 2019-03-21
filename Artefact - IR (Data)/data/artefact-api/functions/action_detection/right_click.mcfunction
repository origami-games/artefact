#runs if a player right-clicks
#@s - primary player
#called by artefact-core:player/holding_item/carrot_on_a_stick

#treasure bags
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{}}}}}] run function artefact-api:items/treasure_bags/use/check

#spells
execute if entity @s[gamemode=!spectator,nbt={SelectedItem:{tag:{artefact:{can_right_click:1b}}}}] run function artefact-core:player/holding_item/spells/can_right_click

#abilities
function artefact-api:abilities/check_action

tag @s remove ability.used

#spells
scoreboard players set @s use_carrot_stick 0
