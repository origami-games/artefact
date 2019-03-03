#spawns an npc
#@s - varies
#called arbitrarily

#kill old entities
tp @e[type=minecraft:villager,tag=npc.player.toffeemax.pilot] 0 -512 0
tp @e[type=minecraft:armor_stand,tag=npc.player.toffeemax] 0 -512 0
kill @e[type=minecraft:villager,tag=npc.player.toffeemax.pilot]
kill @e[type=minecraft:armor_stand,tag=npc.player.toffeemax]
#summon new entities
summon minecraft:villager ~ ~ ~ {CustomName:'"ToffeeMax"',Tags:["npc.pilot","npc.invulnerable","npc.player.toffeemax.pilot"],ActiveEffects:[{Id:14b,Duration:999999,Amplifier:0b,ShowParticles:0b}],Offers:{Recipes:[{maxUses:32767,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:command_block",Count:1b}}]}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'"ToffeeMax"',Tags:["npc","npc.player.toffeemax"],ArmorItems:[{},{},{},{id:"minecraft:glass_pane",Count:1b,tag:{CustomModelData:3}}],CustomNameVisible:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
