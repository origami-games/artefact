#runs every mana regen clock tick on players who do not have full mana
#@s - primary player
#called by artefact-core:player/tick

#functionality
scoreboard players add mana spells 1
scoreboard players set mana_regen regen_clock 0
#audiovisuals
execute unless score mana spells matches 20 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ .3 2 1
execute if score mana spells matches 20 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ .3 2 1

particle minecraft:witch ~ ~ ~ .25 1 .25 .5 25 normal @a
particle minecraft:happy_villager ~ ~ ~ .25 1 .25 1 10 normal @a
