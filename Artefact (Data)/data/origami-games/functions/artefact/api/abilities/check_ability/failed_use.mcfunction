#runs if a player right-clicks an ability slot, but an ability isn't activated
#@s - primary player
#called by << ability activation functions >>

#audiovisuals
playsound minecraft:block.redstone_torch.burnout player @s ~ ~ ~ 100 2 1
#text
execute if score flick.timer abilities matches 1.. if score flick.timer abilities matches 1.. unless score level energy matches 20.. if entity @s[gamemode=!creative,scores={damage_dealt=1..}] unless score cooldown abilities matches 1.. run tellraw @s {"translate":"text.artefact.abilities.not_enough_energy.tier_1","color":"red"}

execute if score level energy matches ..29 if entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{artefact:{hotbar_item:1b}}}}] run tellraw @s {"translate":"text.artefact.abilities.not_enough_energy.tier_2","color":"red"}
execute if score level energy matches ..39 if entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{artefact:{hotbar_item:2b}}}}] run tellraw @s {"translate":"text.artefact.abilities.not_enough_energy.tier_3","color":"red"}
execute if score level energy matches ..49 if entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{artefact:{hotbar_item:3b}}}}] run tellraw @s {"translate":"text.artefact.abilities.not_enough_energy.tier_4","color":"red"}
