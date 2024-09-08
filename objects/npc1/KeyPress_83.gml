if distance_to_object(plr) < 100 {
  var speech = instance_create_layer(x,y,"dialogue",dialogue)
with speech {
	dial[0] = "Oh, hello! Havent seen you around, or.. anyone for that matter."
	dial[1] = "It's a curse and a blessing living in here, no one to bother me, yet no one to keep me company."
	dial[2] = "Oh, my house? It's long gone, I mean.. Its still standing. But since the great rain happened.."
	dial[3] = "It ruined, even shattered everything in there. I just stand out here now, and pray to have food for even one more day."
	dial[4] = "How about you do me a favor, see why the great rain happened. Life cannot continue like this.."
}
}