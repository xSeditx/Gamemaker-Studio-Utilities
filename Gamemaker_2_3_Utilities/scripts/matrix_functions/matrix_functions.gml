

///   3x3 Rotation    2D Vec
///  ______________    ___
/// [cos,-sin,   0 ]  [ x ]
/// [sin, cos,   0 ]  [ y ]
/// [  0,   0,   1 ]  [ 1 ]


/* =============================================================================
                                                                                          
                                                                                          
                       ! WARNING ! ~ INCOMPLETE                                                                        
                                                                                          
                                                                                          
   -----------------------------------------------------------------------------*/

function Matrix(_row, _column) constructor
{
	row_size = _row;
	column_size = _column;
	value[_row, _column] = 0;
	
	
	
    ///=============================================================================	
	///@function identity()
	///@description Sets and Returns Identity Matrix
	///-----------------------------------------------------------------------------
	function identity()
	{
		for(var i = 0; i < min(row_size, column_size); ++i)
		{
			value[i ,  i] = 1.0;			
		}
		return self;
	}
	
    ///=============================================================================
	///@function set(_array)
	///@description Sets the Value of this Matrix using Array
	///@param _array{array[real]}
	///-----------------------------------------------------------------------------
	function set(_array)
	{
		value = _array;
		return; //null
	}

    ///=============================================================================
	///@function set_row(_row, _vals)
	///@description  
	///@param _row   Which row will we assign this array to
	///@param _vals  Array of values to apply to specific row
	///-----------------------------------------------------------------------------
    function set_row(_row, _vals)
	{
		 _ASSERT(_row < row_size)
	}
	
    ///=============================================================================
	///@function set_column(_col, _vals)
	///@description  
	///@param 
	///-----------------------------------------------------------------------------
    function set_column(_col, _vals)
	{}
	
	
    ///=============================================================================
	///@function 
	///@description  
	///@param 
	///-----------------------------------------------------------------------------
	
}





///  ==============    ===
function Mat3() constructor
{
	matrix = 
	[
	    1,0,0,
		0,1,0,
		0,0,1
	];
	function set_from_array( _array)
	{
		
	}
	
	///@function set_row_vec(_row, _vec)
	///@param _row{int} Which row to set
	///@param _vec{Vec3} 3 Values to set the row to
	function set_row_vec(_row, _vec)
	{
		self.matrix[_row + 0] = _vec.x;
		self.matrix[_row + 1] = _vec.y;
		self.matrix[_row + 2] = _vec.z;
		return self;
	}
	
	///@function set_from_vec2(_vec1, _vec2, _vec3)
	///@param _vec1{Vec3} row1 values
	///@param _vec2{Vec3} row2 values
	///@param _vec3{Vec3} row3 values
	function set_from_vec2(_vec1, _vec2, _vec3)
	{
		 set_row_vec(0, _vec);
		 set_row_vec(1, _vec);
		 set_row_vec(2, _vec);
		 return self;
	}
	
	///@function get_position()
	function get_position()
	{
		return new Vec2(matrix[2], matrix[5]);
	}
	
	///@function set_position(_vec)
	///@param _vec{Vec2} XY to set Matrix to
    function set_position(_vec)
	{
		return new Vec2(matrix[2], matrix[5]);
	}
}

 
  