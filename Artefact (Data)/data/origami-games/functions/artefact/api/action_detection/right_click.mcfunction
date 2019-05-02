#runs if a player right-clicks
#@s - primary player
#called by origami-games:artefact/core/player/holding_item/carrot_on_a_stick

#treasure bags
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{treasure_bag:{}}}}}] run function origami-games:artefact/api/items/treasure_bags/use/check

#spells
execute if entity @s[gamemode=!spectator,nbt={SelectedItem:{tag:{artefact:{can_right_click:1b}}}}] run function origami-games:artefact/core/player/holding_item/spells/can_right_click

#items
execute if entity @s[gamemode=!spectator,nbt={SelectedItem:{tag:{artefact:{item:"throwing_knife"}}}}] run function origami-games:artefact/api/items/weapons/melee/throwing_knife/throw

#abilities
function origami-games:artefact/api/abilities/check_action

tag @s remove ability.used

#spells
scoreboard players set @s use_carrot_stick 0
