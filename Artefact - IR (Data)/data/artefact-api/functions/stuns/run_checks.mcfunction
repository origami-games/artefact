#stun checks
#@s - primary player
#called by artefact-core:player/tick

#rise
scoreboard players add @e[tag=stun.rise] stun.rise 1
execute as @e[tag=stun.rise] if score @s stun.rise >= threshold stun.rise run function artefact-api:stuns/rise/remove_effects
