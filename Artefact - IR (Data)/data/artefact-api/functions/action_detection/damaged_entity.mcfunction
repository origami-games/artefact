#runs when the primary player damages an entity
#@s - primary player
#called by artefact-core:player/tick

#abilities
execute if score esp.timer abilities matches 1.. run function artefact-api:abilities/energy_sucker_punch/activate
execute if score rush.state abilities matches 0.. run function artefact-api:abilities/rush/add_tier

#reset scores
scoreboard players reset @s damage_dealt
