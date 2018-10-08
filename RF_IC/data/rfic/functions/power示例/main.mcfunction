#scoreboard objectives add RI dummy
#tag @e[tag=battery,scores={RI=1000..}] add FullRI 
#tag @e[tag=battery,scores={RI=1..999}] remove FullRI
#tag @e[tag=battery,scores={RI=..0}] add NoRI 
#tag @e[tag=battery,scores={RI=1..999}] remove NoRI

#tag @e[tag=machine,scores={RI=100..}] add FullRI 
#tag @e[tag=machine,scores={RI=1..99}] remove FullRI
#tag @e[tag=machine,scores={RI=..0}] add NoRI 
#tag @e[tag=machine,scores={RI=1..99}] remove NoRI

#execute as @e[tag=battery,tag=!NoRI] at @s as @e[tag=machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 1
#execute as @e[tag=machine,tag=!FullRI] at @s as @e[tag=battery,distance=..10,tag=!NoRI] run scoreboard players remove @s RI 1
#execute as @e[tag=generator] at @s as @e[tag=battery,distance=..10,tag=!FullRI] run scoreboard players add @s RI 2
#execute as @e[tag=generator] at @s as @e[tag=machine,distance=..10,tag=!FullRI] run scoreboard players add @s RI 2

#execute as @e[tag=machine,tag=!NoRI,tag=Open] at @s run scoreboard players remove @s RI 1