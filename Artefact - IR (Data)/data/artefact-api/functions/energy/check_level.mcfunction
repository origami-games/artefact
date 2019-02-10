#runs if score `levels` isn't the same as `energy` and corrects
#@s - primary player
#called by artefact-api:tick

execute if score level energy < level_bar energy run xp add @s -1 levels

execute if score level energy > level_bar energy run xp add @s 1 levels
