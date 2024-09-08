x = camera.x
y = camera.y
if disappear {
image_alpha-=0.1
if image_alpha < 0 {
	instance_destroy()
}
}