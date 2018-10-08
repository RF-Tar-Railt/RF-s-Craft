execute as @a at @s run function rfic:mine_machine/break_before
function rfic:mine_machine/break_size
function rfic:mine_machine/break_main
#execute as @e[tag=drill] at @s run function rfic:mine_machine/break_block
execute as @e[tag=drill] at @s run function rfic:mine_machine/break_clean
execute as @e[tag=drill] at @s run function rfic:mine_machine/break_give

execute as @a at @s run execute as @e[type=armor_stand,tag=mine_machine,distance=..4] at @s run execute if block ~ ~ ~ air run kill @s
execute as @a at @s run execute as @e[tag=Remove,name=Remove,type=ocelot,distance=..4] at @s run execute as @e[tag=mine_machine,name=testpoint,distance=..3] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air
#execute as @e[tag=mine_machine] at @s run 
