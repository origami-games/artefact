#notifies everyone that the pack has downdated and disables the pack
#@s - console
#called by artefact-api:build/check if it finds you are downdating

tellraw @a {"translate":"text.artefact.core.downdate","clickEvent":{"action":"open_url","value":"https://github.com/ArtefactDev/Imperius-Return/releases"}}
datapack disable "file/Artefact - IR (Data)"
scoreboard players operation build_number general = build_number.Prev general
