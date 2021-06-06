draw_self()
draw_set_color(c_blue)
draw_set_alpha(0.5)

draw_triangle_vec(vec1, vec2, vec3)
draw_polygon_general_vec(origin, polygon, c_blue, 5)
draw_polygon_general_vec(origin2, polygon, c_green, 3)

draw_polygon_general_vec(origin, [vec1, vec2, vec3], c_yellow, 3)