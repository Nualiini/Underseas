draw_self()
hpoffset = 0
var cam = view_get_camera(0); // Get the camera from view 0

var camera_x = camera_get_view_x(cam); // X position of the camera
var camera_y = camera_get_view_y(cam); // Y position of the camera

repeat plr.hp {
	draw_sprite(hp_spr,plr.hpframe,camera_x+40+hpoffset*24,camera_y+40)
	hpoffset++
}

