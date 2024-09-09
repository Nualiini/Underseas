//ParticleSystem1
var _ps = part_system_create();
part_system_draw_order(_ps, true);

//Emitter
var _ptype1 = part_type_create();
part_type_sprite(_ptype1, bubble_spr, false, true, false)
part_type_size(_ptype1, 2, 2, 0, 0);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 10, 15, 0, 0);
part_type_direction(_ptype1, 70, 120, 0, 0);
part_type_gravity(_ptype1, 1, 274);
part_type_orientation(_ptype1, 0, 0, 0, 0, false);
part_type_colour3(_ptype1, $FBFFD6, $FFFAB5, $F9FF91);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 80, 80);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -7.0045776, 7.0045776, -9.635681, 9.635681, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(_ps, _pemit1, _ptype1, 10);
part_emitter_delay(_ps, _pemit1, 1, 1, time_source_units_seconds)

part_system_position(_ps, self.x, self.y);


