scoreboard objectives add click_basin minecraft.custom:minecraft.talked_to_villager

execute as @a[scores={click_basin=1}] at @s run execute at @e[tag=bs,distance=..5] run particle rain ~0.05 ~0.9 ~-0.05 0.05 0.1 0.05 0.005 5 force
execute as @a[scores={click_basin=1}] at @s run execute at @e[tag=bs,distance=..5] run playsound weather.rain block @p ~ ~ ~ 0.25 2
execute as @a[scores={click_basin=2}] at @s run stopsound @p block weather.rain
execute as @a[scores={click_basin=2}] at @s run scoreboard players set @s click_basin 0
