#displays the actionbar
#@s - primary player
#called by origami-games:artefact/core/player/tick

execute store result score @s health_bar run data get entity @s Health

execute unless score cooldown shield matches 1.. unless score actionbar_cooldown spells matches 1.. if score cooldown spells matches 1.. run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},{"text":"      ","color":"reset"},{"translate":"text.artefact.actionbar.spells.recharging","color":"yellow"},{"text":"      ","color":"reset"},{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]
execute unless score cooldown shield matches 1.. unless score actionbar_cooldown spells matches 1.. if score cooldown spells matches 0 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},{"text":"                                   ","color":"reset"},{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]
execute if score cooldown shield matches 1.. unless score actionbar_cooldown spells matches 1.. unless score cooldown spells matches 1.. run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},{"text":"      ","color":"reset"},{"translate":"text.artefact.actionbar.shield.recharging","color":"dark_purple"},{"text":"      ","color":"reset"},{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

execute if score actionbar_cooldown spells matches 1.. run function origami-games:artefact/api/spells/click_status_actionbar
