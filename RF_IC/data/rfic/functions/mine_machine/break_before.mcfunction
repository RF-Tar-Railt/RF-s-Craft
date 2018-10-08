execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ lever[powered=true] run tag @s add on_mim
execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ lever[powered=false] run tag @s add off_mim

execute as @e[tag=mine_machine] at @s if block ~ ~ ~ air run tag @s add no_mim
execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ air run tag @s add off_mim

execute as @e[tag=mine_machine,tag=on_mim] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:27},Count:1b}]}
execute as @e[tag=mine_machine,tag=off_mim] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:26},Count:1b}]}

execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=2401..}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] add ore1
execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=2401..}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] remove ore2
execute as @e[tag=mine_machine,tag=off_mim] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,sort=nearest,limit=1] remove ore1

execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=1601..2400}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] add ore2
execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=1601..2400}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] remove ore3
execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=1601..2400}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] remove ore1
execute as @e[tag=mine_machine,tag=off_mim] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,sort=nearest,limit=1] remove ore2

execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=801..1600}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] add ore3
execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=801..1600}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] remove ore4
execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=801..1600}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] remove ore2
execute as @e[tag=mine_machine,tag=off_mim] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,sort=nearest,limit=1] remove ore3

execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=1..800}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] add ore4
execute as @e[tag=mine_machine,tag=on_mim,tag=!NoRI,scores={RI=1..800}] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,dx=8,dy=-255,dz=8,limit=1] remove ore3
execute as @e[tag=mine_machine,tag=off_mim] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run tag @e[tag=drill,sort=nearest,limit=1] remove ore4

execute as @e[tag=mine_machine,tag=no_mim] at @s as @e[tag=test,sort=nearest,limit=1] positioned ~-4 ~2 ~-4 run kill @e[tag=drill,sort=nearest,limit=1]

execute as @e[tag=mine_machine,tag=!NoRI,tag=on_mim] at @s run scoreboard players remove @s RI 10
execute as @e[tag=mine_machine] at @s run tag @s remove on_mim
execute as @e[tag=mine_machine] at @s run tag @s remove off_mim
execute as @e[tag=mine_machine] at @s run tag @s remove no_mim