#creates cooldown bossbars
#@s - console
#called by origami-games:artefact/core/load

bossbar add origami-games:artefact/api/abilities/cooldown/rage ""
bossbar set origami-games:artefact/api/abilities/cooldown/rage name ""
bossbar set origami-games:artefact/api/abilities/cooldown/rage style progress
bossbar set origami-games:artefact/api/abilities/cooldown/rage color green
bossbar set origami-games:artefact/api/abilities/cooldown/rage visible false
execute store result bossbar origami-games:artefact/api/abilities/cooldown/rage max run scoreboard players get rage.start ability_cooldown

bossbar add origami-games:artefact/api/abilities/cooldown/indomitable_stomp ""
bossbar set origami-games:artefact/api/abilities/cooldown/indomitable_stomp name ""
bossbar set origami-games:artefact/api/abilities/cooldown/indomitable_stomp style progress
bossbar set origami-games:artefact/api/abilities/cooldown/indomitable_stomp color blue
bossbar set origami-games:artefact/api/abilities/cooldown/indomitable_stomp visible false
execute store result bossbar origami-games:artefact/api/abilities/cooldown/indomitable_stomp max run scoreboard players get indomitable_stomp.start ability_cooldown

bossbar add origami-games:artefact/api/abilities/cooldown/energy_sucker_punch ""
bossbar set origami-games:artefact/api/abilities/cooldown/energy_sucker_punch name ""
bossbar set origami-games:artefact/api/abilities/cooldown/energy_sucker_punch style progress
bossbar set origami-games:artefact/api/abilities/cooldown/energy_sucker_punch color pink
bossbar set origami-games:artefact/api/abilities/cooldown/energy_sucker_punch visible false
execute store result bossbar origami-games:artefact/api/abilities/cooldown/energy_sucker_punch max run scoreboard players get energy_sucker_punch.start ability_cooldown

bossbar add origami-games:artefact/api/abilities/cooldown/rush ""
bossbar set origami-games:artefact/api/abilities/cooldown/rush name ""
bossbar set origami-games:artefact/api/abilities/cooldown/rush style progress
bossbar set origami-games:artefact/api/abilities/cooldown/rush color yellow
bossbar set origami-games:artefact/api/abilities/cooldown/rush visible false
execute store result bossbar origami-games:artefact/api/abilities/cooldown/rush max run scoreboard players get rush.start ability_cooldown

bossbar add origami-games:artefact/api/abilities/cooldown/shield_bash ""
bossbar set origami-games:artefact/api/abilities/cooldown/shield_bash name ""
bossbar set origami-games:artefact/api/abilities/cooldown/shield_bash style progress
bossbar set origami-games:artefact/api/abilities/cooldown/shield_bash color green
bossbar set origami-games:artefact/api/abilities/cooldown/shield_bash visible false
execute store result bossbar origami-games:artefact/api/abilities/cooldown/shield_bash max run scoreboard players get shield_bash.start ability_cooldown
