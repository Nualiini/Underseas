if not place_meeting(x,y+accel,collisions) {
	y+=accel
	if accel < 4 {
	accel+=0.5
	}
} else {
	accel=0
}
if keyboard_check(ord("A")) or keyboard_check(ord("D")) {
	image_speed = 2
} else {
	image_speed = 0
}