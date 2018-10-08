tag @e[tag=mine_machine,scores={RI=3200..}] add FullRI 
tag @e[tag=mine_machine,scores={RI=1..3199}] remove FullRI
tag @e[tag=mine_machine,scores={RI=..0}] add NoRI 
tag @e[tag=mine_machine,scores={RI=1..}] remove NoRI

execute as @e[tag=mine_machine,tag=!FullRI] at @s as @e[tag=battery,distance=..10,tag=!NoRI] run scoreboard players remove @s RI 10


