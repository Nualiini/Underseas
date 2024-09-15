targetl = layer_get_id("secret")
to = false

if global.broken1 {
	instance_destroy()
	layer_set_visible(targetl,false)
}