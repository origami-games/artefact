#runs ability checks
#@s - primary player
#called by artefact-core:player/tick

#slots
execute unless score slot_1 abilities = slot_1.prev abilities run function origami-games:artefact/api/abilities/selector_slot/refresh_slots
execute unless score slot_2 abilities = slot_2.prev abilities run function origami-games:artefact/api/abilities/selector_slot/refresh_slots
execute unless score slot_3 abilities = slot_3.prev abilities run function origami-games:artefact/api/abilities/selector_slot/refresh_slots
scoreboard players operation slot_1.prev abilities = slot_1 abilities
scoreboard players operation slot_2.prev abilities = slot_2 abilities
scoreboard players operation slot_3.prev abilities = slot_3 abilities

#flick maths
execute unless score rot_y flick_math matches -180..180 store result score rot_y flick_math run data get entity @s Rotation[1]
scoreboard players operation rot_y.prev flick_math = rot_y flick_math
execute store result score rot_y flick_math run data get entity @s Rotation[1]
function origami-games:artefact/api/action_detection/flick/get_data
execute unless score flick.timer abilities matches ..0 run scoreboard players remove flick.timer abilities 1
execute if score flick.timer abilities matches ..0 run scoreboard players set flick.timer abilities 0
execute unless score cooldown abilities matches ..0 run scoreboard players remove cooldown abilities 1
execute if score cooldown abilities matches ..0 run scoreboard players set cooldown abilities 0

#default abilities
## rage
execute if score flick.timer abilities matches 1.. if score level energy matches 20.. if entity @s[gamemode=!creative,scores={damage_dealt=1..}] unless score rage ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/rage/activate
execute if score flick.timer abilities matches 1.. if entity @s[gamemode=creative,scores={damage_dealt=1..}] unless score rage ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/rage/activate
execute if score flick.timer abilities matches 1.. unless score level energy matches 20.. if entity @s[gamemode=!creative,scores={damage_dealt=1..}] unless score rage ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/check_ability/failed_use
execute if score flick.timer abilities matches 1.. if entity @s[gamemode=creative,scores={damage_dealt=1..}] unless score rage ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/check_ability/failed_use

#slotted abilities
# ACTIVATION IN `origami-games:artefact/api/abilities/check_action`
## indomitable stomp
### landing check
execute if entity @s[tag=ability.indomitable_stomp.land,nbt={OnGround:1b}] run function origami-games:artefact/api/abilities/indomitable_stomp/land
## energy sucker punch
### timer
execute unless score esp.timer abilities matches ..0 run scoreboard players remove esp.timer abilities 1
execute if score esp.timer abilities matches ..0 run scoreboard players set esp.timer abilities 0
## rush
### tiers
execute unless entity @s[nbt={ActiveEffects:[{Id:1b}]}] run scoreboard players reset rush.state abilities

#no damage while holding ability slot
effect give @s[gamemode=!spectator,nbt={SelectedItem:{tag:{artefact:{is_hotbar_item:1b}}}}] minecraft:weakness 1 101 true
effect clear @s[gamemode=spectator,nbt={SelectedItem:{tag:{artefact:{is_hotbar_item:1b}}}},nbt={ActiveEffects:[{Id:18b,Amplifier:101b,ShowParticles:0b}]}] minecraft:weakness
effect clear @s[nbt=!{SelectedItem:{tag:{artefact:{is_hotbar_item:1b}}}},nbt={ActiveEffects:[{Id:18b,Amplifier:101b,ShowParticles:0b}]}] minecraft:weakness

#post
## scores
execute if score rage ability_cooldown matches 1.. run scoreboard players set flick.timer abilities 0
execute if score shield_bash ability_cooldown matches 1.. run scoreboard players set flick.timer abilities 0
## boss bars
function origami-games:artefact/api/abilities/cooldown/checks

execute if score flick.timer abilities matches 1.. run function origami-games:artefact/api/abilities/rage/timer_bossbar
execute unless score flick.timer abilities matches 1.. run bossbar set origami-games:artefact/api/abilities/rage/timer visible false

execute if score esp.timer abilities matches 1.. run function origami-games:artefact/api/abilities/energy_sucker_punch/timer_bossbar
execute unless score esp.timer abilities matches 1.. run bossbar set origami-games:artefact/api/abilities/energy_sucker_punch/timer visible false
