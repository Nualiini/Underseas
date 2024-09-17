if distance_to_object(plr) < 50 {

  var speech = instance_create_layer(x,y,"dialogue",dialogue)
  transform = true
with speech {
	dial[0] = "*The person stays idle, breathing slowly.* \nThe person says:"
	dial[1] = "You arent here to stop Yelah, are you?.. help me. \nThe swan continues:"
	dial[2] = "You.. you evildoer. "
	dial[3] = "YOU ARE NEVER STOPPING YELAH! OUR OVERSEER! HE IS PERFECT, NEVER ENDING AND ALL POWERFUL. YOU ARE NEVER LEAVING THIS PLACE!"

}

}