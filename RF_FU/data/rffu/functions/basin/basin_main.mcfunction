execute as @a at @s as @e[type=armor_stand,tag=basin,distance=..4] at @s run execute if block ~ ~ ~ air run kill @s
execute as @a at @s run execute as @e[tag=Remove,name=Remove,type=ocelot,distance=..4] at @s run execute as @e[tag=basin,name=testpoint,distance=..3] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute as @a[scores={click_basin=1}] at @s run execute at @e[tag=bs,distance=..5] run particle rain ~0.05 ~0.9 ~-0.05 0.05 0.1 0.05 0.005 5 force
execute as @a[scores={click_basin=1}] at @s run execute at @e[tag=bs,distance=..5] run playsound weather.rain block @p ~ ~ ~ 0.25 2
execute as @a[scores={click_basin=2}] at @s run stopsound @p block weather.rain
execute as @a[scores={click_basin=2}] at @s run scoreboard players set @s click_basin 0
