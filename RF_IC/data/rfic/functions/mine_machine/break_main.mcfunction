
scoreboard objectives add btick dummy
scoreboard objectives add bsec dummy
scoreboard objectives add bsec1 dummy

scoreboard players add @e[tag=ore] btick 1
scoreboard players add @e[tag=ore,scores={btick=10..}] bsec 1
scoreboard players add @e[tag=ore,scores={bsec=9,btick=5}] bsec1 1
scoreboard players set @e[tag=ore,scores={btick=10..}] btick 0


execute as @e[scores={bsec=1..8,btick=5},tag=ore] at @s run tp @s ^ ^ ^1
execute as @e[scores={bsec=9,btick=5,bsec1=..8},tag=ore] at @s run tp @s ^1 ^ ^-8
execute as @e[scores={bsec1=9},tag=ore] at @s run tp @s ^-8 ^-1 ^-8
execute as @e[scores={bsec1=9},tag=ore,y_rotation=90] at @s run setblock ~ ~ ~ ladder[facing=west] destroy
execute as @e[scores={bsec1=9},tag=ore,y_rotation=-90] at @s run setblock ~ ~ ~ ladder[facing=east] destroy
execute as @e[scores={bsec1=9},tag=ore,y_rotation=180] at @s run setblock ~ ~ ~ ladder[facing=north] destroy
execute as @e[scores={bsec1=9},tag=ore,y_rotation=0] at @s run setblock ~ ~ ~ ladder[facing=south] destroy
scoreboard players set @e[tag=ore,scores={bsec1=9}] bsec1 0
execute as @e[scores={bsec1=9},tag=ore] at @s if block ~ 1 ~ bedrock run tag @s remove ore

#execute as @e[tag=ore,y=0] at @s run kill @s 
scoreboard players set @e[tag=ore,scores={bsec=9,btick=5}] bsec 0
