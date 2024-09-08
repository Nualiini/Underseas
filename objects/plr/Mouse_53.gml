if not instance_exists(attack) && sprite_index == plr_spr_1{
if image_xscale = -2 {
instance_create_layer(x+16,y,"Instances",attack)
}else {
instance_create_layer(x-16,y,"Instances",attack)
}
}