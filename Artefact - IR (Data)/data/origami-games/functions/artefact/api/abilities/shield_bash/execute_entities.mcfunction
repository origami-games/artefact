#subsequent ability effect
#@s - primary player
#called by origami-games:artefact/api/abilities/shield_bash/activate

#damage
effect give @s[type=!#origami-games:artefact/api/undead] minecraft:instant_damage 1 0 true
effect give @s[type=#origami-games:artefact/api/undead] minecraft:instant_health 1 0 true

#knockback
execute if block ^ ^ ^-7 #minecraft:air run tp @s ^ ^ ^-7
