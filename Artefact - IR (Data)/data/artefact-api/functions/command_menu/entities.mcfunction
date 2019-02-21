#displays the item command menu in chat

function artefact-api:command_menu/clear_chat

tellraw @s {"text":"Entities","underlined":true,"bold":true,"color":"gold"}
tellraw @s ""
tellraw @s {"text":"- Zombie (Simple)","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:entities/spawn/zombie/simple"},"hoverEvent":{"action":"show_text","value":"artefact-api:entities/zombie/simple"}}
tellraw @s ""
tellraw @s {"text":"- Pixie","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:entities/spawn/pixie"},"hoverEvent":{"action":"show_text","value":"artefact-api:entities/pixie"}}
tellraw @s {"text":"- Rat","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:entities/spawn/rat"},"hoverEvent":{"action":"show_text","value":"artefact-api:entities/rat"}}
tellraw @s {"text":"- Butterfly","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:entities/spawn/butterfly"},"hoverEvent":{"action":"show_text","value":"artefact-api:entities/butterfly"}}

function artefact-api:command_menu/cancel_button
