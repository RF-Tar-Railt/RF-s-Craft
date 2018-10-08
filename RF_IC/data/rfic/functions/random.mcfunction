tag @s add rand_target
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rand_target"]}
scoreboard players set @e[tag=rand_target] rand 0
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 1
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 2
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 4
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 8
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 16
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 32
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 64
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 128
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 256
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 512
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 1024
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 2048
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 4096
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 8192
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 16384
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 32768
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 65536
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 131072
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 262144
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 524288
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 1048576
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 2097152
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 4194304
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 8388608
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 16777216
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 33554432
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 67108864
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 134217728
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 268435456
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 536870912
scoreboard players add @e[tag=rand_target,sort=random,limit=1] rand 1073741824

scoreboard players operation #random_max rand -= #random_min rand
scoreboard players add #random_max rand 1
scoreboard players operation @s rand %= #random_max rand
scoreboard players operation @s rand += #random_min rand
scoreboard players reset @e[type=minecraft:area_effect_cloud,tag=rand_target] rand
kill @e[type=minecraft:area_effect_cloud,tag=rand_target]
tag @s remove rand_target
