#cooldown executions
#@s - primary player
#called by artefact-core:player/tick

#continuous functionality
execute if score last_used spells = tornado spell_id run function artefact-api:spells/continuous/tornado
