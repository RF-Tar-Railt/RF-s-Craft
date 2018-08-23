scoreboard objectives add tv minecraft.used:minecraft.carrot_on_a_stick

tag @p[scores={tv=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{id:"rf:tv_remote",Unbreakable:1b,HideFlags:63,display:{Name:"{\"translate\": \"item.rfcraft.tvremote\"}"},Damage:1},Count:1b}}] add uing_remote

#scoreboard players set @p[tag=!uing_remote] tv 0

execute as @a[scores={tv=0}] at @s run execute as @e[tag=tv,distance=..6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:14},Count:1b}]}
execute as @a[tag=uing_remote,scores={tv=1}] at @s run execute as @e[tag=tv,distance=..6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:15},Count:1b}]}
#execute as @a[tag=uing_remote,scores={tv=2}] at @s run execute as @e[tag=tv,distance=..6] run playsound 325 block @a ~ ~ ~ 10 1
execute as @a[tag=uing_remote,scores={tv=2}] at @s run execute as @e[tag=tv,distance=..6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:16},Count:1b}]}
execute as @a[tag=uing_remote,scores={tv=3}] at @s run execute as @e[tag=tv,distance=..6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:17},Count:1b}]}
execute as @a[tag=uing_remote,scores={tv=4}] at @s run execute as @e[tag=tv,distance=..6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:18},Count:1b}]}
execute as @a[tag=uing_remote,scores={tv=5}] at @s run execute as @e[tag=tv,distance=..6] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",tag:{Damage:19},Count:1b}]}

scoreboard players set @p[scores={tv=6}] tv 0
tag @p remove uing_remote
