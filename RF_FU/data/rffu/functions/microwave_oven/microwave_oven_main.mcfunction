scoreboard players add @a[tag=micro] tick 1
scoreboard players add @a[tag=micro,scores={tick=20..}] sec 1
execute as @a[tag=micro,scores={tick=20..}] at @s run scoreboard players set @a[tag=micro] tick 0

execute as @a[tag=micro,scores={sec=15..,tick=17..19}] at @s as @e[tag=Mic] at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 10 1

execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicBeef] at @s as @e[type=item,distance=..2,scores={MicItm=1}] run data merge entity @s {Item:{id:"minecraft:cooked_beef"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicPork] at @s as @e[type=item,distance=..2,scores={MicItm=2}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicMut] at @s as @e[type=item,distance=..2,scores={MicItm=3}] run data merge entity @s {Item:{id:"minecraft:cooked_mutton"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicFish] at @s as @e[type=item,distance=..2,scores={MicItm=4}] run data merge entity @s {Item:{id:"minecraft:cooked_cod"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicFish1] at @s as @e[type=item,distance=..2,scores={MicItm=5}] run data merge entity @s {Item:{id:"minecraft:cooked_salmon"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicChick] at @s as @e[type=item,distance=..2,scores={MicItm=6}] run data merge entity @s {Item:{id:"minecraft:cooked_chicken"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicPota] at @s as @e[type=item,distance=..2,scores={MicItm=7}] run data merge entity @s {Item:{id:"minecraft:baked_potato"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicWh] at @s as @e[type=item,distance=..2,scores={MicItm=8}] run data merge entity @s {Item:{id:"minecraft:bread"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicPump] at @s as @e[type=item,distance=..2,scores={MicItm=9}] run data merge entity @s {Item:{id:"minecraft:pumpkin_pie"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicRa] at @s as @e[type=item,distance=..2,scores={MicItm=10}] run data merge entity @s {Item:{id:"minecraft:cooked_rabbit"}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicAp] at @s as @e[type=item,distance=..2,scores={MicItm=11}] run data merge entity @s {Item:{id:"minecraft:apple",tag:{id:"rf:cooked_apple",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.cooked_apple\"}"}}}}
execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic,tag=MicCr] at @s as @e[type=item,distance=..2,scores={MicItm=12}] run data merge entity @s {Item:{id:"minecraft:carrot",tag:{id:"rf:baked_carrot",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.baked_carrot\"}"}}}}

execute as @a[tag=micro,scores={sec=15..}] at @s as @e[tag=Mic] at @s as @s run data merge entity @s {Tags:["Mic","testpoint"]}
execute as @a[tag=micro] at @s run scoreboard players reset @e MicItm
execute as @a[tag=micro,scores={sec=16..}] at @s as @e[tag=Mic] at @s run tag @a[tag=micro] remove micro
execute as @a[scores={sec=16..}] at @s run scoreboard players set @a sec 0

