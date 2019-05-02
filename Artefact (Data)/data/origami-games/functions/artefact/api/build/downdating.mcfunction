#notifies everyone that the pack has downdated and disables the pack
#@s - console
#called by origami-games:artefact/api/build/check if it finds you are downdating

tellraw @a {"translate":"text.artefact.core.downdate","clickEvent":{"action":"open_url","value":"https://github.com/origamistudio/artefact/releases"},"color":"red"}
datapack disable "file/Artefact (Data)"
tellraw @a {"translate":"text.artefact.core.downdate.done","color":"red"}
scoreboard players operation build_number general = build_number.prev general
