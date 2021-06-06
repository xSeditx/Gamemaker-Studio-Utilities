

Sun.draw_line_angle(0, 150,2, c_dkred);

rotate_angle += .01;

        var test = new Vec2(1,1);
		draw_set_alpha(0.70)


planet1_up = planet1.rotate(Sun, rotate_angle);
planet1_up.inline_sub(planet1)

moon1_up = moon1.rotate(planet1, 0);// * (1/3));
moon1_up.inline_sub(moon1);

moon2_up = moon2.rotate(moon1, 0);// * (1/3)) * ( 1/3) );
moon2_up.inline_sub(moon2);


planet1.inline_add(planet1_up);
moon1.inline_add(moon1_up);
moon2.inline_add(moon2_up);


moon1.draw_line_vec_general(planet1, 2, c_dkgrey);
moon2.draw_line_vec_general(moon1, 2, c_ltgrey)

Sun.draw_vec2_color(20, c_yellow);
planet1.draw_vec2_color(6, c_lime);
moon2.draw_vec2_color(3, c_ltgrey);
moon1.draw_vec2_color(5, c_dkgrey);


//draw_self();

//cx = 620;  //room_width  * 0.5 + 8 ;
//cy = 520;  //room_height * 0.5 + 140;
//
//  
//mouse_position.set(mouse_x, mouse_y);
//center.set(620, 520);
//
//pointB.set(800,330);
//pointA.set(440,330);
//
//
//vec_direction = pointB.subtract(pointA);
//vec_direction.inline_normalize();
//
//vec_length = pointA.distance(pointB);
//
//draw_set_color( make_color_rgb(255, 127,127) );
//pointB.draw_vec2(5);
//pointA.draw_vec2(5);
//center.draw_vec2(5);
//mouse_position.draw_vec2(5)
//
//
//draw_set_color(c_lime)
//vec_direction.draw_vec2(4);
//pointA.draw_line_width_to_point
//(
//  pointA.x + (vec_direction.x * vec_length),
//  pointA.y + (vec_direction.y * vec_length),
//  3
//); 
//
//
//draw_set_color(c_blue)
//var mid_point = new Vec2( center.x, pointA.y + (vec_direction.y * vec_length));
//pointA.draw_line_width_to_vec(mid_point,  3); 
//
//
//surface_normal = pointB.line_normal(pointA);
//surface_normal.set( -surface_normal.y, surface_normal.x);
//var new_point = surface_normal.multiply2D(100,100);
//
//draw_set_color(c_olive);
//draw_line_width_vec2D(mid_point, new_point, 3);

 



