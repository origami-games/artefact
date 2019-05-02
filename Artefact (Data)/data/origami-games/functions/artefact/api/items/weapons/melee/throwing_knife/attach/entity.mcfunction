#attaches throwing knife to block
#@s - @e[type=minecraft:armor_stand,tag=weapon.melee.throwing_knife]
#called by origami-games:artefact/api/items/weapons/melee/throwing_knife/checks

#damage
effect give @e[distance=..1,sort=nearest,limit=1,type=!#origami-games:artefact/api/items/weapons/melee/throwing_knife/no_attach,type=!#origami-games:artefact/api/undead] minecraft:instant_damage 1 1 true
effect give @e[distance=..1,sort=nearest,limit=1,type=#origami-games:artefact/api/undead,type=!#origami-games:artefact/api/items/weapons/melee/throwing_knife/no_attach] minecraft:instant_health 1 1 true

#give mob item
replaceitem entity @e[type=!#origami-games:artefact/api/items/weapons/melee/throwing_knife/no_attach,distance=..1,sort=nearest,limit=1] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:'{"translate":"item.artefact.throwing_knife","italic":false}'},artefact:{item:"throwing_knife"},CustomModelData:32,AttributeModifiers:[{Name:"generic.attackDamage",AttributeName:"generic.attackDamage",Amount:4.0d,Operation:0,UUIDMost:4,UUIDLeast:4,Slot:mainhand}]}

#kill entity
kill @s
