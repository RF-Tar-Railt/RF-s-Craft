scoreboard objectives add frzsec dummy
scoreboard objectives add frztick dummy
scoreboard players add @a[tag=freezing] frztick 1
scoreboard players add @a[tag=freezing,scores={frztick=20..}] frzsec 1
execute as @a[tag=freezing,scores={frztick=20..}] at @s run scoreboard players set @a[tag=freezing] frztick 0

execute as @a[tag=freezing,scores={frzsec=45..,FrzItm=1}] at @s as @e[tag=ice,tag=FrzAp] at @s run data merge entity @s {Items:[{id:"minecraft:apple",Count:1b,Slot:0b,tag:{id:"rf:freeze_apple",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_apple\"}"}}}]}
execute as @a[tag=freezing,scores={frzsec=45..,FrzItm=2}] at @s as @e[tag=ice,tag=FrzMn] at @s run data merge entity @s {Items:[{id:"minecraft:melon_slice",Count:1b,Slot:0b,tag:{id:"rf:freeze_melon_slice",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_melon_slice\"}"}}}]}
execute as @a[tag=freezing,scores={frzsec=45..,FrzItm=3}] at @s as @e[tag=ice,tag=FrzCr] at @s run data merge entity @s {Items:[{id:"minecraft:carrot",Count:1b,Slot:0b,tag:{id:"rf:freeze_carrot",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_carrot\"}"}}}]}

execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice] at @s run tag @s remove FrzAp
execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice] at @s run tag @s remove FrzMn
execute as @a[tag=freezing,scores={frzsec=45..}] at @s as @e[tag=ice] at @s run tag @s remove FrzCr
execute as @a[tag=freezing] at @s run scoreboard players reset @e FrzItm
execute as @a[tag=freezing,scores={frzsec=46..}] at @s as @e[tag=ice] at @s run tag @a[tag=freezing] remove freezing
execute as @a[scores={frzsec=46..}] at @s run scoreboard players set @a frzsec 0