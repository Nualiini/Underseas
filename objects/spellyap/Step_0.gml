x = camera.x
y = camera.y
if die {
	image_alpha-=0.05
}
if image_alpha < 0 {
	instance_destroy()
}