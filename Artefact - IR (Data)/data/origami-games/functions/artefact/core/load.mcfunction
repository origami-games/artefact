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

scoreboard objectives add food_bar food "Food Bar Value"
scoreboard objectives add death_check deathCount "Death Check"
scoreboard objectives add use_carrot_stick minecraft.used:minecraft.carrot_on_a_stick "Carrot on a Stick Use Check"
scoreboard objectives add left_click minecraft.custom:minecraft.damage_dealt "Left Click - Damage Dealt"
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt "Damage Dealt Check"
scoreboard objectives add sneak_check minecraft.custom:minecraft.sneak_time "Sneak Check"

scoreboard objectives add energy dummy "Energy"
scoreboard objectives add xp_score xp "XP Score"
scoreboard objectives add xp_score.prev dummy "XP Score (Previous Tick)"

scoreboard objectives add spells dummy "Spell Activation States"
scoreboard objectives add spell_id dummy "Dynamic Spell IDs"

scoreboard objectives add abilities dummy "Abilities"
scoreboard objectives add ability_id dummy "Dynamic Ability IDs"
scoreboard objectives add ability_cooldown dummy "Ability Cooldown Timers"
scoreboard objectives add flick_math dummy "Flick Maths"

scoreboard objectives add stun.base dummy "Stun - Base (Timer)"
scoreboard objectives add stun.rise dummy "Stun - Rise (Timer)"
scoreboard objectives add stun.glowing dummy "Stun - Glowing (Timer)"

scoreboard objectives add custom_potion dummy "Custom Potion Timers"
scoreboard objectives add pot.energy.xp_ra dummy "Energy Potion Experience Orb Random Movement"

scoreboard objectives add wpn.thr_kni dummy "Throwing Knife (General)"
scoreboard objectives add wpn.thr_kni.age dummy "Throwing Knife (Age)"
scoreboard objectives add wpn.thr_kni.x dummy "Throwing Knife (X)"
scoreboard objectives add wpn.thr_kni.y dummy "Throwing Knife (Y)"
scoreboard objectives add wpn.thr_kni.z dummy "Throwing Knife (Z)"
scoreboard objectives add wpn.thr_kni.dx dummy "Throwing Knife (DX)"
scoreboard objectives add wpn.thr_kni.dy dummy "Throwing Knife (DY)"
scoreboard objectives add wpn.thr_kni.dz dummy "Throwing Knife (DZ)"

scoreboard objectives add lifetime dummy "Entity Lifetimes"

scoreboard objectives add shield dummy "Shield Activation States"

scoreboard objectives add clock dummy "Clock"
scoreboard objectives add sel_hotbar_slot dummy "Selected Hotbar Slot"

scoreboard objectives add max_hearts dummy "Max Hearts"
scoreboard objectives add max_health dummy "Max Health"


execute unless score slot_1 abilities matches 1.. run scoreboard players set slot_1 abilities 1
execute unless score slot_2 abilities matches 2.. run scoreboard players set slot_2 abilities 2
execute unless score slot_3 abilities matches 3.. run scoreboard players set slot_3 abilities 3

scoreboard players set snake_step.teleport_count.start abilities 25
scoreboard players set flick.timer.start abilities 50
scoreboard players set esp.timer.start abilities 50
scoreboard players set esp.math.multiplier abilities 2
scoreboard players set esp.math.threshold.multiply abilities 50
scoreboard players set esp.math.threshold.divide abilities 100
scoreboard players set cooldown.start abilities 80
function origami-games:artefact/api/abilities/set_cooldowns

scoreboard players set pushing.start custom_potion 200
scoreboard players set flammability.start custom_potion 200

scoreboard players set xp_orb_count.threshold energy 50
execute unless score level energy matches 0.. run scoreboard players set level energy 0

scoreboard players set threshold stun.base 50
scoreboard players set threshold stun.rise 50
scoreboard players set threshold stun.glowing 50

scoreboard players set threshold flick_math 26
scoreboard players set y_rot.threshold shield 50
scoreboard players set max_mana spells 20
scoreboard players set heart_to_health_multiplier max_health 2
scoreboard players set mana_regen.threshold clock 20
scoreboard players set mana_required shield 2
scoreboard players set negative_constant flick_math -1
execute unless score mana spells matches 0.. run scoreboard players set mana spells 20
execute unless score state spells matches 0.. run scoreboard players set state spells 0
execute unless score cooldown spells matches 0.. run scoreboard players set cooldown spells 0
execute unless score cooldown shield matches 0.. run scoreboard players set cooldown shield 0
execute unless score custom_mob_spawning gamerule matches 0..1 run scoreboard players set custom_mob_spawning gamerule 1

#initialise boss bars
function origami-games:artefact/api/abilities/cooldown/create_bossbars

bossbar add origami-games:artefact/api/shield/timer ""
bossbar set origami-games:artefact/api/shield/timer name {"translate":"bossbar.artefact.shield.timer","color":"light_purple"}
bossbar set origami-games:artefact/api/shield/timer style notched_12
bossbar set origami-games:artefact/api/shield/timer color purple
bossbar set origami-games:artefact/api/shield/timer visible false
bossbar set origami-games:artefact/api/shield/timer max 3

bossbar add origami-games:artefact/api/abilities/rage/timer ""
bossbar set origami-games:artefact/api/abilities/rage/timer name {"translate":"bossbar.artefact.abilities.rage.timer","color":"red"}
bossbar set origami-games:artefact/api/abilities/rage/timer style progress
bossbar set origami-games:artefact/api/abilities/rage/timer color red
bossbar set origami-games:artefact/api/abilities/rage/timer visible false
execute store result bossbar origami-games:artefact/api/abilities/rage/timer max run scoreboard players get flick.timer.start abilities

bossbar add origami-games:artefact/api/abilities/energy_sucker_punch/timer ""
bossbar set origami-games:artefact/api/abilities/energy_sucker_punch/timer name {"translate":"bossbar.artefact.abilities.energy_sucker_punch.timer","color":"red"}
bossbar set origami-games:artefact/api/abilities/energy_sucker_punch/timer style progress
bossbar set origami-games:artefact/api/abilities/energy_sucker_punch/timer color red
bossbar set origami-games:artefact/api/abilities/energy_sucker_punch/timer visible false
execute store result bossbar origami-games:artefact/api/abilities/energy_sucker_punch/timer max run scoreboard players get esp.timer.start abilities

#initialise teams
team add no_collision
team modify no_collision collisionRule never

team add stuns.no_coll
team modify stuns.no_coll collisionRule never
team modify stuns.no_coll color green

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
#setworldspawn 0 0 0

function origami-games:artefact/api/action_detection/create_click
function origami-games:artefact/api/build/check
function origami-games:artefact/api/spells/set_ids
function origami-games:artefact/api/abilities/set_ids

datapack disable vanilla

scoreboard players set loaded general 1
