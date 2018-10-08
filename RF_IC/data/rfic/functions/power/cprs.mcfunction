tag @e[tag=compressor,scores={RI=3200..}] add FullRI 
tag @e[tag=compressor,scores={RI=1..3199}] remove FullRI
tag @e[tag=compressor,scores={RI=..0}] add NoRI 
tag @e[tag=compressor,scores={RI=1..}] remove NoRI

execute as @e[tag=compressor,tag=!FullRI] at @s as @e[tag=battery,distance=..10,tag=!NoRI] run scoreboard players remove @s RI 15
execute as @e[tag=compressor,tag=!NoRI,tag=compressing] at @s run scoreboard players remove @s RI 15

