if place_meeting(x,y,plr) {
	global.spell1 = true
	instance_destroy()
	var yap = instance_create_layer(x,y,"dialogue",spellyap)
	yap.depth = -999999999999
}