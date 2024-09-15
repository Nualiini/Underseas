x+=lengthdir_x(3,direction)
y+=lengthdir_y(3,direction)
if die {
	image_alpha -= 0.05
	if image_alpha < 0 {
	instance_destroy()
	}
}