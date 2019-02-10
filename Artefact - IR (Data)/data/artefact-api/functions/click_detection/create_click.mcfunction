#creates a left-clickable entity
#@s - varies
#called arbitrarily

#kill any old entities
tag @e[type=minecraft:slime,tag=left_click] add remove
#summon entity
summon minecraft:slime 0 0 0 {CustomName:"\"left_click\"",Tags:["left_click"],Team:"no_collision",ActiveEffects:[{Id:14b,Duration:999999,Amplifier:0b,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Size:3,NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,Health:16.0f}
