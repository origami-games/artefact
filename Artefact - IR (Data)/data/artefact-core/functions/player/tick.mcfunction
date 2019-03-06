#runs every tick on the primary player
#@s - primary player
#called by artefact-core:tick

#initial
gamemode adventure @s[gamemode=survival]
scoreboard players set loaded general 2

#tutorial
execute unless entity @s[tag=tutorial.spells] if data entity @s SelectedItem.tag.artefact.spells run function artefact-api:tutorial/spells

#clear items
clear @s #artefact-type:no_pickup{artefact:{no_pickup:1b}}
execute if entity @s[nbt={Inventory:[{tag:{artefact:{item_type:["dust","no_execution"]}}}]}] run function artefact-api:items/dust/pickup/check

#check scores
execute unless score @s food_bar matches 0.. run function artefact-core:player/no_scores
execute unless score @s max_hearts matches 1.. run function artefact-core:player/no_scores
execute if score @s food_bar matches 0.. run tag @s remove no_scores

#clock
scoreboard players add tick_5 clock 1
execute if score tick_5 clock matches 5.. run function artefact-core:player/tick/5

#mana
execute if score mana spells matches ..-1 run scoreboard players set mana spells 0
execute if score mana spells matches 21.. run scoreboard players set mana spells 20

execute unless score @s food_bar = mana spells run function artefact-api:mana/check_bar

execute if score @s food_bar matches 0.. if score @s food_bar = mana spells run effect clear @s minecraft:hunger
execute if score @s food_bar = mana spells run effect clear @s minecraft:saturation

execute if score mana spells matches 20 if score mana_regen clock matches 1.. run scoreboard players set mana_regen clock 0
execute unless score mana spells = @s food_bar run scoreboard players set mana_regen clock 0
execute if score mana spells matches 0..19 if score mana spells = @s food_bar unless score cooldown spells matches 1.. run scoreboard players add mana_regen clock 1
execute if score mana_regen clock >= mana_regen.threshold clock if score mana spells = @s food_bar run function artefact-api:mana/regenerate

#energy
xp set @a 0 points
execute store result score level_bar energy run xp query @s levels
execute unless score level_bar energy = level energy run function artefact-api:energy/check_level

#left/right click
execute if score cooldown spells matches 1.. run scoreboard players remove cooldown spells 1

execute if score state spells matches 1.. if entity @s[gamemode=!spectator,nbt={SelectedItem:{tag:{artefact:{can_left_click:1b}}}}] run function artefact-core:player/holding_item/can_left_click
execute if entity @s[gamemode=!spectator,nbt={SelectedItem:{tag:{artefact:{can_right_click:1b}}}}] run function artefact-core:player/holding_item/can_right_click

execute unless entity @s[nbt={SelectedItem:{tag:{artefact:{can_left_click:1b}}}}] run tp @e[type=minecraft:slime,tag=left_click] 0 0 0

stopsound @s player minecraft:entity.player.attack.strong
stopsound @s player minecraft:entity.player.attack.knockback
stopsound @s player minecraft:entity.player.attack.weak

scoreboard players set @s damage_dealt 0

#right-click detection
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function artefact-core:player/holding_item/carrot_on_a_stick

#spells
execute if score state spells matches 1.. run scoreboard players add timeout spells 1
execute if score timeout spells matches 40.. run function artefact-api:spells/reset_activation
execute if data entity @s SelectedItem.tag.artefact.spells run tag @s add holding_spell
execute unless data entity @s SelectedItem.tag.artefact.spells if entity @s[tag=holding_spell] run function artefact-api:spells/reset_activation

execute if score cooldown spells matches 1.. run function artefact-api:spells/cooldown

#shields
execute unless entity @s[scores={sneak_check=1..}] run function artefact-api:shield/reset_timer
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function artefact-api:shield/reset_timer
execute unless score cooldown shield matches 0 run scoreboard players remove cooldown shield 1
execute if score cooldown shield matches 1.. run scoreboard players set @s sneak_check 0
execute if entity @s[scores={sneak_check=1..},nbt=!{Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] unless score cooldown shield matches 1.. run scoreboard players set @s sneak_check 0
execute if entity @s[scores={sneak_check=1..},nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] unless score cooldown shield matches 1.. run function artefact-api:shield/check_sneak

execute if score cooldown shield matches 1.. run function artefact-api:shield/continuous_visuals

#camera flick
#disabled - function artefact-api:flick/check

#disable offhand
function artefact-core:player/offhand/run_checks

#abilities hotbar slots
function artefact-core:player/hotbar/remove/check

#max health score
scoreboard players operation @s max_health = @s max_hearts
scoreboard players operation @s max_health *= heart_to_health_multiplier max_health

execute if score @s health_bar > @s max_health run effect give @s minecraft:instant_health

#switching slot noise
scoreboard players operation previous sel_hotbar_slot = @s sel_hotbar_slot
execute store result score @s sel_hotbar_slot run data get entity @s SelectedItemSlot
execute unless score previous sel_hotbar_slot = @s sel_hotbar_slot run playsound minecraft:entity.arrow.shoot player @s ~ ~ ~ .3 2 1

#indicate to non-primary players who the primary player is
particle minecraft:firework ~ ~2.25 ~ 0 0 0 0 1 force @a[tag=!primary]

#actionbar
execute if score actionbar_cooldown spells matches 1.. run scoreboard players remove actionbar_cooldown spells 1

execute unless score actionbar_cooldown spells matches 1.. if score state spells matches 0 if score @s food_bar matches 0.. unless score cooldown spells matches 40.. run function artefact-api:actionbar
