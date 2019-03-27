#cooldown checks
#@s - primary player
#called by origami-games:artefact/api/abilities/run_checks

#set visiblity
bossbar set origami-games:artefact/api/abilities/cooldown/rage players @s
bossbar set origami-games:artefact/api/abilities/cooldown/indomitable_stomp players @s
bossbar set origami-games:artefact/api/abilities/cooldown/energy_sucker_punch players @s
bossbar set origami-games:artefact/api/abilities/cooldown/rush players @s
bossbar set origami-games:artefact/api/abilities/cooldown/shield_bash players @s

#check visibility
execute if score rage ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/cooldown/rage
execute unless score rage ability_cooldown matches 1.. run bossbar set origami-games:artefact/api/abilities/cooldown/rage visible false

execute if score indomitable_stomp ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/cooldown/indomitable_stomp
execute unless score indomitable_stomp ability_cooldown matches 1.. run bossbar set origami-games:artefact/api/abilities/cooldown/indomitable_stomp visible false

execute if score energy_sucker_punch ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/cooldown/energy_sucker_punch
execute unless score energy_sucker_punch ability_cooldown matches 1.. run bossbar set origami-games:artefact/api/abilities/cooldown/energy_sucker_punch visible false

execute if score rush ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/cooldown/rush
execute unless score rush ability_cooldown matches 1.. run bossbar set origami-games:artefact/api/abilities/cooldown/rush visible false

execute if score shield_bash ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/cooldown/shield_bash
execute unless score shield_bash ability_cooldown matches 1.. run bossbar set origami-games:artefact/api/abilities/cooldown/shield_bash visible false
