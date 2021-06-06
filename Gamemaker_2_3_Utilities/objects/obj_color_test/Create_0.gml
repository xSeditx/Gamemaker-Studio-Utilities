
Red_Color    = new RGB_color(c_red);
Green_Color  = new RGB_color(c_green);
Blue_Color   = new RGB_color(c_blue);

Red_set   = new RGB_color(c_black);
Green_set = new RGB_color(c_black);
Blue_set  = new RGB_color(c_black);

all_colors  = new RGB_color(c_black);
//all_colors.make_BGR();  

Red_set.make_BGR();  
Green_set.make_BGR();
Blue_set.make_BGR();

Red_set.set_RGB(255, 0, 0);
Green_set.set_RGB(0, 255, 0);
Blue_set.set_RGB(0, 0, 255);

channel = 0;
