#蹦床原理
execute as @e[tag=Tram,name=testpoint] at @s run execute as @e[distance=..2] at @s if block ~ ~-1 ~ minecraft:barrier run playsound block.slime.fall block @a ~ ~ ~ 0.1 1
execute as @e[tag=Tram,name=testpoint] at @s run execute as @e[distance=..2] at @s if block ~ ~-1 ~ minecraft:barrier run effect give @s jump_boost 15 255
execute as @e[tag=Tram,name=testpoint] at @s run execute as @e[distance=..2] at @s if block ~ ~-1 ~ minecraft:barrier run effect give @s levitation 1 24

