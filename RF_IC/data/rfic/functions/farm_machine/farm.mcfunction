execute as @a at @s run function rfic:farm_machine/farm_before
function rfic:farm_machine/farm_main
execute as @e[tag=hoe] at @s run function rfic:farm_machine/farm_hoe
execute as @e[tag=farm] at @s run function rfic:farm_machine/farm_farm

execute as @a at @s as @e[type=armor_stand,tag=farm_machine,distance=..4] at @s if block ~ ~ ~ air run kill @s
execute as @a at @s as @e[type=item,distance=..3,nbt={Item:{tag:{id:"rf:remove"}}}] at @s as @e[tag=farm_machine,name=testpoint,distance=..2] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air
#execute as @e[tag=mine_machine] at @s run 