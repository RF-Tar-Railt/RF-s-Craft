scoreboard players add @e[tag=ore3] btick 1
scoreboard players add @e[tag=ore3,scores={btick=30..}] bsec 1
scoreboard players add @e[tag=ore3,scores={bsec=9,btick=5}] bsec1 1
scoreboard players set @e[tag=ore3,scores={btick=30..}] btick 0

execute as @e[scores={bsec=1..8,btick=5},tag=ore3] at @s run tp @s ^ ^ ^1
execute as @e[scores={bsec=9,btick=5,bsec1=..8},tag=ore3] at @s run tp @s ^1 ^ ^-8
execute as @e[scores={bsec1=9},tag=ore3] at @s run tp @s ^-8 ^-1 ^-8