#function rfic:mine_machine/break_give_blacklist
execute as @e[type=item,distance=..0.8] at @s run tp @s @e[tag=getore,sort=nearest,limit=1]
