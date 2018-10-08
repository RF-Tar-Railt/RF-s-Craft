execute as @e[tag=drill] run function rfic:mine_machine/break_main_1
execute as @e[tag=drill] run function rfic:mine_machine/break_main_2
execute as @e[tag=drill] run function rfic:mine_machine/break_main_3
execute as @e[tag=drill] run function rfic:mine_machine/break_main_4

execute as @e[scores={bsec1=9},tag=drill,y_rotation=90] at @s run setblock ~ ~ ~ ladder[facing=west] destroy
execute as @e[scores={bsec1=9},tag=drill,y_rotation=-90] at @s run setblock ~ ~ ~ ladder[facing=east] destroy
execute as @e[scores={bsec1=9},tag=drill,y_rotation=180] at @s run setblock ~ ~ ~ ladder[facing=north] destroy
execute as @e[scores={bsec1=9},tag=drill,y_rotation=0] at @s run setblock ~ ~ ~ ladder[facing=south] destroy
scoreboard players set @e[tag=drill,scores={bsec1=9}] bsec1 0
#execute as @e[scores={bsec1=9},tag=drill] at @s if block ~ 1 ~ bedrock run tag @s remove ore1
#execute as @e[scores={bsec1=9},tag=drill] at @s if block ~ 1 ~ bedrock run tag @s remove ore2
#execute as @e[scores={bsec1=9},tag=drill] at @s if block ~ 1 ~ bedrock run tag @s remove ore3
#execute as @e[scores={bsec1=9},tag=drill] at @s if block ~ 1 ~ bedrock run tag @s remove ore4
scoreboard players set @e[tag=drill,scores={bsec=9,btick=5}] bsec 0
