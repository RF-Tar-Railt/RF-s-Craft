
#1
execute as @a at @s as @e[tag=ice,distance=..3,nbt={Items:[{id:"minecraft:apple",Slot:0b}]}] unless entity @s[nbt={Items:[{id:"minecraft:apple",Slot:0b,tag:{id:"rf:freeze_apple"}}]}] at @s run scoreboard players set @p FrzItm 1
execute as @a at @s as @e[tag=ice,distance=..3,nbt={Items:[{id:"minecraft:melon_slice",Slot:0b}]}] unless entity @s[nbt={Items:[{id:"minecraft:melon_slice",Slot:0b,tag:{id:"rf:freeze_melon_slice"}}]}] at @s run scoreboard players set @p FrzItm 2
execute as @a at @s as @e[tag=ice,distance=..3,nbt={Items:[{id:"minecraft:carrot",Slot:0b}]}] unless entity @s[nbt={Items:[{id:"minecraft:carrot",Slot:0b,tag:{id:"rf:freeze_carrot"}}]}] at @s run scoreboard players set @p FrzItm 3

#2
execute as @a at @s as @e[tag=ice,distance=..3] at @s as @a[scores={FrzItm=1}] run tag @s add freezing
execute as @a[tag=freezing,scores={FrzItm=1}] at @s run tag @e[tag=ice,distance=..3] add FrzAp

execute as @a at @s as @e[tag=ice,distance=..3] at @s as @a[scores={FrzItm=2}] run tag @s add freezing
execute as @a[tag=freezing,scores={FrzItm=2}] at @s run tag @e[tag=ice,distance=..3] add FrzMn

execute as @a at @s as @e[tag=ice,distance=..3] at @s as @a[scores={FrzItm=3}] run tag @s add freezing
execute as @a[tag=freezing,scores={FrzItm=3}] at @s run tag @e[tag=ice,distance=..3] add FrzCr