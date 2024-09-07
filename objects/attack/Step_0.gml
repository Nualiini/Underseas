changed = false
if despawn > 0 {
	if image_angle < despawn {
 image_angle += accel
} else {
image_alpha-=0.1
}
}
if despawn < 0 {
	if image_angle > despawn {
 image_angle -= accel
} else {
image_alpha-=0.1
}
}

accel++
if image_alpha < 0 {
	instance_destroy()
}
x = plr.x
y = plr.y
image_xscale = plr.image_xscale - (0.25 * plr.image_xscale)
