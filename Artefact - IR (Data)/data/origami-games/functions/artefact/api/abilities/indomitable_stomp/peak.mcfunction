#subsequent ability effect
#@s - console
#called by origami-games:artefact/api/abilities/indomitable_stomp/activate

#clear levitation
effect clear @p[tag=primary] minecraft:levitation
effect give @p[tag=primary] minecraft:resistance 999999 255 true

#schedule next function
schedule function origami-games:artefact/api/abilities/indomitable_stomp/pull_down 8t

#landing
tag @p[tag=primary] add ability.indomitable_stomp.land
