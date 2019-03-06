#damages mobs
#@s - console at @e[type=minecraft:falling_block,tag=spell_visual.fire_explosion]
#called by artefact-api:spells/entity_checks

effect give @e[type=!#artefact-api:undead,type=!#artefact-api:spells/action/inferno/no_target,tag=mob,distance=..4] minecraft:instant_damage 1 0 true
effect give @e[type=#artefact-api:undead,type=!#artefact-api:spells/action/inferno/no_target,tag=mob,distance=..4] minecraft:instant_health 1 0 true

execute as @e[type=!#artefact-api:spells/action/inferno/no_target,tag=mob,distance=..4] run data merge entity @s {Fire:100s}
