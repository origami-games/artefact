#activates ability
#@s - primary player
#called by origami-games:artefact/api/abilities/run_checks

#clear effects
effect clear @s minecraft:jump_boost
#remove tag
tag @s remove ability.snake_step.land
