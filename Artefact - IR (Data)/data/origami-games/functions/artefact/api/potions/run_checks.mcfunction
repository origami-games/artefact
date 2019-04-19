#potion checks
#@s - primary player
#called by origami-games:artefact/core/player/tick

#pushing
execute if score pushing custom_potion matches 1.. run function origami-games:artefact/api/potions/pushing/effects
#flammability
execute if score flammability custom_potion matches 1.. run function origami-games:artefact/api/potions/flammability/effects
