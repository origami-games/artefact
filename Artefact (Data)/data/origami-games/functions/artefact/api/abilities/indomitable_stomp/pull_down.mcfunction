#subsequent ability effect
#@s - console
#called by origami-games:artefact/api/abilities/indomitable_stomp/activate

#give levitation
effect give @p[tag=primary,nbt=!{OnGround:1b}] minecraft:levitation 999999 130 true
#negate fall damage
effect give @p[tag=primary,nbt=!{OnGround:1b}] minecraft:jump_boost 999999 255 true
