execute as @a at @s as @e[type=armor_stand,tag=battery,distance=..3] at @s if block ~ ~ ~ air run kill @s
execute as @a at @s as @e[tag=Remove,name=Remove,type=ocelot,distance=..3] at @s run execute as @e[tag=battery,name=testpoint,distance=..3] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air
