execute as @a at @s run function rfic:farm_machine/farm_before
function rfic:farm_machine/farm_main
execute as @e[tag=hoe] at @s run function rfic:farm_machine/farm_hoe
execute as @e[tag=farm] at @s run function rfic:farm_machine/farm_farm

#execute as @e[tag=mine_machine] at @s run 