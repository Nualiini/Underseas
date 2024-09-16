if distance_to_object(plr) < 50 {
  var speech = instance_create_layer(x,y,"dialogue",dialogue)
with speech {
	dial[0] = "A key, made of seastone. It seemingly has gemstones in it."
	dial[1] = "This could be useful. You pick it up"

}
instance_destroy()

	global.extinct[$uuid] = true

	

global.gotkey1 += 1
}

