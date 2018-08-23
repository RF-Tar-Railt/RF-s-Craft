scoreboard objectives add sec dummy
scoreboard objectives add tick dummy
scoreboard players add @a[tag=micro] tick 1
scoreboard players add @a[tag=micro,scores={tick=20..}] sec 1
execute as @a[tag=micro,scores={tick=20..}] at @s run scoreboard players set @a[tag=micro] tick 0

execute as @a[tag=micro,scores={sec=15..,tick=17..19}] at @s run execute as @e[tag=Mic] at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 10 1

execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicBeef] at @s run execute as @e[type=item,scores={MicItm=1}] run data merge entity @s {Item:{id:"minecraft:cooked_beef",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicPork] at @s run execute as @e[type=item,scores={MicItm=2}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicMut] at @s run execute as @e[type=item,scores={MicItm=3}] run data merge entity @s {Item:{id:"minecraft:cooked_mutton",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicFish] at @s run execute as @e[type=item,scores={MicItm=4}] run data merge entity @s {Item:{id:"minecraft:cooked_cod",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicFish1] at @s run execute as @e[type=item,scores={MicItm=5}] run data merge entity @s {Item:{id:"minecraft:cooked_salmon",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicChick] at @s run execute as @e[type=item,scores={MicItm=6}] run data merge entity @s {Item:{id:"minecraft:cooked_chicken",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicPota] at @s run execute as @e[type=item,scores={MicItm=7}] run data merge entity @s {Item:{id:"minecraft:baked_potato",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicWh] at @s run execute as @e[type=item,scores={MicItm=8}] run data merge entity @s {Item:{id:"minecraft:bread",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicPump] at @s run execute as @e[type=item,scores={MicItm=9}] run data merge entity @s {Item:{id:"minecraft:pumpkin_pie",Count:1b}}
execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic,tag=MicRa] at @s run execute as @e[type=item,scores={MicItm=10}] run data merge entity @s {Item:{id:"minecraft:cooked_rabbit",Count:1b}}

execute as @a[tag=micro,scores={sec=15..}] at @s run execute as @e[tag=Mic] at @s run execute as @s run data merge entity @s {Tags:["Mic"]}
execute as @a[tag=micro] at @s run scoreboard players reset @e MicItm
execute as @a[tag=micro,scores={sec=16..}] at @s run execute as @e[tag=Mic] at @s run tag @a[tag=micro] remove micro
execute as @a[scores={sec=16..}] at @s run scoreboard players set @a sec 0

