if not place_meeting(x,y+accel,plr.collisions) {
		y+=accel
	onground = false
	if accel < 10{
	accel+=0.25
	}
} else {
	onground = true
	accel=0
}
x += spd * dir
image_xscale = 2 * dir
if place_meeting(x+-1*dir,y-9,plr.collisions) && not turncd {
	dir*=-1
	turncd = 20
}
if turncd > 0 {
	turncd--
}
if place_meeting(x,y,attack) && iframes < 1 {
	repeat 5{
		instance_create_layer(x,y,"Instances",bubble)
		flash=10
	}
	hp-=1
	iframes+=30
}
if iframes > 0 {
	iframes--
}
if flash > 0 {
	flash--
}
if hp < 1 && not dead {
	flash = 60
	dead = true
	spd = -0.5
}
if dead && flash < 1 {
	repeat 50{
		var _bubble = instance_create_layer(x,y,"Instances",bubble)
		_bubble.depth = self.depth + 1
		instance_destroy()
		repeat 5 {
instance_create_layer(x,y,"Instances",ivikireM)
		}
	
}
}
if dead && flash > 0 {
	repeat 5{
		instance_create_layer(x,y,"Instances",bubble)
		var _bubble = instance_create_layer(x,y,"Instances",bubble)
		_bubble.depth = self.depth - 1
	
}
}