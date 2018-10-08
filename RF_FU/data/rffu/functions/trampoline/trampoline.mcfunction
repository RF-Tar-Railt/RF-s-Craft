execute as @a at @s as @e[type=item,distance=..6,nbt={Item:{tag:{id:"rf:remove"}}}] at @s as @e[tag=Tram,name=testpoint,distance=..3] at @s run fill ~3.5 ~3.5 ~3.5 ~-3.5 ~-3.5 ~-3.5 minecraft:air replace minecraft:barrier
execute as @a at @s as @e[type=armor_stand,tag=Tram,distance=..6] at @s if block ~ ~ ~ air run kill @s

#蹦床原理
execute as @e[tag=Tram,name=testpoint] at @s run execute as @e[distance=..2] at @s if block ~ ~-1 ~ minecraft:barrier run playsound block.slime.fall block @a ~ ~ ~ 0.1 1
execute as @e[tag=Tram,name=testpoint] at @s run execute as @e[distance=..2] at @s if block ~ ~-1 ~ minecraft:barrier run effect give @s jump_boost 15 255
execute as @e[tag=Tram,name=testpoint] at @s run execute as @e[distance=..2] at @s if block ~ ~-1 ~ minecraft:barrier run effect give @s levitation 1 48
execute as @e[tag=Tram,name=testpoint] at @s run execute as @e[distance=..8] at @s unless block ~ ~-1 ~ minecraft:barrier run effect clear @s levitation
