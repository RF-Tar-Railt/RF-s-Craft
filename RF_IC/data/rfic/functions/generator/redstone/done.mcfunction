#[4]
execute if block ~ ~ ~ dropper{Items:[{Slot:4b}]} store result score @s GrdCount run data get block ~ ~ ~ Items[4].Count
execute if block ~ ~ ~ dropper{Items:[{Slot:4b}]} store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove @s GrdCount 1

scoreboard players set @s GrdTick 0
scoreboard players reset @s GrdCount
tag @s remove on
tag @s remove Grd
tag @s remove Grdb