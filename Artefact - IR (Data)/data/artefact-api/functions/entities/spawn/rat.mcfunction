#spawns a rat

summon minecraft:silverfish ~ ~ ~ {Silent:1b,DeathTime:19,Health:4.0f,DeathLootTable:"artefact-api:entities/rat",Attributes:[{Name:"generic.maxHealth",Base:4.0d},{Name:"generic.attackDamage",Base:1.0d},{Name:"generic.movementSpeed",Base:0.3d}],CustomName:"[{\"translate\":\"entity.artefact.rat\",\"color\":\"light_purple\"},\" \",{\"translate\":\"text.artefact.level.1\",\"color\":\"gray\"}]",CustomNameVisible:1b,ActiveEffects:[{Id:14b,Amplifier:0b,ShowParticles:0b,Duration:999999}],Tags:["mob","mob_bottom","entity.artefact.rat","level.undefined","sounds"],Passengers:[{id:"minecraft:armor_stand",CustomNameVisible:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2}}],Tags:["mob","mob_top","entity.artefact.rat","level.1"],CustomName:"[{\"translate\":\"entity.artefact.rat\",\"color\":\"light_purple\"},\" \",{\"translate\":\"text.artefact.level.1\",\"color\":\"gray\"}]"}]}

tp @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:written_book"}}] ~ ~ ~ ~ 90