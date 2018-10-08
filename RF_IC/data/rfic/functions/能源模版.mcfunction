#替换：mine_machine,_mim,drill,ore

#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_block run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ lever[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ lever[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_torch[lit=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_torch[lit=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ repeater[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ repeater[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ comparator[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ comparator[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ tripwire_hook[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ tripwire_hook[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ stone_button[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ stone_button[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ oak_button[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ oak_button[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ birch_button[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ birch_button[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ spruce_button[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ spruce_button[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ jungle_button[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ jungle_button[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ acacia_button[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ acacia_button[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ dark_oak_button[powered=true] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ dark_oak_button[powered=false] run tag @s add off_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=1] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=2] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=3] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=4] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=5] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=6] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=7] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=8] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=9] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=10] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=11] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=12] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=13] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=14] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=15] run tag @s add on_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ redstone_wire[power=0] run tag @s add off_mim

#execute as @e[tag=mine_machine] at @s if block ~ ~ ~ air run tag @s add no_mim
#execute as @e[tag=mine_machine] at @s if block ^-1 ^ ^ air run tag @s add off_mim

#execute as @e[tag=mine_machine,tag=on_mim] at @s run #execute as @e[tag=drill,sort=nearest,limit=1] run tag @s add ore
#execute as @e[tag=mine_machine,tag=off_mim] at @s run #execute as @e[tag=drill,sort=nearest,limit=1] run tag @s remove ore
#execute as @e[tag=mine_machine,tag=no_mim] at @s run #execute as @e[tag=drill,sort=nearest,limit=1] run kill @s
#execute as @e[tag=mine_machine,tag=off_mim] at @s run #execute as @e[tag=drill,sort=nearest,limit=1] run tag @s remove ore

#execute as @e[tag=mine_machine] at @s run tag @s remove on_mim
#execute as @e[tag=mine_machine] at @s run tag @s remove off_mim
#execute as @e[tag=mine_machine] at @s run tag @s remove no_mim