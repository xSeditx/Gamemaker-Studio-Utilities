//draw_self();
origin.draw_vec2_color(6, c_orange)

//draw_set_alpha(0.5)

pointA.draw_vec2_color(6, c_red)
pointB.draw_vec2_color(6, c_green)
pointC.draw_vec2_color(6, c_blue)

pointA.draw_line_vec_general(pointC,5,c_red)
pointC.draw_line_vec_general(pointB,5,c_blue) 
pointB.draw_line_vec_general(pointA,5,c_green) 

var radius = origin.distance(pointA);
draw_circle_color_vec(origin, radius, c_dkblue, true)


///==============================================================
/// THEOREM TEST
///==============================================================
/// Title:  Formula for rotating a vector in 2D
/// Source: https://matthew-brett.github.io/teaching/rotation_2d.html
///==============================================================
test_angle -= .05;
var angle_a = 0;//-test_angle;
var angle_b = test_angle;


test_rotate = pointA.rotate(origin, angle_b);
origin.draw_line_vec_general( test_rotate, 5, c_green);
test_rotate.draw_vec2_color(10, c_purple)


var ten = test_rotate.add2D(150, 0)
ten.inline_rotate(test_rotate, angle_a* 30.0);
test_rotate.draw_line_vec_general( ten, 3, c_ltblue);
ten.draw_vec2_color(7, c_ltgreen)

var m2 = ten.add2D(50, 0)
m2.inline_rotate(ten, angle_b * 60.0);
ten.draw_line_vec_general( m2, 1, c_ltblue);
m2.draw_vec2_color(5, c_ltgreen)

