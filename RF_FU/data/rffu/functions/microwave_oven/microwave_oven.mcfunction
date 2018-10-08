scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:beef"}}] MicItm 1
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:porkchop"}}] MicItm 2
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:mutton"}}] MicItm 3
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:cod"}}] MicItm 4
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:salmon"}}] MicItm 5
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:chicken"}}] MicItm 6
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:potato"}}] MicItm 7
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:wheat"}}] MicItm 8
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:pumpkin"}}] MicItm 9
scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:rabbit"}}] MicItm 10
execute as @e[type=item,nbt={Item:{id:"minecraft:apple"}}] unless entity @s[type=item,nbt={Item:{tag:{id:"rf:cooked_apple"}}}] run scoreboard players set @s MicItm 11
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot"}}] unless entity @s[type=item,nbt={Item:{tag:{id:"rf:baked_carrot"}}}] run scoreboard players set @s MicItm 12

function rffu:microwave_oven/microwave_oven_list
function rffu:microwave_oven/microwave_oven_main
