#runs on pack load
#@s - console
#called by #minecraft:load

#notify of load
tellraw @a {"translate":"text.artefact.core.load"}
#initialise scoreboards
scoreboard objectives add general dummy "General Scores"
scoreboard objectives add offhand_counts dummy "Offhand Counts"
scoreboard objectives add hotbar_counts dummy "Hotbar Counts"
scoreboard objectives add gamerule dummy "Gamerules"

scoreboard objectives add health dummy "Health"
scoreboard objectives add health.prev dummy "Health in Previous Tick"

scoreboard objectives add food_until_mana dummy "Food Bar until Mana Score"
scoreboard objectives add health_bar dummy "Health Bar Value"
scoreboard objectives add flick_math dummy "Flick Maths"

scoreboard objectives add food_bar food "Food Bar Value"
scoreboard objectives add death_check deathCount "Death Check"
scoreboard objectives add use_carrot_stick minecraft.used:minecraft.carrot_on_a_stick "Carrot on a Stick Use Check"
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt "Damage Dealt"

scoreboard objectives add energy dummy "Energy"

scoreboard objectives add spells dummy "Spell Activation State"

scoreboard objectives add clock dummy "Clock"
scoreboard objectives add sel_hotbar_slot dummy "Selected Hotbar Slot"

scoreboard objectives add max_hearts dummy "Max Hearts"
scoreboard objectives add max_health dummy "Max Health"

execute unless score mana spells matches 0.. run scoreboard players set mana spells 20

scoreboard players set negative_constant flick_math -1
scoreboard players set threshold flick_math 50

execute unless score level energy matches 1.. run scoreboard players set level energy 1

scoreboard players set max_mana spells 20
scoreboard players set heart_to_health_multiplier max_health 2

execute unless score state spells matches 0.. run scoreboard players set state spells 0
execute unless score cooldown spells matches 0.. run scoreboard players set cooldown spells 0

execute unless score custom_mob_spawning gamerule matches 0..1 run scoreboard players set custom_mob_spawning gamerule 1

#initialise teams
team add no_collision

team modify no_collision collisionRule never

#gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule disableElytraMovementCheck true
gamerule doFireTick false
gamerule doMobSpawning false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule keepInventory true
gamerule mobGriefing false

#required aspects
setworldspawn 0 0 0

function artefact-api:click_detection/create_click
function artefact-api:build/check

scoreboard players set loaded general 1
