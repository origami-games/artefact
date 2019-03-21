#stun
#@s - varies
#called arbitrarily

#teleport entities
execute as @e[type=!#artefact-api:stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=10,dy=2] at @s run function artefact-api:stuns/rise/execute_entities
execute as @e[type=!#artefact-api:stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=-10,dy=2] at @s run function artefact-api:stuns/rise/execute_entities
execute as @e[type=!#artefact-api:stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=-10,dz=10,dy=2] at @s run function artefact-api:stuns/rise/execute_entities
execute as @e[type=!#artefact-api:stuns/rise/no_target,tag=!artefact-api.stuns.no_target,dx=10,dz=-10,dy=2] at @s run function artefact-api:stuns/rise/execute_entities
