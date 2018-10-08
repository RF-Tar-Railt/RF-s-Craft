execute as @e[scores={icing=1..}] at @s run execute as @p at @s run tag @s add icing

scoreboard players add @a[tag=icing] fritick 1
scoreboard players add @a[tag=icing,scores={fritick=20..}] frisec 1
scoreboard players set @a[tag=icing,scores={fritick=20..}] fritick 0

#execute @a[tag=icing] ~ ~ ~ tellraw @a {"score":{"name":"*","objective":"fritick"}}
#execute @a[tag=icing] ~ ~ ~ tellraw @a {"score":{"name":"*","objective":"frisec"}}

execute as @a[tag=icing,scores={frisec=45..}] at @s run execute as @e[tag=ice,scores={icing=1}] at @s run execute as @s run data merge entity @s {Items:[{id:"minecraft:ice",Count:4b,Slot:2b}]}
execute as @a[tag=icing,scores={frisec=45..}] at @s run execute as @e[tag=ice,scores={icing=2}] at @s run execute as @s run data merge entity @s {Items:[{id:"minecraft:ice",Count:8b,Slot:2b}]}
execute as @a[tag=icing,scores={frisec=45..}] at @s run execute as @e[tag=ice,scores={icing=3}] at @s run execute as @s run data merge entity @s {Items:[{id:"minecraft:ice",Count:12b,Slot:2b}]}

execute as @a[tag=icing,scores={frisec=45..}] at @s run execute as @e[tag=ice] at @s run scoreboard players reset @s icing
execute as @a[scores={frisec=45..}] at @s run tag @s remove icing
execute as @a[scores={frisec=45..}] at @s run scoreboard players reset @s frisec