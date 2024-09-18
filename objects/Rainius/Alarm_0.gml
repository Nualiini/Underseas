	dir = 0
var move = irandom_range(1,3)
if move == 1 {
tofall = true
} else if move == 2  {

	repeat 7 {
	var bub = instance_create_layer(x,y,"Instances",bigbubbel)
	bub.direction = self.dir
	dir+=48
	}
} else if move == 3 {
dir = irandom_range(3,12) * 24
	repeat 10 {
	var bub = instance_create_layer(plr.x,plr.y,"Instances",bigbubbel2)
	bub.direction = self.dir
	with bub {
	x += lengthdir_x(240,direction)
y += lengthdir_y(240,direction)
	}
	bub.depth = -1000
	dir+=24
	}
}
alarm[0] = 3 * 60