execute as @e[tag=shelf1] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:book"}}] run data merge entity @s {DisabledSlots:30}
execute as @e[tag=shelf1] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:written_book"}}] run data merge entity @s {DisabledSlots:30}
execute as @e[tag=shelf1] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run data merge entity @s {DisabledSlots:30}
execute as @e[tag=shelf1] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:air"}}] run data merge entity @s {DisabledSlots:30}
execute as @e[tag=shelf1] at @s unless entity @p[nbt={SelectedItem:{id:"minecraft:book"}}] unless entity @p[nbt={SelectedItem:{id:"minecraft:written_book"}}] unless entity @p[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run data merge entity @s {DisabledSlots:31}

execute as @a at @s as @e[type=armor_stand,tag=shelf1,distance=..4] at @s run execute if block ~ ~ ~ air run kill @s
execute as @a at @s as @e[type=armor_stand,tag=shelf,distance=..4] at @s run execute if block ~ ~ ~ air run kill @s
execute as @a at @s run execute as @e[tag=Remove,name=Remove,type=ocelot,distance=..4] at @s run execute as @e[tag=shelf,name=testpoint,distance=..3] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air