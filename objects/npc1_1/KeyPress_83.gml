if distance_to_object(plr) < 50 {
  var speech = instance_create_layer(x,y,"dialogue",dialogue)
with speech {
	dial[0] = "The ripples"
	dial[1] = "Does the village stand.."
}
}