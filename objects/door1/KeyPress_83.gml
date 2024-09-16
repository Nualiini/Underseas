if distance_to_object(plr) < 50 {


if global.gotkey1 < 3 {
  var speech = instance_create_layer(x,y,"dialogue",dialogue)
with speech {
	dial[0] = "A door with 3 locks, even if you try to push it up nothing happens. It is real strong."
	dial[1] = "You currently have " + string(global.gotkey1) + " key(s)"

}
} else {
  var speech1 = instance_create_layer(x,y,"dialogue",dialogue)
with speech1 {
	dial[0] = "You insert all 3 keys into the locks, all keys broke apart in the process, the door opens."
	

}
opening = true
}


}
