#spell visual
#@s - primary player
#called by artefact-api:spells/action/submerge

summon minecraft:armor_stand ~ ~2 ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~1 ~2 ~1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~-1 ~2 ~-1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~-1 ~2 ~1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~1 ~2 ~-1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~1 ~2 ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~-1 ~2 ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~ ~2 ~1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}
summon minecraft:armor_stand ~ ~2 ~-1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"]}


fill ~1 ~2 ~1 ~-1 ~2 ~-1 minecraft:ice
setblock ~1 ~2 ~ minecraft:packed_ice
setblock ~-1 ~2 ~-1 minecraft:packed_ice
setblock ~-1 ~2 ~1 minecraft:blue_ice
