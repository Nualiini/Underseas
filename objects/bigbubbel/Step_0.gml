x += lengthdir_x(2,direction)
y += lengthdir_y(2,direction)
direction+=diradd
if diradd > -10{
diradd-=0.05
}
if image_alpha< 0{
	instance_destroy()
}

if place_meeting(x,y,attack) {
die = true
}
if die {
	image_xscale +=0.05
	image_yscale +=0.05
	image_alpha-=0.075
}