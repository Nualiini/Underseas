x += lengthdir_x(-2,direction)
y += lengthdir_y(-2,direction)
direction+=diradd
diradd-=0.05
if diradd < -7 {
	die = true
}
if image_alpha< 0{
	instance_destroy()
}

if place_meeting(x,y,bigbubbel2) && todie {
die = true
}
if die {
	image_xscale +=0.05
	image_yscale +=0.05
	image_alpha-=0.075
}
if place_meeting(x,y,attack) {
plr.forceY -=5
}

