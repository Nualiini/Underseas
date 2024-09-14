x+=lengthdir_x(4,dir)
y+=lengthdir_y(4,dir)
if place_meeting(x,y,plr.collisions) {
	instance_destroy()
}

x+=random_range(-0.5,0.5)
y+=random_range(-0.5,0.5)