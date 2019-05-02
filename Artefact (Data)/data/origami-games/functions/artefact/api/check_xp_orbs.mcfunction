#checks xp orb count
#@s - console
#called by origami-games:artefact/core/tick

#count orbs
execute store result score xp_orb_count energy if entity @e[type=minecraft:experience_orb]
#kill if more than 50
execute if score xp_orb_count energy > xp_orb_count.threshold energy run kill @e[type=minecraft:experience_orb,limit=1]
