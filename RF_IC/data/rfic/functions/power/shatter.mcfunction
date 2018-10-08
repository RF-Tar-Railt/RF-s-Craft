tag @e[tag=shatter,scores={RI=3200..}] add FullRI 
tag @e[tag=shatter,scores={RI=1..3199}] remove FullRI
tag @e[tag=shatter,scores={RI=..0}] add NoRI 
tag @e[tag=shatter,scores={RI=1..}] remove NoRI

execute as @e[tag=shatter,tag=!FullRI] at @s as @e[tag=battery,distance=..10,tag=!NoRI] run scoreboard players remove @s RI 5
execute as @e[tag=shatter,tag=!NoRI,tag=shattering] at @s run scoreboard players remove @s RI 5