///{/// OLD 
///    p1x = 800;
///    p1y = 330;
///    p2x = 440;
///    p2y = 330;
///    
///    dist = get_distance(p1x, p1y, p2x, p2y); // point_distance(p1x, p1y, mx, my);
///    ang  = point_direction(p1x, p1y, p2x, p2y);
///    
///    midx = p1x +  cos(degtorad(ang)) * ( dist * 0.5);
///    midy = p1y + -sin(degtorad(ang)) * ( dist * 0.5);
///      
///    //angle = point_direction(p1x, p1y, mx, my);
///    //adj = p1x - p2x; // a
///    //opp = p1y - p2y; // o
///    hyp = get_distance(p1x, p1y, p2x, p2y);//sqrt((p2x * p1x) + (p2y * p1y));  //point_distance(cx, cy, p1x, p1y);
///    
///    var hypotenuse = pointA.distance(pointB);
///    /////==============================================================================
///    ///// Find the Normal Vector for A 
///    /////==============================================================================
///     
///    VecX = p2x - p1x;
///    VecY = p2y - p1y;
///    NormalX =  (VecX / hyp);
///    NormalY =  (VecY / hyp);
///    
///    Nx = midx + (-NormalY * dist)
///    Ny = midy + ( NormalX * dist)
///    //norm.set(Nx, Ny);
/// 
/// 
///    draw_set_color(c_red);
///    draw_line_width( p1x, p1y, p2x, p2y, 5);
///    draw_line_width( midx, midy, Nx, Ny, 4);
/// 
///    draw_set_color(c_purple);
///    //draw_line_width(cx, cy, mx, my,5);
///    
///    rdist  = get_distance(mx,my,midx,midy);
///    rangle = point_direction(mx,my,midx,midy);
///    Vx = (midx - mx) / rdist
///    Vy = (midy - my) / rdist;
///    
///    draw_line_width(mx,my, mx + (Vx * rdist),my + (Vy * rdist) ,4);
///    draw_line_width(mx + (Vx * rdist),my + (Vy * rdist),(mx + (NormalX * rdist)) ,(NormalY + (Vy * rdist))  , 4);
///}
///
///
///
///
///
///{ /// Vec2    
///		
///    mouse_position.set(mouse_x, mouse_y);
///
///    pointA.set(800,330);
///    pointB.set(440,330);
///	                                    
///	// FIND THE DISTANCE AND ANGLE OF THE VECTOR    _________________\ 
///	distance = pointA.distance( pointB); //         pointA -> pointB /
///    vecAngle = pointA.deg_angle(pointB); // 
///    mid_point = pointA.add2D( cos(degtorad(vecAngle)) * ( distance * 0.5), -sin(degtorad(vecAngle)) * ( distance * 0.5) );
///	
///	
///    draw_set_color(c_red);    
///	pointA.draw_vec2(5);
///	
///    draw_set_color(c_navy);
///	pointB.draw_vec2(5);
///	
///    draw_set_color(c_lime);
///	mid_point.draw_vec2(5);
///
///	draw_set_color(c_green);
///    draw_line_vec2D( pointA, pointB, 2);   
///    draw_line_vec2D( mid_point, norm, 2);
///    norm.draw_vec2(5);
/// 
///    var point_diff = pointB.subtract(pointA) 
///    var dist = point_diff.length();
///	
///    var Normal = point_diff
///	    Normal.inline_normalize();
///	Normal.set(-Normal.y * dist, Normal.x * dist);	
///	Normal.inline_add(mid_point);
///
///    draw_set_color(c_blue);
///	
///    var r_dist  = mouse_position.distance(mid_point);  
///    var r_angle = mouse_position.deg_angle(mid_point); 
///    
///    mid_point.draw_vec2(5);
///    
///    V = mid_point.subtract(mouse_position);
///	V.inline_div2D( r_dist, r_dist)
///	var G  = mid_point.subtract(mouse_position);
///	G.inline_normalize();
///    //;// Prob dobn't need to do this if I am gonna reverse it next step..
///    
///    draw_line_width
///	(
///	    mouse_position.x, mouse_position.y,
///	    mouse_position.x +  V.x, mouse_position.y +  V.y,
///	    4
///	);
/// 
///
///    draw_line_width
///	(
///	    mouse_position.x + V.x, mouse_position.y + V.y,
///	    mouse_position.x + Normal.x, Normal.y + V.y, 
///	    4
///	);
///
///
///    draw_line_width
///	(
///	    mouse_position.x + (V.x * r_dist),
///	    mouse_position.y + (V.y * r_dist),
///	    (mouse_position.x + (vec_norms.x * r_dist)),
///	    (vec_norms.y + (V.y * r_dist)), 
///	    4
///	);
///	 
///    V.inline_mult2D(r_dist, r_dist);
///	
///    draw_set_color(c_yellow);
///    mouse_position.draw_line_width_to_vec( V, 4);
/// //   V.draw_line_width_to_point( mouse_position.x + (vec_norms.x * r_dist), vec_norms.y + ( V.y * r_dist) , 4 );
///
///}
///
///
///
///
///// rdist  = get_distance(mx,my,midx,midy);
///// rangle = point_direction(mx,my,midx,midy);
///// Vx = (midx - mx) / rdist
///// Vy = (midy - my) / rdist;
///// draw_line_width(mx,my, mx + (Vx * rdist),my + (Vy * rdist) ,4);
///// draw_line_width(mx + (Vx * rdist),my + (Vy * rdist),(mx + (NormalX * rdist)) ,(NormalY + (Vy * rdist))  , 4);
///
///
///{/// NONRENDERED STUFF
///    /////==============================================================================
///    // //p2x = p1x +  cos(degtorad(angle)) * hyp;
///    // //p2y = p1y + -sin(degtorad(angle)) * hyp;
///    //draw_set_color(c_green);
///    //draw_line_width(cx, cy, cx + (NormalY * dist), cy + (NormalX * dist), 5);
///    //pointA.draw_line_width_to_vec(pointB, 5);
///    //mid_point.draw_line_width_to_vec(norm, 4);
///    //draw_line_width(   pointA.x,    pointA.y, pointB.x, pointB.y, 1);
///    //draw_line_width(mid_point.x, mid_point.y,   norm.x,  norm.y, 1);
///}
/////reflectx  = (Vx + cos(degtorad(rangle)) * rdist), (Vy +  -sin(degtorad(rangle))) * rdist
//reflecty  = 
// p2x = p1x +  cos(degtorad(angle)) * hyp;
// p2y = p1y + -sin(degtorad(angle)) * hyp;

///sqrt((px * px) + (py * py))




	
    //vec_norms = Sub.divide2D(distance, distance);
    //norm.set(mid_point.x, mid_point.y);
    //norm.add2D( -vec_norms.y * distance, vec_norms.x * distance)

    //VecX = p2x - p1x;
    //VecY = p2y - p1y;
    //NormalX =  (VecX / hyp);
    //NormalY =  (VecY / hyp);
    //
    //Nx = midx + (-NormalY * dist)
    //Ny = midy + ( NormalX * dist)
    


 
//=// draw_set_color(c_gray);
//draw_line_width(p1x,p1y,p2x,p2y, 5);
///=/. draw_set_color(c_dkgray);
//draw_line_width(p1x,p1y,midx,midy, 4);
