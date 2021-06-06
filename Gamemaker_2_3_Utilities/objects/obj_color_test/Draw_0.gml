
   
 

///=====================================

    Red_Color.make_active()
    draw_circle(200, 200, 100, false)
    
    Green_Color.make_active()
    draw_circle(300, 300, 100, false)
    
    Blue_Color.make_active()
    draw_circle(400, 400, 100, false)
	
///------------------------------------------    
channel++;
channel = channel % 255;

Red_set.set_RGB(0, 0, 0);
Green_set.set_RGB(0, 0, 0);
Blue_set.set_RGB(0, 0, 0);

Red_set.set_RGB(channel, channel, channel);
Green_set.set_RGB( 0, channel, channel);
Blue_set.set_RGB(  0,       0, channel);

///=========================================

#region CHANNEL_SET_TEST

    Red_set.make_active()
    draw_circle(300, 200, 50, false)
    
    Green_set.make_active()
    draw_circle(400, 300, 50, false)
    
    Blue_set.make_active()
    draw_circle(500, 400, 50, false)
#endregion

///------------------------------------------    


var radius = 10;
var inc = 255 / 127;
var max_color = (255 * 255 * 255) / inc;

var wx = 600;

var px = 100;
var py = 100
var dx = 3;
var dy = 10;
all_colors.set_RGB(0,0,0);

for(var r = 0; r < 255; r+= inc)
{
    px += dx
    all_colors.set_RGB(r, 0, 0);
    all_colors.make_active()
    draw_circle(px, py, radius, false)
}

px = 100;    py += 100;
for(var g = 0; g < 255; g+= inc)
{
    px += dx
    all_colors.set_RGB(0, g, 0);
    all_colors.make_active()
    draw_circle(px, py, radius, false)
}
px = 100;    py += 100;
for(var b = 0; b < 255; b+= inc)
{
    px += dx
    all_colors.set_RGB( 0, 0, b);
    all_colors.make_active()
    draw_circle(px, py, radius, false)
}


var width = 800;
var height = 800;
inc = width / 255; 
r = 0 ; g = 0 ; b = 0 ;
for(var py = 100; py < height; py += inc)
{
    for(var px = 100; px < width; px += inc)
    {
		r += 10
		if(r > 255)
		{
			r = 0
			b += 10
			if(b  > 255)
			{
				b = 0
				if(g++ > 255)
				{
					g = 0;
				}
			}
		}
	    all_colors.set_RGB( r, g, b);
        all_colors.make_active()
        draw_circle(px, py, radius, false)
    }
}






//for(var r = 0; r < 255; r+= inc)
//{
//	for(var g = 0; g < 255; g+= inc)
//    {
//	    for(var b = 0; b < 255; b+= inc)
//        {
//			px += dx
//			if(px > wx)
//			{
//				px = 100;
//				py += dy
//			}
//			all_colors.set_RGB(r,g,b);
//		    all_colors.make_active()
//            draw_circle(px, py, radius, false)
//        }
//	}
//}
//
//
/// c_darkred             $8B0000
// c_darkgreen           $006400
// c_darkblue            $00008B
///
///var r3 = c_darkred   
///var g3 = c_darkgreen 
///var b3 = c_darkblue  
///
///var red   = c_red
///var green = c_green
///var blue  = c_blue
///
///var conred = brg_to_rgb(c_red)
///var conred2 = rgb_to_brg(conred);
///
///var conredb = brg_to_rgb(c_blue)
///var conredb2 = rgb_to_brg(conredb);
///
///
///
///var rgb_red   = $FF0000
///var rgb_green = $00FF00
///var rgb_blue  = $0000FF
///var rgb_or = rgb_blue | rgb_green| rgb_red  
/// 
///
//var rgb_shift = (rgb_blue) | (rgb_green)| (rgb_red ) 
//  var rgb_shift = ($BB << 16 ) | ($FF<<8)|  ($AA) 
//  var v0 = $FF
//  var v1 = $FF00
//  var v2 = $FF0000
//  var c0 = $FF 
//  var c1 = $FF << 8
//  var c2 = $FF << 16
//  var c = c0 | c1 | c2;
//  
//  var brg_blue  = $FF0000
//  var brg_green = $00FF00
//  var brg_red   = $0000FF
//  var brg_or = brg_blue | brg_green| brg_red  
//  var brg_shift = ($BB) | ($FF)|  ($AA) 
//  
//  
//  var r = $8B0000 | $0000FF
//  var g = $006400 | $00FF00
//  var b = $00008B | $FF0000
//  
//  var r2 = $8B0000 & $FF0000 
//  var g2 = $006400 & $00FF00
//  var b2 = $00008B & $0000FF
//  
//  var red   = c_red
//  var green = c_green
//  var blue  = c_blue
//  
//   
//  var R = brg_to_rgb(c_darkred)
//  var G = brg_to_rgb(c_darkgreen)
//  var B = brg_to_rgb(c_darkblue)
//  
/// draw_set_color(R)
/// draw_circle(200, 200, 100, false)
/// 
/// draw_set_color(B)
/// draw_circle(300, 300, 100, false)
/// 
/// draw_set_color(G)
/// draw_circle(400, 400, 100, false)
/// 