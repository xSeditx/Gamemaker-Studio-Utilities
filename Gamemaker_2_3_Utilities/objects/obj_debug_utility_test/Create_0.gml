/// @description Insert description here
// You can write your code in this editor



//Test_Results = TEST_ALL_DEBUG_MODULE();



function recursive_test(_count)
{
	draw_set_color(c_blue);
	var stack = debug_get_callstack();
    var th = 30;
    var ty = 10 + (_count * 30);
    var File = debug_get_callstack_file(stack, 0, _count - 1);
	for(var i = 0; i < _count; i++)
	{
        ty += th;     	 	  
		var ind = min( i, array_length(File) - 1 );
        draw_text( 50, ty, "Recursive Debug Utility: __File__ TEST 19 = " + File[ind] );
	}
}

      
