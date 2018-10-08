execute as @s[scores={IgtType=1}] run replaceitem block ~ ~ ~ container.7 minecraft:iron_ingot 1

execute as @s[scores={IgtType=2}] run replaceitem block ~ ~ ~ container.7 minecraft:gold_nugget 4

execute as @s[scores={IgtType=3}] run replaceitem block ~ ~ ~ container.7 minecraft:iron_ingot{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.lead_ingot\"}"},id:"rf:lead_ingot"} 1

execute as @s[scores={IgtType=4}] run replaceitem block ~ ~ ~ container.7 minecraft:iron_ingot{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.tin_ingot\"}"},id:"rf:tin_ingot"} 1

execute as @s[scores={IgtType=5}] run replaceitem block ~ ~ ~ container.7 minecraft:iron_ingot{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.zinc_ingot\"}"},id:"rf:zinc_ingot"} 1

execute as @s[scores={IgtType=6,Igttimes=2..}] run replaceitem block ~ ~ ~ container.7 minecraft:iron_ingot{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.nickel_ingot\"}"},id:"rf:nickel_ingot"} 1

execute as @s[scores={IgtType=7}] run replaceitem block ~ ~ ~ container.7 minecraft:iron_ingot{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.tungsten_ingot\"}"},id:"rf:tungsten_ingot"} 1

execute as @s[scores={IgtType=8}] run replaceitem block ~ ~ ~ container.7 minecraft:brick{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.redstone_ingot\"}"},id:"rf:redstone_ingot"} 1

execute as @s[scores={IgtType=9}] run replaceitem block ~ ~ ~ container.7 minecraft:gray_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.silicon\"}"},id:"rf:silicon"} 1

execute as @s[scores={IgtType=1..6}] run scoreboard players remove @s Igttimes 1
execute as @s[scores={IgtType=7,Igttimes=2..}] run scoreboard players remove @s Igttimes 2
execute as @s[scores={IgtType=7,Igttimes=1}] run scoreboard players remove @s Igttimes 1
execute as @s[scores={IgtType=8..9}] run scoreboard players remove @s Igttimes 1

#[0]
execute unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} store result score @s IfrCount run data get block ~ ~ ~ Items[0].Count
execute unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players remove @s IfrCount 1

#[1]
execute if block ~ ~ ~ dropper{Items:[{Slot:0b}]} store result score @s IfrCount run data get block ~ ~ ~ Items[1].Count
execute if block ~ ~ ~ dropper{Items:[{Slot:0b}]} store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players remove @s IfrCount 1

scoreboard players reset @s IfrCount
scoreboard players reset @s IgtType
tag @s remove ingoting
tag @s remove fuel