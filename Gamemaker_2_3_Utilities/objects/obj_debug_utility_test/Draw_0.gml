




var start = 01;
      
var th = 30;
var ty = y;

var len = debug_get_callstack_line( debug_get_callstack(), 0)
var linestack = debug_get_callstack_line( debug_get_callstack(),0, 4);
 recursive_test(3)
TEST_debug_get_callstack_pos() 
TEST_debug_get_callstack_file()
TEST_debug_get_callstack_line()

ty += th;     	 	  
draw_text( x, ty, "Debug Utility: __LINE__ TEST 19 = " + string(__LINE__) );
ty += th;     	 	  
draw_text( x, ty, "Debug Utility: __LINE__ TEST 21 = " + string(__LINE__) );
ty += th;     	 	  
draw_text( x, ty, "Debug Utility: __LINE__ TEST 23 = " + string(__LINE__) );
		  	 		  	  	 		  
		  	 		  
ty += th;    	 	  
draw_text( x, ty, "Debug Utility: __FILE__ TEST " + string(__FILE__) );
		  	 		  
ty += th;   	 	  
draw_text( x, ty, "Debug Utility: __POS__  TEST " + string(__POS__) );




var Test_Results = true;
var display_str;
var text_color;
if(Test_Results == true)
{
	text_color = c_green;
	display_str = "All Test Passed";
}
else
{  
	text_color = c_red;
    display_str = "Some Test Failed";
}
draw_set_color(text_color);
 
ty += th;    	 	  
draw_text( x, ty, "Debug Utility: Functions Test " + display_str );
      	    	 	  
					  

	  
	  