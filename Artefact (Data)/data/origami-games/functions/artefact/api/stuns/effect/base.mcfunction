#base stun
#@s - varies
#called arbitrarily

#add tag
tag @s add stun.base

#no AI
data merge entity @s {NoAI:1}
#no collision
team join stuns.no_coll @s
