execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ lever[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ lever[powered=false] run tag @s add off_fam

execute as @e[tag=farm_machine] at @s if block ~ ~ ~ air run tag @s add no_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ air run tag @s add off_fam

execute as @e[tag=farm_machine,tag=on_fam] at @s run setblock ~ ~-1 ~ water

execute as @e[tag=farm_machine,tag=on_fam,tag=!NoRI] positioned ~-4 ~-2 ~-4 run tag @e[tag=hoe,limit=1,dx=8,dy=3,dz=8] add hoing
execute as @e[tag=farm_machine,tag=off_fam] positioned ~-4 ~-2 ~-4 run tag @e[tag=hoe,limit=1,dx=8,dy=3,dz=8] remove hoing
execute as @e[tag=farm_machine,tag=no_fam] positioned ~-4 ~-2 ~-4 run kill @e[tag=hoe,limit=1,dx=8,dy=3,dz=8]

execute as @e[tag=farm_machine,tag=on_fam,tag=!NoRI] positioned ~-4 ~-2 ~-4 run tag @e[tag=farm,limit=1,dx=8,dy=3,dz=8] add farming
execute as @e[tag=farm_machine,tag=off_fam] positioned ~-4 ~-2 ~-4 run tag @e[tag=farm,limit=1,dx=8,dy=3,dz=8] remove farming
execute as @e[tag=farm_machine,tag=no_fam] positioned ~-4 ~-2 ~-4 run kill @e[tag=farm,limit=1,dx=8,dy=3,dz=8]

execute as @e[tag=farm_machine,tag=!NoRI,tag=on_fam] at @s run scoreboard players remove @s RI 5
execute as @e[tag=farm_machine] at @s run tag @s remove on_fam
execute as @e[tag=farm_machine] at @s run tag @s remove off_fam
execute as @e[tag=farm_machine] at @s run tag @s remove no_fam