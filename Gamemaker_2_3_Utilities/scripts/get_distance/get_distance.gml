///@function get_distance(x1,y1,x2,y2)
///@description return the distance between two points
///@param  x1
///@param  y1
///@param  x2
///@param  y2
function get_distance(argument0, argument1, argument2, argument3) {

	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;

	var diffx = x2 - x1;
	var diffy = y2 - y1;

	return sqrt((diffx * diffx)+(diffy * diffy));
}
