execute as @a at @s as @e[type=armor_stand,tag=geo_e,distance=..4] at @s run execute if block ~ ~ ~ air run kill @s
execute as @a at @s as @e[type=item,distance=..3,nbt={Item:{tag:{id:"rf:remove"}}}] at @s run execute as @e[tag=geo_e,name=testpoint,distance=..3] at @s run setblock ~ ~ ~ minecraft:air

execute as @e[tag=geo_e] at @s if block ~ ~-1 ~ lava if block ~1 ~-1 ~ lava if block ~-1 ~-1 ~ lava if block ~ ~-1 ~1 lava if block ~ ~-1 ~-1 lava if block ~1 ~-1 ~1 lava if block ~-1 ~-1 ~-1 lava if block ~1 ~-1 ~-1 lava if block ~-1 ~-1 ~1 lava run tag @s add lava
execute as @e[tag=geo_e] at @s unless block ~ ~-1 ~ lava run tag @s remove lava
