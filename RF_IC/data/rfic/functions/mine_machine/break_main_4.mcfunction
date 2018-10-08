scoreboard players add @e[tag=ore4] btick 1
scoreboard players add @e[tag=ore4,scores={btick=40..}] bsec 1
scoreboard players add @e[tag=ore4,scores={bsec=9,btick=5}] bsec1 1
scoreboard players set @e[tag=ore4,scores={btick=40..}] btick 0

execute as @e[scores={bsec=1..8,btick=5},tag=ore4] at @s run tp @s ^ ^ ^1
execute as @e[scores={bsec=9,btick=5,bsec1=..8},tag=ore4] at @s run tp @s ^1 ^ ^-8
execute as @e[scores={bsec1=9},tag=ore4] at @s run tp @s ^-8 ^-1 ^-8
