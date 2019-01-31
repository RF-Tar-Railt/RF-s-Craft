execute if block ~ ~ ~ chest{Items:[{Slot:11b}]} run scoreboard players add @s FUtick 1
execute unless block ~ ~ ~ chest{Items:[{Slot:11b}]} run scoreboard players set @s FUtick 0
execute unless block ~ ~ ~ chest{Items:[{Slot:11b}]} run scoreboard players set @s FUsec 0
scoreboard players add @s[scores={FUtick=20..}] FUsec 1
scoreboard players set @s[scores={FUtick=20..}] FUtick 0
execute if entity @s[scores={FUsec=45..}] run function rffu:refrigerator/refrigerator_list
scoreboard players set @s[scores={FUsec=45..}] FUsec 0
scoreboard players set @s[scores={FUsec=45..}] FUtick 0