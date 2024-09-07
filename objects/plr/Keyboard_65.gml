if not place_meeting(x+spd,y,collisions) {
	x-=spd
	if image_xscale == 1 {
	image_xscale = -1
	}
}