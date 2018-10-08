tag @s add rand_target
scoreboard players set @s rand 0
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rand_target"]}
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 1
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 2

scoreboard players reset @e[type=minecraft:area_effect_cloud,tag=rand_target] rand
kill @e[type=minecraft:area_effect_cloud,tag=rand_target]
tag @s remove rand_target
