#per-tier ability checks
#@s - primary player
#called by origami-games:artefact/api/abilities/check_ability/run_checks

#indomitable stomp
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"indomitable_stomp"}}}}] unless score indomitable_stomp ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/indomitable_stomp/activate

#pin
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"pin"}}}}] unless score pin ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/pin/activate

#snake step
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"snake_step"}}}}] unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] unless score snake_step ability_cooldown matches 1.. run function origami-games:artefact/api/abilities/snake_step/activate
execute if entity @s[nbt={SelectedItem:{tag:{artefact:{ability:"snake_step"}}}}] if entity @s[nbt={ActiveEffects:[{Id:14b}]}] unless score snake_step ability_cooldown matches 1.. run tellraw @s [{"translate":"text.artefact.abilities.has_effect","color":"red"},{"text":": ","color":"red"},{"translate":"effect.minecraft.invisibility","color":"dark_red"}]
