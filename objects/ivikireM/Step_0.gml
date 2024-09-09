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
if forceY != 0 {
	y+=forceY
	x+=forceX
	if forceY > 0 {
	forceY--
	}
	if forceY < 0 {
	forceY++
	}
	if forceX > 0 {
	forceX--
	}
	if forceX < 0 {
	forceX++
	}
}
if place_meeting(x,y,plr) {
	audio_play_sound(retro_coin_4_236671,false,false)
	instance_destroy()
}