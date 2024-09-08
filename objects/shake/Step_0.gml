fx_set_parameter(shakefx, "g_Magnitude", shake_magnitude);
fx_set_parameter(shakefx, "g_ShakeSpeed", shake_speed);

// Fall to 0
if (shake_magnitude > 0)
{
	shake_magnitude -= 0.4;
} else {instance_destroy()}
