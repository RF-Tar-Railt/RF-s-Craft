execute as @a at @s as @e[type=armor_stand,tag=freeze,distance=..6] at @s unless block ~ ~ ~ chest run setblock ~ ~-1 ~ air
execute as @a at @s as @e[type=armor_stand,tag=freeze,distance=..6] at @s unless block ~ ~ ~ chest run kill @s

execute as @a at @s as @e[type=armor_stand,tag=freeze,distance=..6] at @s unless block ~ ~-1 ~ chest run setblock ~ ~ ~ air
execute as @a at @s as @e[type=armor_stand,tag=freeze,distance=..6] at @s unless block ~ ~-1 ~ chest run kill @s

execute as @a at @s as @e[type=armor_stand,tag=ice,distance=..6] at @s unless block ~ ~ ~ chest run kill @s
execute as @a at @s as @e[type=armor_stand,tag=ice,distance=..6] at @s unless block ~ ~ ~ chest run setblock ~ ~1 ~ air
execute as @a at @s as @e[type=armor_stand,tag=ice,distance=..6] at @s unless block ~ ~1 ~ chest run kill @s
execute as @a at @s as @e[type=armor_stand,tag=ice,distance=..6] at @s unless block ~ ~1 ~ chest run setblock ~ ~ ~ air

execute as @e[tag=ice] at @s run function rffu:refrigerator/refrigerator_main

execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:0b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.0 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:1b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.1 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:2b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.2 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:3b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.3 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:4b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.4 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:5b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.5 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:6b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.6 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:7b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.7 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:8b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.8 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}

execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:9b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.9 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:10b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.10 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:12b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.12 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:14b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.14 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}

execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:13b,tag:{id:"rf:gui_fri"}}]} run replaceitem block ~ ~ ~ container.13 minecraft:wooden_hoe{Damage:16,Unbreakable:1b,id:"rf:gui_fri",HideFlags:63,display:{Name:"\"\""}}

execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:16b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.16 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:17b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.17 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}

execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:18b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.18 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:19b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.19 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:20b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.20 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:21b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.21 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:22b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.22 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:23b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.23 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:24b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.24 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:25b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.25 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}
execute as @e[tag=ice] at @s unless block ~ ~ ~ chest{Items:[{Slot:26b,tag:{id:"rf:gui_side"}}]} run replaceitem block ~ ~ ~ container.26 minecraft:golden_axe{Damage:31,Unbreakable:1b,id:"rf:gui_side",HideFlags:63,display:{Name:"\"\""}}