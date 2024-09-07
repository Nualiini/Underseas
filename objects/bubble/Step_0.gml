y-=life / 60
image_angle+=life/15
life--
if life < 1 {
	image_index++
}
if image_index > 2.98 {
	instance_destroy()
}
