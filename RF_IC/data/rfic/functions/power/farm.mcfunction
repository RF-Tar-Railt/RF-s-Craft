tag @e[tag=farm_machine,scores={RI=3200..}] add FullRI 
tag @e[tag=farm_machine,scores={RI=1..3199}] remove FullRI
tag @e[tag=farm_machine,scores={RI=..0}] add NoRI 
tag @e[tag=farm_machine,scores={RI=1..}] remove NoRI

execute as @e[tag=farm_machine,tag=!FullRI] at @s as @e[tag=battery,distance=..10,tag=!NoRI] run scoreboard players remove @s RI 5

execute as @e[tag=farm_machine,tag=!NoRI,tag=on_fam] at @s run scoreboard players remove @s RI 5