#runs look commands for npcs
#@s - 'looking' npcs
#called by artefact-core:tick

tp @s ~ ~ ~ facing entity @p[tag=primary,dx=10,dy=2,dz=10] feet
tp @s ~ ~ ~ facing entity @p[tag=primary,dx=-10,dy=2,dz=-10] feet
