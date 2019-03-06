#spell effects
#@s - @e[type=minecraft:armor_stand,tag=spell_visual.rain]
#called by artefact-api:spells/entity_checks

#damage
execute positioned ~ ~-2 ~ run effect give @e[type=!#artefact-api:undead,type=!#artefact-api:spells/action/submerge/no_target,tag=mob,distance=..1] minecraft:instant_damage 1 0 true
execute positioned ~ ~-2 ~ run effect give @e[type=#artefact-api:undead,type=!#artefact-api:spells/action/submerge/no_target,tag=mob,distance=..1] minecraft:instant_health 1 0 true

#audiovisuals
particle minecraft:falling_water ~ ~-.5 ~
particle minecraft:rain ~ ~-2 ~

#lifetime
execute if entity @s[scores={lifetime=100..}] run function artefact-api:spells/visual/submerge/kill
