scoreboard players add @s[tag=shattering,tag=!ShaDone,tag=!NoRI] ShaTick 1

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:coal_ore"}]} run scoreboard players set @s ShaType 1
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:diamond_ore"}]} run scoreboard players set @s ShaType 2
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:emerald_ore"}]} run scoreboard players set @s ShaType 3
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:nether_quartz_ore"}]} run scoreboard players set @s ShaType 4

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:iron_ore"}]} run scoreboard players set @s ShaType 5
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:gold_ore"}]} run scoreboard players set @s ShaType 6

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:lapis_ore"}]} run scoreboard players set @s ShaType 7
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:redstone_ore"}]} run scoreboard players set @s ShaType 8

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:coal"}]} run scoreboard players set @s ShaType 9
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:charcoal"}]} run scoreboard players set @s ShaType 9
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:quartz"}]} run scoreboard players set @s ShaType 10

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:gravel"}]} run scoreboard players set @s ShaType 11
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:flint"}]} run scoreboard players set @s ShaType 12

execute as @s[scores={ShaType=1..12}] if block ~ ~ ~ dropper{Items:[{Slot:6b}]} run tag @s add ShaDone
execute as @s[scores={ShaType=1..12}] if block ~ ~ ~ dropper{Items:[{Slot:7b}]} run tag @s add ShaDone
execute as @s[scores={ShaType=1..12}] unless block ~ ~ ~ dropper{Items:[{Slot:6b},{Slot:7b}]} run tag @s remove ShaDone

execute as @s[scores={ShaType=1..12}] unless block ~ ~ ~ dropper{Items:[{Slot:1b}]} run scoreboard players reset @s ShaType
execute as @s[scores={ShaType=1..12},tag=!ShaDone] run tag @s add shattering
#execute as @s[tag=shattering,tag=!NoRI] at @s run scoreboard players remove @s RI 5
execute as @s[scores={ShaType=1..12},tag=!ShaDone] if score @s ShaTick matches 80 run function rfic:pulverizer/done

execute as @s if score @s ShaTick matches 80 run scoreboard players set @s ShaTick 0