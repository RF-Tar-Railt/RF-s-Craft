scoreboard players add @a[tag=freezing] frztick 1
scoreboard players add @a[tag=freezing,scores={frztick=20..}] frzsec 1
execute as @a[tag=freezing,scores={frztick=20..}] at @s run scoreboard players set @a[tag=freezing] frztick 0

execute as @a at @s as @e[tag=ice,distance=..3] store result score @s FrzCount run data get entity @s Items[0].Count
execute as @a[tag=freezing,scores={frzsec=45..,FrzItm=1}] at @s as @e[tag=ice,tag=FrzAp] at @s run data merge entity @s {Items:[{id:"minecraft:apple",Slot:0b,Count:1b,tag:{id:"rf:freeze_apple",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_apple\"}"}}}]}
execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice,tag=FrzAp] store result entity @s Items[0].Count byte 1 run scoreboard players get @s FrzCount
execute as @a[tag=freezing,scores={frzsec=45..,FrzItm=2}] at @s as @e[tag=ice,tag=FrzMn] at @s run data merge entity @s {Items:[{id:"minecraft:melon_slice",Slot:0b,Count:1b,tag:{id:"rf:freeze_melon_slice",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_melon_slice\"}"}}}]}
execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice,tag=FrzMn] store result entity @s Items[0].Count byte 1 run scoreboard players get @s FrzCount
execute as @a[tag=freezing,scores={frzsec=45..,FrzItm=3}] at @s as @e[tag=ice,tag=FrzCr] at @s run data merge entity @s {Items:[{id:"minecraft:carrot",Slot:0b,Count:1b,tag:{id:"rf:freeze_carrot",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_carrot\"}"}}}]}
execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice,tag=FrzCr] store result entity @s Items[0].Count byte 1 run scoreboard players get @s FrzCount

execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice] at @s run tag @s remove FrzAp
execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice] at @s run tag @s remove FrzMn
execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice] at @s run tag @s remove FrzCr
execute as @a[tag=freezing] at @s run scoreboard players reset @e FrzItm
execute as @a[tag=freezing,scores={frzsec=46..}] at @s as @e[tag=ice] at @s run tag @a[tag=freezing] remove freezing
execute as @a[scores={frzsec=46..}] at @s run scoreboard players set @a frzsec 0