#runs every tick on the primary player
#@s - primary player
#called by origami-games:artefact/core/tick

#pre
## general
gamemode adventure @s[gamemode=survival]
scoreboard players set loaded general 2

bossbar set origami-games:artefact/api/shield/timer players @s
bossbar set origami-games:artefact/api/abilities/rage/timer players @s
bossbar set origami-games:artefact/api/abilities/energy_sucker_punch/timer players @s
## other functions
#function origami-games:artefact/api/check_health_items

#tutorial
execute unless entity @s[tag=tutorial.spells] if data entity @s SelectedItem.tag.artefact.spells run function origami-games:artefact/api/tutorial/spells
execute unless entity @s[tag=tutorial.abilities] if data entity @s SelectedItem.tag.artefact.hotbar_item run function origami-games:artefact/api/tutorial/abilities

#no swing items
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{no_swing:1b}}}}] run effect give @s minecraft:haste 1 39 true
execute unless entity @s[nbt={SelectedItem:{tag:{artefact:{no_swing:1b}}}}] if entity @s[nbt={ActiveEffects:[{Id:3b,Amplifier:39b,ShowParticles:0b}]}] run effect clear @s minecraft:haste

#clear items
clear @s #origami-games:artefact/type/no_pickup{artefact:{no_pickup:1b}}
execute if entity @s[nbt={Inventory:[{tag:{artefact:{item_type:["dust","no_execution"]}}}]}] run function origami-games:artefact/api/items/dust/pickup/check

#check scores
execute unless score @s food_bar matches 0.. run function origami-games:artefact/core/player/no_scores
execute unless score @s max_hearts matches 1.. run function origami-games:artefact/core/player/no_scores
execute if score @s food_bar matches 0.. run tag @s remove no_scores

#clock
scoreboard players add tick_5 clock 1
execute if score tick_5 clock matches 5.. run function origami-games:artefact/core/player/tick/5

#mana
execute if score mana spells matches ..-1 run scoreboard players set mana spells 0
execute if score mana spells matches 21.. run scoreboard players set mana spells 20

execute unless score @s food_bar = mana spells run function origami-games:artefact/api/mana/check_bar

execute if score @s food_bar matches 0.. if score @s food_bar = mana spells run effect clear @s minecraft:hunger
execute if score @s food_bar = mana spells run effect clear @s minecraft:saturation

execute if score mana spells matches 20 if score mana_regen clock matches 1.. run scoreboard players set mana_regen clock 0
execute unless score mana spells = @s food_bar run scoreboard players set mana_regen clock 0
execute if score mana spells matches 0..19 if score mana spells = @s food_bar unless score cooldown spells matches 1.. run scoreboard players add mana_regen clock 1
execute if score mana_regen clock >= mana_regen.threshold clock if score mana spells = @s food_bar run function origami-games:artefact/api/mana/regenerate

#energy
execute if score level energy matches 0..99 unless score @s xp_score = @s xp_score.prev run scoreboard players add level energy 1
scoreboard players operation @s xp_score.prev = @s xp_score
xp set @a 0 points
execute unless score level energy matches 0..100 run scoreboard players set level energy 100

execute store result score level_bar energy run xp query @s levels
execute unless score level_bar energy = level energy run function origami-games:artefact/api/energy/check_level

#left/right click
execute if score cooldown spells matches 1.. run scoreboard players remove cooldown spells 1

execute if score state spells matches 1.. if entity @s[gamemode=!spectator,nbt={SelectedItem:{tag:{artefact:{can_left_click:1b}}}}] run function origami-games:artefact/core/player/holding_item/spells/can_left_click

execute unless entity @s[nbt={SelectedItem:{tag:{artefact:{can_left_click:1b}}}}] run tp @e[type=minecraft:slime,tag=left_click] 0 1 0
scoreboard players set @s left_click 0

#right-click detection
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function origami-games:artefact/core/player/holding_item/carrot_on_a_stick

#shield
execute unless entity @s[scores={sneak_check=1..}] run function origami-games:artefact/api/shield/reset_timer
execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{artefact:{item_type:["magic_shield"]}}}]}] run function origami-games:artefact/api/shield/reset_timer
execute if entity @s[nbt={abilities:{flying:1b}}] run function origami-games:artefact/api/shield/reset_timer
execute unless score cooldown shield matches 0 run scoreboard players remove cooldown shield 1

#sneak detection
execute if entity @s[scores={sneak_check=1..}] run function origami-games:artefact/api/action_detection/sneak

#spells
execute if score state spells matches 1.. run scoreboard players add timeout spells 1
execute if score timeout spells matches 40.. run function origami-games:artefact/api/spells/reset_activation
execute if data entity @s SelectedItem.tag.artefact.spells run tag @s add holding_spell
execute unless data entity @s SelectedItem.tag.artefact.spells if entity @s[tag=holding_spell] run function origami-games:artefact/api/spells/reset_activation

execute if score cooldown spells matches 1.. run function origami-games:artefact/api/spells/cooldown

execute if score cooldown shield matches 1.. run function origami-games:artefact/api/shield/continuous_visuals

#abilities
function origami-games:artefact/api/abilities/run_checks

#disable offhand
function origami-games:artefact/core/player/offhand/run_checks

#abilities
function origami-games:artefact/api/stuns/run_checks
function origami-games:artefact/core/player/hotbar/remove/check

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

#damage dealt
execute if score @s damage_dealt matches 1.. run function origami-games:artefact/api/action_detection/damaged_entity

#actionbar
execute if score actionbar_cooldown spells matches 1.. run scoreboard players remove actionbar_cooldown spells 1

execute unless score actionbar_cooldown spells matches 1.. if score state spells matches 0 if score @s food_bar matches 0.. unless score cooldown spells matches 40.. run function origami-games:artefact/api/actionbar
