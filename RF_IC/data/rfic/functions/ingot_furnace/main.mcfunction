scoreboard players add @s[tag=ingoting,tag=!IgtDone] IgtTick 1

execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:coal"}]} run tag @s add fuel
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:charcoal"}]} run tag @s add fuel
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{id:"rf:carbon_dust"}}]} run tag @s add fuel

execute if entity @s[scores={Igttimes=0},tag=fuel] store result score @s IfrCount run data get block ~ ~ ~ Items[0].Count
execute if entity @s[scores={Igttimes=0},tag=fuel] store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players remove @s IfrCount 1
execute if entity @s[scores={Igttimes=0},tag=fuel] run scoreboard players set @s Igttimes 4

execute if entity @s[tag=!fuel,nbt={ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",tag:{Damage:7},Count:1b}]}] run scoreboard players set @s Igttimes 0

execute if entity @s[scores={Igttimes=1..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",tag:{Damage:8},Count:1b}]}
execute if entity @s[scores={Igttimes=0}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",tag:{Damage:7},Count:1b}]}
execute if entity @s[scores={Igttimes=0}] run replaceitem block ~ ~ ~ container.6 minecraft:wooden_hoe{Damage:3,Unbreakable:1b,HideFlags:63,display:{Name:"{\"\"}"},id:"rf:gui_furnace"}
execute if entity @s[scores={Igttimes=1}] run replaceitem block ~ ~ ~ container.6 minecraft:wooden_hoe{Damage:14,Unbreakable:1b,HideFlags:63,display:{Name:"{\"\"}"},id:"rf:gui_furnace"}
execute if entity @s[scores={Igttimes=2}] run replaceitem block ~ ~ ~ container.6 minecraft:wooden_hoe{Damage:10,Unbreakable:1b,HideFlags:63,display:{Name:"{\"\"}"},id:"rf:gui_furnace"}
execute if entity @s[scores={Igttimes=3}] run replaceitem block ~ ~ ~ container.6 minecraft:wooden_hoe{Damage:7,Unbreakable:1b,HideFlags:63,display:{Name:"{\"\"}"},id:"rf:gui_furnace"}
execute if entity @s[scores={Igttimes=4}] run replaceitem block ~ ~ ~ container.6 minecraft:wooden_hoe{Damage:4,Unbreakable:1b,HideFlags:63,display:{Name:"{\"\"}"},id:"rf:gui_furnace"}


execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:iron_dust"}}]} run scoreboard players set @s IgtType 1
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:gold_dust"}}]} run scoreboard players set @s IgtType 2
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:lead_dust"}}]} run scoreboard players set @s IgtType 3
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:tin_dust"}}]} run scoreboard players set @s IgtType 4
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:zinc_dust"}}]} run scoreboard players set @s IgtType 5
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:nickel_dust"}}]} run scoreboard players set @s IgtType 6
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:tungsten_dust"}}]} run scoreboard players set @s IgtType 7
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:redstone"}]} run scoreboard players set @s IgtType 8
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:quartz_dust"}}]} run scoreboard players set @s IgtType 9

execute as @s[scores={IgtType=1..11}] unless block ~ ~ ~ dropper{Items:[{Slot:1b}]} run scoreboard players reset @s IgtType
execute as @s[scores={IgtType=1..11}] if block ~ ~ ~ dropper{Items:[{Slot:7b}]} run tag @s add IgtDone
execute as @s[scores={IgtType=1..11}] unless block ~ ~ ~ dropper{Items:[{Slot:7b}]} run tag @s remove IgtDone

execute as @s[scores={IgtType=1..11,Igttimes=1..},tag=!IgtDone] run tag @s add ingoting 
execute as @s[scores={IgtType=1..11,Igttimes=1..},tag=!IgtDone] if score @s IgtTick matches 160 run function rfic:ingot_furnace/done1

execute as @s if score @s IgtTick matches 160 run scoreboard players set @s IgtTick 0