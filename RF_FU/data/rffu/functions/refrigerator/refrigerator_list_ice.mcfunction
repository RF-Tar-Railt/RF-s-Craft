scoreboard objectives add icing dummy
#1
execute as @a at @s run execute as @e[tag=ice,distance=..3] at @s run scoreboard players set @s[nbt={Items:[{id:"minecraft:water_bucket",Count:1b,Slot:1b}]}] icing 1
execute as @a at @s run execute as @e[tag=ice,distance=..3] at @s run scoreboard players set @s[nbt={Items:[{id:"minecraft:water_bucket",Count:1b,Slot:2b}]}] icing 1
execute as @a at @s run execute as @e[tag=ice,distance=..3] at @s run scoreboard players set @s[nbt={Items:[{id:"minecraft:water_bucket",Count:1b,Slot:3b}]}] icing 1
#2
execute as @a at @s run execute as @e[tag=ice,distance=..3] at @s run scoreboard players set @s[nbt={Items:[{id:"minecraft:water_bucket",Count:1b,Slot:1b},{id:"minecraft:water_bucket",Count:1b,Slot:2b}]}] icing 2
execute as @a at @s run execute as @e[tag=ice,distance=..3] at @s run scoreboard players set @s[nbt={Items:[{id:"minecraft:water_bucket",Count:1b,Slot:1b},{id:"minecraft:water_bucket",Count:1b,Slot:3b}]}] icing 2
execute as @a at @s run execute as @e[tag=ice,distance=..3] at @s run scoreboard players set @s[nbt={Items:[{id:"minecraft:water_bucket",Count:1b,Slot:2b},{id:"minecraft:water_bucket",Count:1b,Slot:3b}]}] icing 2
#3
execute as @a at @s run execute as @e[tag=ice,distance=..3] at @s run scoreboard players set @s[nbt={Items:[{id:"minecraft:water_bucket",Count:1b,Slot:1b},{id:"minecraft:water_bucket",Count:1b,Slot:2b},{id:"minecraft:water_bucket",Count:1b,Slot:3b}]}] icing 3
