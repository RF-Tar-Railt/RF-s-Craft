execute store result score @s FUCount run data get block ~ ~ ~ Items[11].Count
execute if block ~ ~ ~ chest{Items:[{id:"minecraft:apple",Slot:11b}]} run replaceitem block ~ ~ ~ container.15 minecraft:apple{id:"rf:freeze_apple",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_apple\"}"}} 1
execute store result block ~ ~ ~ Items[15].Count byte 1 run scoreboard players get @s FUCount

execute store result score @s FUCount run data get block ~ ~ ~ Items[11].Count
execute if block ~ ~ ~ chest{Items:[{id:"minecraft:melon_slice",Slot:11b}]} run replaceitem block ~ ~ ~ container.15 minecraft:melon_slice{id:"rf:freeze_melon_slice",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_melon_slice\"}"}} 1
execute store result block ~ ~ ~ Items[15].Count byte 1 run scoreboard players get @s FUCount

execute store result score @s FUCount run data get block ~ ~ ~ Items[11].Count
execute if block ~ ~ ~ chest{Items:[{id:"minecraft:carrot",Slot:11b}]} run replaceitem block ~ ~ ~ container.15 minecraft:carrot{id:"rf:freeze_carrot",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_carrot\"}"}} 1
execute store result block ~ ~ ~ Items[15].Count byte 1 run scoreboard players get @s FUCount

execute if block ~ ~ ~ chest{Items:[{id:"minecraft:water_bucket"}]} run replaceitem block ~ ~ ~ container.15 ice 4
execute if block ~ ~ ~ chest{Items:[{id:"minecraft:water_bucket"}]} run replaceitem block ~ ~ ~ container.11 bucket 1

execute if block ~ ~ ~ chest{Items:[{Slot:15b}]} unless block ~ ~ ~ chest{Items:[{Slot:15b,id:"minecraft:ice"}]} run replaceitem block ~ ~ ~ container.11 air