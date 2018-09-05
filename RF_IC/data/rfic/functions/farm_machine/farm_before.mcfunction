execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_block run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ lever[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ lever[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_torch[lit=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_torch[lit=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ repeater[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ repeater[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ comparator[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ comparator[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ tripwire_hook[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ tripwire_hook[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ stone_button[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ stone_button[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ oak_button[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ oak_button[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ birch_button[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ birch_button[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ spruce_button[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ spruce_button[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ jungle_button[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ jungle_button[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ acacia_button[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ acacia_button[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ dark_oak_button[powered=true] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ dark_oak_button[powered=false] run tag @s add off_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=1] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=2] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=3] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=4] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=5] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=6] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=7] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=8] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=9] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=10] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=11] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=12] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=13] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=14] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=15] run tag @s add on_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ redstone_wire[power=0] run tag @s add off_fam

execute as @e[tag=farm_machine] at @s if block ~ ~ ~ air run tag @s add no_fam
execute as @e[tag=farm_machine] at @s if block ^ ^1 ^ air run tag @s add off_fam

execute as @e[tag=farm_machine,tag=on_fam] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",tag:{Damage:3},Count:1b}]}
execute as @e[tag=farm_machine,tag=on_fam] at @s run setblock ~ ~-1 ~ water
execute as @e[tag=farm_machine,tag=off_fam] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_shovel",tag:{Damage:2},Count:1b}]}

execute as @e[tag=farm_machine,tag=on_fam] positioned ~-4 ~-2 ~-4 run tag @e[tag=hoe,limit=1,dx=8,dy=3,dz=8] add hoing
execute as @e[tag=farm_machine,tag=off_fam] positioned ~-4 ~-2 ~-4 run tag @e[tag=hoe,limit=1,dx=8,dy=3,dz=8] remove hoing
execute as @e[tag=farm_machine,tag=no_fam] positioned ~-4 ~-2 ~-4 run kill @e[tag=hoe,limit=1,dx=8,dy=3,dz=8]

execute as @e[tag=farm_machine,tag=on_fam] positioned ~-4 ~-2 ~-4 run tag @e[tag=farm,limit=1,dx=8,dy=3,dz=8] add farming
execute as @e[tag=farm_machine,tag=off_fam] positioned ~-4 ~-2 ~-4 run tag @e[tag=farm,limit=1,dx=8,dy=3,dz=8] remove farming
execute as @e[tag=farm_machine,tag=no_fam] positioned ~-4 ~-2 ~-4 run kill @e[tag=farm,limit=1,dx=8,dy=3,dz=8]

execute as @e[tag=farm_machine] at @s run tag @s remove on_fam
execute as @e[tag=farm_machine] at @s run tag @s remove off_fam
execute as @e[tag=farm_machine] at @s run tag @s remove no_fam