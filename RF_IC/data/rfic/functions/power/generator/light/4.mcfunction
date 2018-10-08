##machine
execute as @e[tag=crop_get_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 16
execute as @e[tag=farm_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 20
execute as @e[tag=shatter,distance=..10,tag=!FullRI] run scoreboard players add @s RI 20
execute as @e[tag=mine_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 40
execute as @e[tag=compressor,distance=..10,tag=!FullRI] run scoreboard players add @s RI 45

##battery
execute as @e[tag=battery,tag=b_low,distance=..10,tag=!FullRI] run scoreboard players add @s RI 40
execute as @e[tag=battery,tag=b_mid,distance=..10,tag=!FullRI] run scoreboard players add @s RI 60
execute as @e[tag=battery,tag=b_hig,distance=..10,tag=!FullRI] run scoreboard players add @s RI 80