scoreboard players add @e[tag=hoing] ftick 1
scoreboard players add @e[tag=hoing,scores={ftick=10..}] fsec 1
scoreboard players add @e[tag=hoing,scores={fsec=9,ftick=5}] fsec1 1
scoreboard players set @e[tag=hoing,scores={ftick=10..}] ftick 0

scoreboard players add @e[tag=farming] ftick 1
scoreboard players add @e[tag=farming,scores={ftick=10..}] fsec 1
scoreboard players add @e[tag=farming,scores={fsec=9,ftick=5}] fsec1 1
scoreboard players set @e[tag=farming,scores={ftick=10..}] ftick 0

execute as @e[scores={fsec=1..8,ftick=5},tag=hoing] at @s run tp @s ^ ^ ^1
execute as @e[scores={fsec=9,ftick=5,fsec1=..8},tag=hoing] at @s run tp @s ^1 ^ ^-8
execute as @e[scores={fsec1=9},tag=hoing] at @s run tp @s ^-8 ^ ^-8
scoreboard players set @e[tag=hoing,scores={fsec1=9}] fsec1 0

execute as @e[scores={fsec=1..8,ftick=5},tag=farming] at @s run tp @s ^ ^ ^1
execute as @e[scores={fsec=9,ftick=5,fsec1=..8},tag=farming] at @s run tp @s ^1 ^ ^-8
execute as @e[scores={fsec1=9},tag=farming] at @s run tp @s ^-8 ^ ^-8
scoreboard players set @e[tag=farming,scores={fsec1=9}] fsec1 0

#execute as @e[tag=hoing,y=0] at @s run kill @s 
scoreboard players set @e[tag=hoing,scores={fsec=9,ftick=5}] fsec 0
scoreboard players set @e[tag=farming,scores={fsec=9,ftick=5}] fsec 0