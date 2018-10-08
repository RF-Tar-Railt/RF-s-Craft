execute as @a at @s as @e[type=armor_stand,tag=shatter,distance=..4] at @s run execute if block ~ ~-1 ~ air run kill @s
execute as @a at @s as @e[type=item,distance=..3,nbt={Item:{tag:{id:"rf:remove"}}}] at @s run execute as @e[tag=shatter,name=testpoint,distance=..3] at @s run setblock ~ ~-1 ~ minecraft:air

execute as @e[tag=shatter] at @s positioned ~ ~-1 ~ run function rfic:pulverizer/main
execute as @e[tag=shatter] at @s if block ~ ~-2 ~ hopper run setblock ~ ~-2 ~ air destroy
execute as @e[tag=shatter] at @s if block ~1 ~-1 ~ #rfic:redstone run setblock ~1 ~-1 ~ air destroy
execute as @e[tag=shatter] at @s if block ~ ~ ~ #rfic:redstone run setblock ~ ~ ~ air destroy
execute as @e[tag=shatter] at @s if block ~ ~-2 ~ #rfic:redstone run setblock ~ ~-2 ~ air destroy
execute as @e[tag=shatter] at @s if block ~-1 ~-1 ~ #rfic:redstone run setblock ~-1 ~-1 ~ air destroy
execute as @e[tag=shatter] at @s if block ~ ~-1 ~1 #rfic:redstone run setblock ~ ~-1 ~1 air destroy
execute as @e[tag=shatter] at @s if block ~ ~-1 ~-1 #rfic:redstone run setblock ~ ~-1 ~-1 air destroy

execute as @e[tag=shatter] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:0b,tag:{id:"rf:gui"}}]} run replaceitem block ~ ~-1 ~ container.0 minecraft:gray_stained_glass_pane{id:"rf:gui",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=shatter] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:2b,tag:{id:"rf:gui"}}]} run replaceitem block ~ ~-1 ~ container.2 minecraft:gray_stained_glass_pane{id:"rf:gui",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=shatter] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:3b,tag:{id:"rf:gui"}}]} run replaceitem block ~ ~-1 ~ container.3 minecraft:gray_stained_glass_pane{id:"rf:gui",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=shatter] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:4b,tag:{id:"rf:gui_main"}}]} run replaceitem block ~ ~-1 ~ container.4 minecraft:golden_axe{Damage:29,HideFlags:63,Unbreakable:1b,id:"rf:gui_main",display:{Name:"\"\""}}
execute as @e[tag=shatter] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:5b,tag:{id:"rf:gui"}}]} run replaceitem block ~ ~-1 ~ container.5 minecraft:gray_stained_glass_pane{id:"rf:gui",HideFlags:63,display:{Name:"\"\""}}