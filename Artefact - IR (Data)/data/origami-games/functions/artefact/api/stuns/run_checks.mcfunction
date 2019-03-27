#stun checks
#@s - primary player
#called by origami-games:artefact/core/player/tick

#base
scoreboard players add @e[tag=stun.base] stun.base 1
execute as @e[tag=stun.base] if score @s stun.base >= threshold stun.base run function origami-games:artefact/api/stuns/effect/base/remove_effects

#rise
scoreboard players add @e[tag=stun.rise] stun.rise 1
execute as @e[tag=stun.rise] if score @s stun.rise >= threshold stun.rise run function origami-games:artefact/api/stuns/effect/rise/remove_effects
