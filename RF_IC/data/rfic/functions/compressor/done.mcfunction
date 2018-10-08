execute as @s[scores={CpsType=1}] run replaceitem block ~ ~ ~ container.7 minecraft:charcoal{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.carbon_lump\"}"},id:"rf:carbon_lump"} 1

execute as @s[scores={CpsType=2}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§610%"]},id:"rf:C_silicon",purity:10s} 1

execute as @s[scores={CpsType=3}] run replaceitem block ~ ~ ~ container.7 minecraft:quartz_block 1

execute as @s[scores={CpsType=4}] run replaceitem block ~ ~ ~ container.7 minecraft:diamond 1

execute as @s[scores={CpsType=5}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§620%"]},id:"rf:C_silicon",purity:20s} 1
execute as @s[scores={CpsType=6}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§630%"]},id:"rf:C_silicon",purity:30s} 1
execute as @s[scores={CpsType=7}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§640%"]},id:"rf:C_silicon",purity:40s} 1
execute as @s[scores={CpsType=8}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§650%"]},id:"rf:C_silicon",purity:50s} 1
execute as @s[scores={CpsType=9}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§660%"]},id:"rf:C_silicon",purity:60s} 1
execute as @s[scores={CpsType=10}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§670%"]},id:"rf:C_silicon",purity:70s} 1
execute as @s[scores={CpsType=11}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§680%"]},id:"rf:C_silicon",purity:80s} 1
execute as @s[scores={CpsType=12}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.C_silicon\"}",Lore:["§690%"]},id:"rf:C_silicon",purity:90s} 1
execute as @s[scores={CpsType=13}] run replaceitem block ~ ~ ~ container.7 minecraft:cyan_dye{HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.PC_silicon\"}"},id:"rf:PC_silicon"} 1

#[1]
execute store result score @s CpsCount run data get block ~ ~ ~ Items[1].Count
execute store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players remove @s CpsCount 1

scoreboard players reset @s CpsCount
scoreboard players reset @s CpsType
tag @s remove compressing