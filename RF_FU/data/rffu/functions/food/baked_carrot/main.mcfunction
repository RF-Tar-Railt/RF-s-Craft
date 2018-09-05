tag @a[nbt={SelectedItem:{id:"minecraft:carrot",tag:{id:"rf:cbaked_carrot",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.cbaked_carrot\"}"}}}}] add eatbcr

scoreboard objectives add eatbcr minecraft.used:minecraft.carrot
execute as @a[tag=eatcap,scores={eatbcr=1}] run effect give @s invisibility 10 24
execute as @a[tag=eatcap,scores={eatbcr=1}] run effect give @s speed 10 24

tag @a[tag=eatcap] remove eatbcr
scoreboard players set @a[scores={eatbcr=1}] eatbcr 0