#cooldown executions
#@s - primary player
#called by origami-games:artefact/core/player/tick

#continuous functionality
execute if score last_used spells = tornado spell_id run function origami-games:artefact/api/spells/continuous/tornado
