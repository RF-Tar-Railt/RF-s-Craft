execute as @a at @s as @e[type=armor_stand,tag=redstone,distance=..4] at @s if block ~ ~-1 ~ air run kill @s
execute as @a at @s as @e[type=item,distance=..3,nbt={Item:{tag:{id:"rf:remove"}}}] at @s as @e[tag=redstone,name=testpoint,distance=..3] at @s run setblock ~ ~-1 ~ minecraft:air

execute as @e[tag=redstone] at @s positioned ~ ~-1 ~ run function rfic:generator/redstone/main
execute as @e[tag=redstone] at @s if block ~ ~-2 ~ hopper run setblock ~ ~-2 ~ air destroy
execute as @e[tag=redstone] at @s if block ~1 ~-1 ~ #rfic:redstone run setblock ~1 ~-1 ~ air destroy
execute as @e[tag=redstone] at @s if block ~ ~ ~ #rfic:redstone run setblock ~ ~ ~ air destroy
execute as @e[tag=redstone] at @s if block ~ ~-2 ~ #rfic:redstone run setblock ~ ~-2 ~ air destroy
execute as @e[tag=redstone] at @s if block ~-1 ~-1 ~ #rfic:redstone run setblock ~-1 ~-1 ~ air destroy
execute as @e[tag=redstone] at @s if block ~ ~-1 ~1 #rfic:redstone run setblock ~ ~-1 ~1 air destroy
execute as @e[tag=redstone] at @s if block ~ ~-1 ~-1 #rfic:redstone run setblock ~ ~-1 ~-1 air destroy

execute as @e[tag=redstone] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:0b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~-1 ~ container.0 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=redstone] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:1b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~-1 ~ container.1 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=redstone] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:2b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~-1 ~ container.2 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=redstone] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:3b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~-1 ~ container.3 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=redstone] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:5b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~-1 ~ container.5 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=redstone] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:6b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~-1 ~ container.6 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=redstone] at @s unless block ~ ~-1 ~ dropper{Items:[{Slot:8b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~-1 ~ container.8 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
