execute as @a at @s as @e[type=armor_stand,tag=crop_get_machine,distance=..4] at @s if block ~ ~ ~ air run kill @s
execute as @a at @s as @e[tag=Remove,name=Remove,type=ocelot,distance=..3] at @s as @e[tag=Cgm,name=testpoint,distance=..3] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air

execute as @e[tag=crop_get_machine] at @s if block ^ ^1 ^ lever[powered=true] run tag @s add on_cgm
execute as @e[tag=crop_get_machine] at @s if block ^ ^1 ^ lever[powered=false] run tag @s add off_cgm

execute as @e[tag=crop_get_machine] at @s if block ~ ~ ~ air run tag @s add no_cgm
execute as @e[tag=crop_get_machine] at @s if block ^ ^1 ^ air run tag @s add off_cgm

execute as @e[tag=crop_get_machine,tag=on_cgm,tag=!NoRI] at @s run function rfic:crop_get_machine/crop
execute as @e[tag=crop_get_machine,tag=on_cgm,tag=!NoRI] at @s as @e[tag=ctest,sort=nearest,limit=1] at @s run tp @e[tag=crop,distance=..6] @e[tag=cgetore,sort=nearest,limit=1]

execute as @e[tag=crop_get_machine,tag=!NoRI,tag=on_cgm] at @s run scoreboard players remove @s RI 4
execute as @e[tag=crop_get_machine,tag=off_cgm] at @s run tag @e[tag=crop] remove crop
execute as @e[tag=crop_get_machine,tag=no_cgm] at @s run tag @e[tag=crop] remove crop
execute as @e[tag=crop_get_machine] at @s run tag @s remove on_cgm
execute as @e[tag=crop_get_machine] at @s run tag @s remove off_cgm
execute as @e[tag=crop_get_machine] at @s run tag @s remove no_cgm