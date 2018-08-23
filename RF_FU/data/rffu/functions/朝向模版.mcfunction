#//测定玩家朝向，正南为0,水平为0
#//若没有侧面式则用第二种
execute as @a[x_rotation=20..90,y_rotation=-45..44] at @s run function test:1
execute as @a[x_rotation=20..90,y_rotation=45..134] at @s run function test:1
execute as @a[x_rotation=20..90,y_rotation=135..224] at @s run function test:1
execute as @a[x_rotation=20..90,y_rotation=225..314] at @s run function test:1
execute as @a[x_rotation=-89..19,y_rotation=-45..44] at @s run function test:1
execute as @a[x_rotation=-89..19,y_rotation=45..134] at @s run function test:1
execute as @a[x_rotation=-89..19,y_rotation=135..224] at @s run function test:1
execute as @a[x_rotation=-89..19,y_rotation=225..314] at @s run function test:1

execute as @a[y_rotation=-45..44] at @s run function test:1
execute as @a[y_rotation=45..134] at @s run function test:1
execute as @a[y_rotation=135..224] at @s run function test:1
execute as @a[y_rotation=225..314] at @s run function test:1