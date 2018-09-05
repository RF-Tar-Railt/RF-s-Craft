tag @a[nbt={SelectedItem:{id:"minecraft:carrot",tag:{id:"rf:freeze_carrot",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_carrot\"}"}}}}] add eatzcr

scoreboard objectives add eatzcr minecraft.used:minecraft.carrot
execute as @a[tag=eatzcr,scores={eatzcr=1}] run effect give @s night_vision 10 24
execute as @a[tag=eatzcr,scores={eatzcr=1}] run effect give @s absorption 10 6

tag @a[tag=eatzcr] remove eatzcr
scoreboard players set @a[scores={eatzcr=1}] eatzcr 0