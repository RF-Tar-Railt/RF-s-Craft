tag @e[tag=battery,tag=b_hig,scores={RI=512000..}] add FullRI 
tag @e[tag=battery,tag=b_hig,scores={RI=1..511999}] remove FullRI
tag @e[tag=battery,tag=b_hig,scores={RI=..0}] add NoRI 
tag @e[tag=battery,tag=b_hig,scores={RI=1..}] remove NoRI

execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=crop_get_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 5
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=farm_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 6
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=shatter,distance=..10,tag=!FullRI] run scoreboard players add @s RI 6
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=mine_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 12
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=compressor,distance=..10,tag=!FullRI] run scoreboard players add @s RI 18