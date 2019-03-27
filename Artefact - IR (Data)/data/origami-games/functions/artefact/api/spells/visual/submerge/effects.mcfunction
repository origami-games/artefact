#spell effects
#@s - @e[type=minecraft:armor_stand,tag=spell_visual.rain]
#called by origami-games:artefact/api/spells/entity_checks

#kill unless in correct block
execute unless block ~ ~ ~ #origami-games:artefact/api/spells/action/submerge/block run kill @s

#damage
execute positioned ~ ~-2 ~ run effect give @e[type=!#origami-games:artefact/api/undead,type=!#origami-games:artefact/api/spells/action/submerge/no_target,tag=mob,distance=..1] minecraft:instant_damage 1 0 true
execute positioned ~ ~-2 ~ run effect give @e[type=#origami-games:artefact/api/undead,type=!#origami-games:artefact/api/spells/action/submerge/no_target,tag=mob,distance=..1] minecraft:instant_health 1 0 true

#audiovisuals
particle minecraft:falling_water ~ ~-.5 ~
particle minecraft:rain ~ ~-2 ~

#lifetime
execute if entity @s[scores={lifetime=100..}] run function origami-games:artefact/api/spells/visual/submerge/kill
