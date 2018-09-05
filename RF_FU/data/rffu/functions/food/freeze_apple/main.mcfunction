tag @a[nbt={SelectedItem:{id:"minecraft:apple",tag:{id:"rf:freeze_apple",HideFlags:63,display:{Name:"{\"translate\":\"item.rfcraft.freeze_apple\"}"}}}}] add eatzap

scoreboard objectives add eatzap minecraft.used:minecraft.apple
execute as @a[tag=eatzap,scores={eatzap=1}] run effect give @s fire_resistance 10 24
execute as @a[tag=eatzap,scores={eatzap=1}] run effect give @s absorption 10 6

tag @a[tag=eatzap] remove eatzap
scoreboard players set @a[scores={eatzap=1}] eatzap 0