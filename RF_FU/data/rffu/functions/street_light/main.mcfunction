execute as @a at @s as @e[type=armor_stand,tag=SLM,distance=..6] at @s if block ~ ~ ~ air run kill @s
execute as @a at @s as @e[type=armor_stand,tag=SLB,distance=..6] at @s if block ~ ~1 ~ air run kill @s
execute as @a at @s as @e[type=armor_stand,tag=SLT,distance=..6] at @s if block ~ ~-1 ~ air run setblock ~ ~ ~ air
execute as @a at @s as @e[type=armor_stand,tag=SLT,distance=..6] at @s if block ~ ~-1 ~ air run kill @s
execute as @a at @s as @e[type=item,distance=..6,nbt={Item:{tag:{id:"rf:remove"}}}] at @s as @e[tag=street,name=testpoint,distance=..3] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:air