if untilheal > 0{
untilheal--
instance_create_layer(x,y,"Instances",water_particle)
} else {
	if pressed {
	if hp < 5 {
	hp++
	}
	pressed = false
	spd = 3
	var spin =  0
	repeat 24{
	var part = instance_create_layer(x,y,"Instances",water_particle)
	part.direction = spin
	spin+=15
	}
	water--
	healed = true
	}
}