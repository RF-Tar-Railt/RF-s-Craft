scoreboard players add @s[tag=compressing,tag=!CpsDone,tag=!NoRI] CpsTick 1

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:carbon_dust"}}]} run scoreboard players set @s CpsType 1
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:silicon"}}]} run scoreboard players set @s CpsType 2
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:quartz_dust"}}]} run scoreboard players set @s CpsType 3
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:carbon_lump"}}]} run scoreboard players set @s CpsType 4

execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:10s}}]} run scoreboard players set @s CpsType 5
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:20s}}]} run scoreboard players set @s CpsType 6
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:30s}}]} run scoreboard players set @s CpsType 7
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:40s}}]} run scoreboard players set @s CpsType 8
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:50s}}]} run scoreboard players set @s CpsType 9
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:60s}}]} run scoreboard players set @s CpsType 10
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:70s}}]} run scoreboard players set @s CpsType 11
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:80s}}]} run scoreboard players set @s CpsType 12
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{id:"rf:C_silicon",purity:90s}}]} run scoreboard players set @s CpsType 13

execute as @s[scores={CpsType=1..13}] if block ~ ~ ~ dropper{Items:[{Slot:6b}]} run tag @s add CpsDone
execute as @s[scores={CpsType=1..13}] if block ~ ~ ~ dropper{Items:[{Slot:7b}]} run tag @s add CpsDone
execute as @s[scores={CpsType=1..13}] unless block ~ ~ ~ dropper{Items:[{Slot:6b},{Slot:7b}]} run tag @s remove CpsDone

execute as @s[scores={CpsType=1..13}] unless block ~ ~ ~ dropper{Items:[{Slot:1b}]} run scoreboard players reset @s CpsType
execute as @s[scores={CpsType=1..13},tag=!CpsDone] run tag @s add compressing
#execute as @s[tag=compressing,tag=!NoRI] at @s run scoreboard players remove @s RI 15
execute as @s[scores={CpsType=1..13},tag=!CpsDone] if score @s CpsTick matches 320 run function rfic:compressor/done

execute as @s if score @s CpsTick matches 320 run scoreboard players set @s CpsTick 0