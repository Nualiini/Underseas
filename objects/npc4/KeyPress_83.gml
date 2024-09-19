if distance_to_object(plr) < 50 {
  var speech = instance_create_layer(x,y,"dialogue",dialogue)
with speech {
	dial[0] = "O, O! Plant wall! "
	dial[1] = "Come down for once! O, O Wall!"
	dial[2] = "For you havent been down for years, why must it stay that way?"
}
}