#pre for killing flying fire
#@s - @e[type=minecraft:armor_stand,tag=spell_visual.fire_explosion,nbt={OnGround:1b}]
#called by origami-games:artefact/api/spells/visual/inferno/entity_checks

kill @s[type=!minecraft:player]
summon minecraft:armor_stand ~ ~ ~ {Tags:["spell_visual","spell_visual.spell.inferno","spell_visual.fire_explosion.post","lifetime"],Invisible:1b,Invulnerable:1b,Small:1b}
