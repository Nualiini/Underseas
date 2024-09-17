if transform && not instance_exists(dialogue) {
	instance_create_layer(x,y,"Instances", Rainius)
	instance_create_layer(x,y,"Instances", shake)
	instance_destroy()
}