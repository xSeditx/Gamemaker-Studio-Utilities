


mouse_position = new Vec2(0,0);
pointA = new Vec2(0,0);
pointB = new Vec2(0,0);
mid_point = new Vec2(0,0);
center = new Vec2(0, 0);
vec_norms = new Vec2(0,0);
vec_direction  = new Vec2(0,0);

rotate_vec = new Vec2(100, 100);
rotate_angle = 0;

///============================================================================================================================
///
///============================================================================================================================

Sun = new Vec2(room_width * .5, room_height * .5);

planet1_dist = min(room_width * .5, room_height * .5);
planet1 = Sun.add2D( planet1_dist,  0);
planet1_up = new Vec2(0,0);

moon1_dist = planet1.distance(Sun) * 0.5;
moon1 = planet1.subtract2D(moon1_dist, 0)
moon1_up= new Vec2(0,0);

moon2_dist = planet1.distance(moon1) * 0.5;
moon2 = moon1.subtract2D(moon2_dist, 0);
moon2_up = new Vec2(0,0);

///============================================================================================================================


var cossin;
var new_Cos;
//hypotenuse = new Vec2(0,0);

//    = new Vec2(0,0);
 