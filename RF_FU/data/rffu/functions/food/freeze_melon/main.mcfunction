tag @a[nbt={SelectedItem:{id:"minecraft:melon_slice",tag:{id:"rf:freeze_melon_slice",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_melon_slice\"}"}}}}] add eatzmn

scoreboard objectives add eatzmn minecraft.used:minecraft.melon_slice
execute as @a[tag=eatzmn,scores={eatzmn=1}] run effect give @s regeneration 10 24
execute as @a[tag=eatzmn,scores={eatzmn=1}] run effect give @s absorption 10 6

tag @a[tag=eatzmn] remove eatzmn
scoreboard players set @a[scores={eatzmn=1}] eatzmn 0