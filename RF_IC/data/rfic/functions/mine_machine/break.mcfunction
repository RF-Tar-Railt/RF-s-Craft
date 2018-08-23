execute as @a at @s run function rfic:mine_machine/break_before
function rfic:mine_machine/break_size
function rfic:mine_machine/break_main
#execute as @e[tag=ore] at @s run function rfic:mine_machine/break_block
execute as @e[tag=ore] at @s run function rfic:mine_machine/break_clean
execute as @e[tag=ore] at @s run function rfic:mine_machine/break_give

#execute as @e[tag=mine_machine] at @s run 