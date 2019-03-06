#kills flying fire
#@s - @e[type=minecraft:armor_stand,tag=spell_visual.fire_explosion,nbt={OnGround:1b}]
#called by artefact-api:spells/visual/inferno/kill_fire.pre

setblock ~ ~ ~ minecraft:air
kill @s[type=!minecraft:player]
