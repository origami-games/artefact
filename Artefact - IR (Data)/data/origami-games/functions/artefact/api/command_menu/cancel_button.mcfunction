#adds the cancel button to the command menu in chat

tellraw @s ""
tellraw @s {"text":"[Cancel]","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/function origami-games:artefact/api/command_menu/open"},"hoverEvent":{"action":"show_text","value":"Back to home"}}
