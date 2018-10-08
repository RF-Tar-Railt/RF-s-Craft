tag @e[tag=battery,tag=b_low,scores={RI=64000..}] add FullRI 
tag @e[tag=battery,tag=b_low,scores={RI=1..63999}] remove FullRI
tag @e[tag=battery,tag=b_low,scores={RI=..0}] add NoRI 
tag @e[tag=battery,tag=b_low,scores={RI=1..}] remove NoRI

execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=crop_get_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 3
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=farm_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 4
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=shatter,distance=..10,tag=!FullRI] run scoreboard players add @s RI 4
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=mine_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 8
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=compressor,distance=..10,tag=!FullRI] run scoreboard players add @s RI 12
