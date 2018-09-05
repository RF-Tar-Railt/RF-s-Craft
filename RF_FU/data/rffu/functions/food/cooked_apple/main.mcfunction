tag @a[nbt={SelectedItem:{id:"minecraft:apple",tag:{id:"rf:cooked_apple",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.cooked_apple\"}"}}}}] add eatcap

scoreboard objectives add eatcap minecraft.used:minecraft.apple
execute as @a[tag=eatcap,scores={eatcap=1}] run effect give @s strength 10 6
execute as @a[tag=eatcap,scores={eatcap=1}] run effect give @s speed 10 6

tag @a[tag=eatcap] remove eatcap
scoreboard players set @a[scores={eatcap=1}] eatcap 0