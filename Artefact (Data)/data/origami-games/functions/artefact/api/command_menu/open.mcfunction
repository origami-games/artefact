#displays the command menu in chat

function origami-games:artefact/api/command_menu/clear_chat

tellraw @s {"text":"Command Menu","underlined":true,"bold":true,"color":"gold"}
tellraw @s ""
tellraw @s {"text":"- Items","color":"gold","clickEvent":{"action":"run_command","value":"/function origami-games:artefact/api/command_menu/items"}}
tellraw @s {"text":"- Entities","color":"gold","clickEvent":{"action":"run_command","value":"/function origami-games:artefact/api/command_menu/entities"}}
