tag @e[tag=battery,tag=b_mid,scores={RI=128000..}] add FullRI 
tag @e[tag=battery,tag=b_mid,scores={RI=1..127999}] remove FullRI
tag @e[tag=battery,tag=b_mid,scores={RI=..0}] add NoRI 
tag @e[tag=battery,tag=b_mid,scores={RI=1..}] remove NoRI

execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=crop_get_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 4
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=farm_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 5
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=shatter,distance=..10,tag=!FullRI] run scoreboard players add @s RI 5
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=mine_machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 10
execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=compressor,distance=..10,tag=!FullRI] run scoreboard players add @s RI 15