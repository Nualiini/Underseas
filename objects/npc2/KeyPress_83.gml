if distance_to_object(plr) < 50 {
if global.npc2spokento = false{
  var speech = instance_create_layer(x,y,"dialogue",dialogue)
with speech {
	dial[0] = "The ripples.."
	dial[1] = "Does the village stand.."
	dial[2] = "Lord have mercy, Yelah we are sorry."
	dial[3] = "O' being, take this key, see if the village stands."
	dial[4] = "*Received Key*"
}
global.gotkey1 +=1
global.npc2spokento = true
} else {

  var speech1 = instance_create_layer(x,y,"dialogue",dialogue)
with speech1 {
	dial[0] = "The ripples.."
	dial[1] = "Does the village stand.."
	dial[2] = "Lord have mercy, Yelah we are sorry."
}}
}