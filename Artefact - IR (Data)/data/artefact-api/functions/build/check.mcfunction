#checks the version and compares it to see if there is an update or a downdate
#@s - console
#called by artefact-core:load

#store build number
scoreboard players operation build_number.prev general = build_number general
#update current build number ***MODIFY BUILD COUNT HERE***
scoreboard players set build_number general 6
#if updating, send update message
execute if score build_number.prev general < build_number general run tellraw @a {"translate":"text.artefact.core.update","clickEvent":{"action":"open_url","value":"https://github.com/ArtefactDev/Imperius-Return/releases"},"color":"aqua"}
#if downdating, send warning message
execute if score build_number.prev general > build_number general run function artefact-api:build/downdating
#remove fake players
scoreboard players reset build_number.prev general
#check server version
function artefact-api:build/server_version_check

#give feedback if ran by player and a build change has occured
execute if entity @s[type=minecraft:player] run tellraw @a [{"translate":"text.artefact.core.update.build_number","color":"gray"},{"text":": ","color":"gray"},{"score":{"name":"build_number","objective":"general"}},{"text":", ","color":"gray"},{"translate":"text.artefact.core.update.server_version_number","color":"gray"},{"text":": 1.","color":"gray"},{"score":{"name":"server_version","objective":"general"}}]
