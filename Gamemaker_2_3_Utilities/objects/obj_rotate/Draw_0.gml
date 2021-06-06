draw_self();
origin.draw_vec2_color(6, c_orange)

draw_set_alpha(0.5)

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
test_angle-= .05;
var angle_a = 0;
var angle_b = test_angle;
rotated.x = origin.x + (( pointA.x * dcos(angle_b) ) - ( pointA.y * dsin(angle_b) ) );
rotated.y = origin.y + (( pointA.x * dsin(angle_b) ) + ( pointA.y * dcos(angle_b) ) );

origin.draw_line_vec_general( rotated, 5, c_green);
rotated.draw_vec2_color(10, c_purple)