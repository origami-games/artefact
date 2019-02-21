#displays the item command menu in chat

function artefact-api:command_menu/clear_chat

tellraw @s {"text":"Items","underlined":true,"bold":true,"color":"gold"}
tellraw @s ""

tellraw @s {"text":"- Discharge/sprint spells test item","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:items/give/spell_test/discharge"}}
tellraw @s ""
tellraw @s {"text":"- Pixie dust [50% chance this will give]","color":"gold","clickEvent":{"action":"run_command","value":"/loot give @s loot artefact-api:entities/pixie"}}

tellraw @s ""
tellraw @s {"text":"- Basic treasure bag","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:items/give/treasure_bag/basic"}}
tellraw @s {"text":"- Epic treasure bag","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:items/give/treasure_bag/epic"}}
tellraw @s {"text":"- Legendary treasure bag","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:items/give/treasure_bag/legendary"}}

tellraw @s ""
tellraw @s {"text":"- Shield","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:items/give/shield/normal"}}
tellraw @s {"text":"- Magic Shield","color":"gold","clickEvent":{"action":"run_command","value":"/function artefact-api:items/give/shield/magic"}}

function artefact-api:command_menu/cancel_button
