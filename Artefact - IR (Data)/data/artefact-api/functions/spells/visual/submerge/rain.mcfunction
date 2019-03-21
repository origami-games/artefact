#spell visual
#@s - primary player
#called by artefact-api:spells/action/submerge

summon minecraft:area_effect_cloud ~ ~2 ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~1 ~2 ~1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~-1 ~2 ~-1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~-1 ~2 ~1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~1 ~2 ~-1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~1 ~2 ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~-1 ~2 ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~ ~2 ~1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud ~ ~2 ~-1 {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["spell_visual","spell_visual.spell.submerge","spell_visual.rain","lifetime","lifetime_manual_kill"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}


fill ~1 ~2 ~1 ~-1 ~2 ~-1 minecraft:light_blue_stained_glass replace #minecraft:air
fill ~1 ~2 ~ ~1 ~2 ~ minecraft:packed_ice replace #artefact-api:spells/action/submerge/block
fill ~-1 ~2 ~-1 ~-1 ~2 ~-1 minecraft:packed_ice replace #artefact-api:spells/action/submerge/block
fill ~-1 ~2 ~1 ~-1 ~2 ~1 minecraft:blue_ice replace #artefact-api:spells/action/submerge/block
