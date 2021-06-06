///================================================================================================================
///                                                                                      
///    Title:                          Vector Library                                        
///                                                                                      
///    Author: Sedit                           
///                                                                                      
///    Date: 5/4/2021                                                                    
///                                                                                      
///    Description: 
///        Vector Library for Maths and Rendering of the following...
///            2D
///            3D
///            4D
///            Quaturnions
///            3x3 Matrices 
///            4x4 Matrices
///                                                                                      
///    GMS2 Errors: https://manual.yoyogames.com/Additional_Information/Errors/Syntax_Errors.htm                                                                           
///================================================================================================================
///                
///   TODO:
///   [ X ] 2D 
///   ->[ X ] Inline
///   ->[ X ] Point
///   --->[ X ] Inline
///   ->[ X ] Graphics
///    ___  _____________
///   [ X ] 3D
///   ->[ X ] Graphics
///    ___  _____________
///   [   ] 4D             
///   ->[ X ] Graphics
///    ___  _____________
///   [   ] Quaternions 
///   ->[ X ] Graphics

///    ___  _____________
///   [   ] 3x3 Matrix
///    ___  _____________
///   [   ] 4x4 Matrix
///     
///                                                                                      
///________________________________________________________________________________________________________________                                                                                     
///================================================================================================================

/* ================================================================================================================
/*     instanceof(variable);
/*     is struct(struct_id);
/*     variable_struct_exists(struct_id, variable);
/*     variable_struct_get(struct_id, variable);
/*     variable_struct_set(struct_id, variable, value);
/*     variable_struct_get_names(struct_id);
/*     variable_struct_names_count(struct_id);
/*                                                                                                                  * 
/*     is_method(variable);
/*     method(instance_id, function);                                                                                                             * 
/*                                                                                                                  * 
/* ================================================================================================================ */


#macro M_PI      3.14159265358979323846
#macro M_PI_2    1.57079632679489661923



/* ============================================================+                                                           
/*     Name:  Vec2                                             |
/* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
/*     Description: Structure of two points defining X and Y   |
/*         location of a point in space                        |
/*                                                             |
/*     Methods:                                                |
/*                                                             |
/*                                                             |
/*                                                             |
/*                                                             |
/*                                                             |
/*                                                             |
/* ===========================================================*/



///=============================================================
///@function Vec2(_x, _y) constructor
///@description Creates a 2D Point in Space
///@param _x Horizontal position
///@param _y Vertical position
///=============================================================
function Vec2(_x, _y) constructor
{
	///====================== DATA =============================
	x = _x;
	y = _y;
    ///_________________________________________________________


/* ============================================================+                                                           
/*                      MAIN VEC2 FUNCTIONS                    |
/* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
/*     PERFORMS OPERATIONS USING X AND Y VALUES TO             |
/*     ALLOW MORE FLEXIBLE USAGE OF A VECTOR OBJECT            |
/* ===========================================================*/
///_____________________________________________________________
///---<<<<<<<<<<<<<::::| BASE OPERATIONS |::::>>>>>>>>>>>>>>>---
#region VECTOR_OPERATIONS


    ///_____________________________________________________________
    ///---<<<<<<<<<<<::::|  VECTOR ARITHMETIC  |::::>>>>>>>>>>>>>---	
	#region MATHS 	
	    ///=============================================================
	    ///@function add(_other)
	    ///@param {Vec2} _other
	    ///-------------------------------------------------------------
	    function add(_other)
	    {///@description Adds two vectors returning a new one.
	    	return new Vec2(self.x + _other.x, self.y + _other.y);
	    }
	    ///_____________________________________________________________	
	    ///=============================================================
	    ///@function subtract(_other)
	    ///@param {Vec2} _other
	    ///-------------------------------------------------------------
	    function subtract(_other)
	    {///@description Subtracts two vectors returning a new one.
	    	return new Vec2(self.x - _other.x, self.y - _other.y);
	    }	
	    ///_____________________________________________________________
	    ///=============================================================
	    ///@function multiple(_other)
	    ///@param {Vec2} _other
	    ///-------------------------------------------------------------
	    function multiply(_other)
	    {///@description Multiplies two vectors returning a new one.
	    	return new Vec2(self.x * _other.x, self.y * _other.y);
	    }
	    ///_____________________________________________________________	
	    
	    ///=============================================================
	    ///@function divide(_other)
	    ///@param {Vec2} _other
	    ///-------------------------------------------------------------
	    function divide(_other)
	    {///@description Divides two vectors returning a new one.
	    	return new Vec2(self.x / _other.x, self.y / _other.y);
	    }
	    ///_____________________________________________________________
	    
	    ///=============================================================
	    ///@function dot(_other)	
	    ///@param {Vec2} _other 
	    ///-------------------------------------------------------------
	    function dot(_other)
	    {///@description Returns the Dot product of two vectors
	    	return (self.x * _other.x) + (self.y * _other.y);   
	    }
	    ///_____________________________________________________________
	    
	#endregion
	///________________________< MATHS >____________________________
	

    ///_____________________________________________________________
    ///---<<<<<<<<<<::::|  VECTOR MANIPULATION  |::::>>>>>>>>>>>>---
	#region MANIPULATION
        ///=============================================================
        ///@function set(_x, _y)	
        ///@param _x
        ///@param _y
        ///-------------------------------------------------------------
        function set(_x, _y)
        {///@description Sets the state of the XY vector
            self.x = _x; self.y = _y;
        }
        ///_____________________________________________________________	
	    
        ///=============================================================
        ///@function negate()
        ///-------------------------------------------------------------
        function negate()
        {//@description Negates the XY values of our Vector
            return new Vec2(-self.x, y = -self.y);
        }
        ///_____________________________________________________________
	    
        ///=============================================================
        ///@function normalize(_other)
        ///@param {Vec2} _other
        ///-------------------------------------------------------------
        function normalize()
        {///@description returns a normalized version of this Vector
            var dist = self.length();
            return new Vec2(self.x / dist, self.y / dist);
        }
        ///_____________________________________________________________
	    
        ///=============================================================	
        ///@function rotate(_origin, _angle)
        ///@param _origin {Vec2} Point which to Rotate this around
        ///@param _angle  {real} Angle in Degrees
        ///-------------------------------------------------------------
        function rotate(_origin, _angle)
        {///@description Returns a new Vec3 with values fron this Vec2
            var result = self.subtract(_origin);
            result.set
            (
                _origin.x + ((result.x * dcos(_angle)) - (result.y * dsin(_angle))),
                _origin.y + ((result.x * dsin(_angle)) + (result.y * dcos(_angle)))
            )
                return result;
        }
		///_____________________________________________________________
		
    #endregion
	///_____________________< MANIPULATION >________________________


    ///_____________________________________________________________
    ///---<<<<<<<<<<<<::::| VECTOR INFORMATION |::::>>>>>>>>>>>>>---		
    #region INFORMATION
	    
        ///=============================================================
        ///@function length()
        ///-------------------------------------------------------------
        function length()
        {///@description returns the Length of this Vector from [0,0,0]
            return  sqrt((self.x * self.x) + (self.y * self.y));
        }
        ///_____________________________________________________________
	    
        ///=============================================================
        ///@function distance(_other)
        ///@param {Vec2} _other
        ///-------------------------------------------------------------
        function distance(_other)
        {///@description returns a normalized version of this Vector
            var dx = _other.x - self.x;
            var dy = _other.y - self.y;
            return sqrt((dx * dx) + (dy * dy));
        }
        ///_____________________________________________________________
	    
        ///=============================================================	
        ///@function normal_vec(_other)	
        ///@param _other {vec2}
        ///-------------------------------------------------------------	
        function normal_vec(_other)
        {//@description Returns the normal of Line segment
            var result = _other.subtract(self);
            return result.inline_normalize();
        }
        ///_____________________________________________________________
	    
        ///=============================================================
        ///@function angle(_other)	
        ///@param {Vec2} _other
        ///-------------------------------------------------------------
        function rad_angle(_other)
        {///@description Returns the angle between _other on X axis     
            var result = degtorad(point_direction(_other.x, _other.y, self.x, self.y));
            return result;
        }
        ///_____________________________________________________________	
	    
        ///=============================================================
        ///@function deg_angle(_other)	
        ///@param {Vec2} _other
        ///-------------------------------------------------------------
        function deg_angle(_other)
        {///@description Returns the angle between _other on X axis    	
            var result = point_direction(_other.x, _other.y, self.x, self.y)
                return result;
        }
        ///_____________________________________________________________
	    
        ///=============================================================	
        ///@function copy()	
        ///-------------------------------------------------------------
        function copy()
        {///@description Returns a new Vec2 with values fron this Vec2
            return new Vec2(self.x, self.y);
        }
        ///_____________________________________________________________
	    
        ///=============================================================	
        ///@function copy_vec(_other)	
        ///@param _other
        ///-------------------------------------------------------------
        function copy_vec(_other)
        {///@description Set the Value of this Vec2 with Value of _other
            self.x = _other.x;    self.y = _other.y;
            return self;
        }
        ///_____________________________________________________________
    #endregion
    ///______________________< INFORMATION >________________________
	
	
	
    /* =================================================================                                                             
    /*               INLINE VECTOR ARITHMETIC FUNCTIONS   
    /* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    /*     PERFORMS OPERATIONS USING ANOTHER VECTOR OF SAME TYPE  
    /*     DIRECTLY MODIFY THIS OBJECT INCREASING PERFORMANCE 
    /* -----------------------------------------------------------------
    /* ================================================================= */
    ///_____________________________________________________________
    ///<<<<<<<<<<<<<::::| INLINE VEC2 FUNCTIONS |::::>>>>>>>>>>>>>>>
    #region INLINE_FUNCTIONS
    
        ///_____________________________________________________________
        ///<<<<<<<<<<<<<<<::::| VECTOR ARITHMETIC |::::>>>>>>>>>>>>>>>>>			
		#region MATHS
		
    	    ///=============================================================
    	    ///@function inline_add(_other)
    	    ///@param {Vec2} _other
    	    ///-------------------------------------------------------------
    	    function inline_add (_other)
    	    {///@description Adds two vectors returning a new one.
    	    	self.x += _other.x;		self.y += _other.y;
    	    	return self;
    	    }
    	    ///_____________________________________________________________
    	    ///=============================================================
    	    ///@function inline_sub(_other)
    	    ///@param {Vec2} _other
    	    ///-------------------------------------------------------------  
    	    function inline_sub  (_other)
    	    {///@description Subtracts two vectors returning a new one.
    	    	self.x -= _other.x;		self.y -= _other.y;
    	    	return self;
    	    }	
    	    ///_____________________________________________________________
    	    ///=============================================================
    	    ///@function inline_mult(_other)
    	    ///@param {Vec2} _other
    	    ///-------------------------------------------------------------
    	    function inline_mult (_other)
    	    {///@description Multiplies two vectors returning a new one.
    	    	
    	    	self.x *= _other.x;		self.y *= _other.y;
    	    	return self;
    	    }
    	    ///_____________________________________________________________
    	    ///=============================================================
    	    ///@function inline_div(_other)
    	    ///@param {Vec2} _other
    	    ///-------------------------------------------------------------
    	    function inline_div (_other)
    	    {///@description Divides two vectors returning a new one.
    	    	self.x /= _other.x;    self.y /= _other.y;
    	    	return self;
    	    }
    	    ///_____________________________________________________________
			
    	#endregion
        ///_________________________< MATHS >___________________________
    
        ///_____________________________________________________________
        ///---<<<<<<<<<<::::|  VECTOR MANIPULATION  |::::>>>>>>>>>>>>---
		#region MANIPULATION
    	    ///=============================================================
    	    ///@function negate()
            ///-------------------------------------------------------------
    	    function inline_negate ()
    	    {//@description Negates the XY values of our Vector
    	    	self.x = -self.x;    self.y = -self.y;
    	    	return self;
    	    }
    	    ///_____________________________________________________________
    	    
    	    ///=============================================================
    	    ///@function inline_normalize()
    	    ///-------------------------------------------------------------
    	    function inline_normalize ()
    	    {///@description Divides two vectors returning a new one.
    	    	var dist = self.length();
    	    	self.x /=  dist;    self.y /=  dist;
    	    	return self;
    	    }
    	    ///_____________________________________________________________
    	    
    	    ///=============================================================	
    	    ///@function inline_normal(_other)	
    	    ///@param _other {vec2} End point in Line segment to normalize
    	    ///-------------------------------------------------------------	
    	    function inline_normal (_other)
    	    {// Returns the normal of Line segment
    	    	self.inline_sub(_other);
    	    	//self.inline_negate(); // MIGHT NEED THIS MIGHT NOT
    	    	self.inline_normalize();
    	    	return self;
    	    }
    	    ///_____________________________________________________________    	
			
            ///=============================================================	
    	    ///@function inline_rotate(_origin, _angle)
    	    ///@param _origin {Vec2}  Center to Rotate this point around
    	    ///@param _angle  {real}  Angle in Degrees
    	    ///-------------------------------------------------------------
            function inline_rotate (_origin, _angle)
    	    {///@description Returns a new Vec3 with values fron this Vec2
    	    	var dx = self.x - _origin.x;    var dy = self.y - _origin.y;
                self.x = _origin.x + ( ( dx * dcos(_angle) ) - ( dy * dsin( _angle) ) );
                self.y = _origin.y + ( ( dx * dsin(_angle) ) + ( dy * dcos( _angle) ) );
    	    	return self;
    	    }		
    	    ///_____________________________________________________________
			
		#endregion
		///______________________< MANIPULATION >_______________________

    #endregion	
	///_________________< INLINE VEC2 FUNCTIONS > __________________
	


#endregion
///_____________________< BASE OPERATIONS >_____________________
///=============================================================


		
/* ============================================================+                                                           
/*                 POINT [XY] ARITHMETIC FUNCTIONS   	       |
/* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
/*     PERFORMS OPERATIONS USING X AND Y VALUES TO             |
/*     ALLOW MORE FLEXIBLE USAGE OF A VECTOR OBJECT            |
/* ===========================================================*/
#region POINT_XY ARITHMETIC


    ///_____________________________________________________________
    ///<<<<<<<<<<<<<<<::::| POINT ARITHMETIC |::::>>>>>>>>>>>>>>>>>>	
	#region ARITHMETIC
	
	    ///=============================================================
	    ///@function add2D(_x, _y)
        ///@param {coord} _x
        ///@param {coord} _y
	    ///-------------------------------------------------------------
	    function add2D (_x, _y)
	    {///@description Adds two vectors returning a new one.
	    	return new Vec2(self.x + _x, self.y + _y);
	    }
	    ///_____________________________________________________________	
	    ///=============================================================
	    ///@function subtract2D(_x, _y)
        ///@param {coord} _x
        ///@param {coord} _y
	    ///-------------------------------------------------------------
	    function subtract2D(_x, _y)
	    {///@description Subtracts two vectors returning a new one.
	    	return new Vec2(self.x - _x, self.y - _y );
	    }	
	    ///_____________________________________________________________		
	    ///=============================================================
	    ///@function multiple2D(_x, _y)
        ///@param {coord} _x
        ///@param {coord} _y
	    ///-------------------------------------------------------------
	    function multiply2D(_x, _y)
	    {///@description Multiplies two vectors returning a new one.
	    	return new Vec2(self.x * _x, self.y * _y);
	    }
	    ///_____________________________________________________________
	    ///=============================================================
	    ///@function divide2D(_x, _y)
        ///@param {coord} _x
        ///@param {coord} _y
	    ///-------------------------------------------------------------
	    function divide2D(_x, _y)
	    {///@description Divides two vectors returning a new one.
	    	return new Vec2(self.x / _x, self.y / _y);
	    }
	    ///_____________________________________________________________
	    ///=============================================================
	    ///@function dot2D(_x, _y)
        ///@param {coord} _x Horizontal Coordinate
        ///@param {coord} _y Vertical Coordinate
	    ///-------------------------------------------------------------
	    function dot2D (_x, _y)
	    {///@description Returns the Dot product of two vectors
	    	return ((self.x * _x) + (self.y * _y));   
	    }
	    ///_____________________________________________________________
		
	#endregion
	///_________________________< MATHS >___________________________
	
	
    ///_____________________________________________________________	
	///-------------------------------------------------------------
    ///<<<<<<<<<<<<<<:::: VECTOR MANIPULATION  ::::>>>>>>>>>>>>>>>>>	
	#region MANIPULATION
    	
    	///=============================================================
    	///@function normalize2D(_x, _y)
        ///@param {coord} _x Horizontal Coordinate
        ///@param {coord} _y Vertical Coordinate
    	///-------------------------------------------------------------
    	function normalize2D(_x, _y)	
	    {///@description Returns Normalized Vector of Line Segment
	    	var dx = _x - x;
	    	var dy = _y - y;
	    	var magnitude = sqrt( (dx*  dx) + ( dy * dy) );
	    	return new Vec2( dx / magnitude, dy / magnitude);
	    }
    	///_____________________________________________________________
    	
	#endregion
	///_____________________< MANIPULATION >________________________
	
	
    ///_____________________________________________________________
	///-------------------------------------------------------------	
    ///<<<<<<<<<<<<<<<:::: VECTOR INFORMATION  ::::>>>>>>>>>>>>>>>>>	
	#region INFORMATION
	    
        ///=============================================================
	    ///@function distance2D(_x, _y)
        ///@param {coord} _x Horizontal Coordinate
        ///@param {coord} _y Vertical Coordinate
	    ///-------------------------------------------------------------
	    function distance2D (_x, _y)
	    {///@description returns a normalized version of this Vector
	    	var dx = _x - self.x;
	    	var dy = _y - self.y;
	    	return sqrt( (dx * dx) + ( dy * dy) );
	    }	
	    ///_____________________________________________________________		
	    ///=============================================================
	    ///@function angle2D(_x, _y)
        ///@param {coord} _x Horizontal Coordinate
        ///@param {coord} _y Vertical Coordinate
	    ///-------------------------------------------------------------
	    function angle2D (_x, _y)
	    {// if origin a - origin, b - origin
	    	var mag_A = self.length();
	    	var mag_B = sqrt( (_x * _x) + ( _y * _y) );
	    	var result = arccos( self.dot2D(_x, _y) / (mag_A * mag_B) );
	    	return result;
	    }
	    ///_____________________________________________________________		
 	    
	    ///=============================================================
	    ///@function angle2D(_x, _y)
        ///@param {coord} _x Horizontal Coordinate
        ///@param {coord} _y Vertical Coordinate
	    ///-------------------------------------------------------------
	    //  function angle2D (_x, _y)
	    //  {// if origin a - origin, b - origin
	    //  	var norm_A = self.normalize();					
	    //  	var mag_B  = sqrt( (_x * _x) + ( _y * _y) );
	    //   	var results = norm_A.dot2D((_x / mag_B), (_y / mag_B));				
	    //  	return arccos( results );                        	
        //  }
	    ///_____________________________________________________________		
	    
	    
	    
        ///=============================================================
	    ///@function point_angle(_x, _y)	
        ///@param {coord} _x Horizontal Coordinate
        ///@param {coord} _y Vertical Coordinate\
	    ///-------------------------------------------------------------
	    function point_angle (_x, _y)
	    {///@description Returns the angle between self and XY point
	        var result =  degtorad( point_direction(self.x, self.y, _x, _y) ); 
            return result;
	    }   
	    ///_____________________________________________________________	
	    ///=============================================================
	    ///@function normal2D(_x, _y)
        ///@param {coord} _x Horizontal Coordinate
        ///@param {coord} _y Vertical Coordinate
	    ///-------------------------------------------------------------
	    function normal2D (_x, _y)	
	    {///@description Return Line Segment self.xy->[XY] Normalized 
	    	var dx = _x - x;
	    	var dy = _y - y;
	    	var magnitude = sqrt( (dx*  dx) + ( dy * dy) );
	    	return new Vec2( dx / magnitude, dy / magnitude);
	    }
	    ///_____________________________________________________________
		
    #endregion
    ///______________________< INFORMATION >________________________
	
	
    /* ===================================================================================================================================================                                                             
    /*                                   INLINE POINT ARITHMETIC FUNCTIONS   
    /* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    /*     THESE FUNCTIONS DIRECTLY MODIFY THIS OBJECT TO INCREASE                                             
    /*     PERFORMANCE WHEN POSSIBLE                                               
    /* ---------------------------------------------------------------------------------------------------------------------------------------------------
    /* =================================================================================================================================================== */
    #region INLINE_2D_FUNCTIONS	
		
        ///_____________________________________________________________
        ///<<<<<<<<<<<<<<:::: POINT[XY] ARITHMETIC  ::::>>>>>>>>>>>>>>>>
		#region ARITHMETIC 
		
	        ///=============================================================
	        ///@function inline_add2D(_x, _y)
            ///@param {coord} _x Horizontal Coordinate
            ///@param {coord} _y Vertical Coordinate
	        ///-------------------------------------------------------------
	        function inline_add2D (_x, _y)
	        {///@description Adds two vectors returning a new one.
	        	self.x += _x;
	        	self.y += _y;
	        	return self;
	        }
	        ///_____________________________________________________________	  	    
	        ///=============================================================
	        ///@function inline_sub2D(_x, _y)
            ///@param {coord} _x Horizontal Coordinate
            ///@param {coord} _y Vertical Coordinate
	        ///-------------------------------------------------------------
	        function inline_sub2D (_x, _y)
	        {///@description Subtracts two vectors returning a new one.
	        	self.x -= _x;
	        	self.y -= _y;
	        	return self;
	        }	
	        ///_____________________________________________________________	   	    
	        ///=============================================================
	        ///@function inline_mult2D(_x, _y)
            ///@param {coord} _x Horizontal Coordinate
            ///@param {coord} _y Vertical Coordinate
	        ///-------------------------------------------------------------
	        function inline_mult2D (_x, _y)
	        {///@description Multiplies two vectors returning a new one.
	        	
	        	self.x *= _x;
	        	self.y *= _y;
	        	return self;
	        }
	        ///_____________________________________________________________	    
	        ///=============================================================
	        ///@function inline_div2D(_x, _y)
            ///@param {coord} _x Horizontal Coordinate
            ///@param {coord} _y Vertical Coordinate
	        ///-------------------------------------------------------------
	        function inline_div2D (_x, _y)
	        {///@description Divides two vectors returning a new one.
	        	self.x /= _x;
	        	self.y /= _y;
	        	return self;
	        }
	        ///_____________________________________________________________
		
		#endregion
		///_____________________________________________________________
		
		///_____________________________________________________________
        ///<<<<<<<<<<<<<<<<:::: VEC MANIPULATION  ::::>>>>>>>>>>>>>>>>>>
		#region MANIPULATION
	        ///=============================================================
	        ///@function inline_normalize2D(_x, _y)
            ///@param {coord} _x Horizontal Coordinate
            ///@param {coord} _y Vertical Coordinate
	        ///-------------------------------------------------------------
	        function inline_normalize2D (_x, _y)	
	        {///@description Set self.xy to the normalized value of self[xy]
	            var dx = _x - self.x;
	            var dy = _y - self.y;
	            var magnitude = sqrt( (dx*  dx) + ( dy * dy) );
	            self.set( dx / magnitude, dy / magnitude);
		    	return self;
	        }
	        ///_____________________________________________________________
		#endregion
	    ///_____________________________________________________________
	
    #endregion
	///__________________________________________< INLINE FUNCTIONS > ____________________________________________________________________________________
	
#endregion
///____________________< POINT OPERATIONS >_____________________
///=============================================================
 
			
			
/* ============================================================+                                                           
/*                           GRAPHICS   	                   |
/* xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|
/*     RENDERING PRIMATIVES USING THE VECTORS				   |
/*     ALLOWS EASIER DEBUGGING AND PRIMATIVE RENDERING         |                                                                                 
/* ===========================================================*/
#region  PRIMATIVE_RENDERING      


    ///_____________________________________________________________
    ///<<<<<<<<<<<<<:::: LINE TO VEC RENDERING  ::::>>>>>>>>>>>>>>>>
    ///=============================================================
    ///@function draw_line_to_vec( _other)  
	///@description  Draws Line from self to other.xy
	///@param {Vec2} _other
	///-------------------------------------------------------------
    function draw_line_to_vec  (_other)   
    {
		draw_line(self.x, self.y, _other.x, _other.y);
    }   
	///_____________________________________________________________	
    ///=============================================================
    ///@function draw_line_width_to_vec(_other, _width)  
	///@description Draws Line from self to other.xy using _width
	///@param {Vec2} _other
    ///@param {real} _width The size of the Line to draw
	///-------------------------------------------------------------
    function draw_line_width_to_vec (_other, _width)   
    {
		draw_line_width( self.x, self.y ,_other.x, _other.y, _width);
    }   
	///_____________________________________________________________	
    ///=============================================================
    ///@function draw_line_vec_general(_other, _width, _color)  
	///@description Draws a Line to second vec2 of Width and Color
	///@param {Vec2}  _other XY room coords of second point
    ///@param {real}  _width The thickness of the Line 
	///@param {color} _color Color of the Line
	///-------------------------------------------------------------
    function draw_line_vec_general (_other, _width, _color)   
    {
		draw_set_color(_color);
		draw_line_width( self.x, self.y ,_other.x, _other.y, _width);
    }   
	///_____________________________________________________________


    ///_____________________________________________________________
    ///<<<<<<<<<<<<:::: LINE TO POINT RENDERING  ::::>>>>>>>>>>>>>>>
    ///=============================================================	
	///@function draw_line_to_point(_x, _y)   
	///@param {coord} _x    Horizontal Room Position
	///@param {coord} _y    Vertical Room Position
	///-------------------------------------------------------------
    function draw_line_to_point (_x, _y)   
    {
		draw_line(self.x, self.y, _x, _y);
    }	
	///_____________________________________________________________
    ///=============================================================	
	///@function draw_line_width_to_point(_x, _y, _width)   
	///@param {coord} _x     Horizontal Room Position
	///@param {coord} _y     Vertical Room Position
	///@param {real}  _width The size of the Line to draw
	///-------------------------------------------------------------
    function draw_line_width_to_point (_x, _y, _width)   
    {
		draw_line_width(self.x, self.y, _x, _y, _width);
    }	
	///_____________________________________________________________
    ///=============================================================
    ///@function draw_line_point_general(_x, _y, _width, _color)  
	///@description Draws a Line to second vec2 of Width and Color
	///@param {coord} _x     Horizontal Room Position
	///@param {coord} _y     Vertical Room Position
    ///@param {real}  _width The thickness of the Line 
	///@param {color} _color Color of the Line
	///-------------------------------------------------------------
    function draw_line_point_general (_x, _y, _width, _color)   
    {
		draw_set_color(_color);
		draw_line_width( self.x, self.y ,_x, _y, _width);
    }   
	///_____________________________________________________________
	
    ///=============================================================
    ///@function draw_line_angle(_dAngle, _length, _width, _color)  
	///@description Line using Angle, Magnitude and self.xy
	///@param {real}  _dAngle 
	///@param {real}  _length
	///@param {real}  _width
	///@param {color} _color
	///-------------------------------------------------------------
    function draw_line_angle(_dAngle, _length, _width, _color)  
    {
		var p2x = self.x + dcos(_dAngle) * _length;
		var p2y = self.y + dsin(_dAngle) * _length;
		draw_set_color(_color);
		draw_line_width(self.x, self.y, p2x, p2y, _width);
    }   
	///_____________________________________________________________	
 

    ///_____________________________________________________________
    ///<<<<<<<<<<<<<<<:::: CIRCLE RENDERING  ::::>>>>>>>>>>>>>>>>>>>	
	///=============================================================
	///@function draw_circle(_radius, _outline)
	///@param _radius {real}  Size of the Circle
	///@param _outline{bool}  Determines if Circle is filled or not
	///-------------------------------------------------------------
    function draw_circle (_radius, _outline)
	{
		draw_circle(self.x, self.y, _radius, _outline);
	}
	///_____________________________________________________________	
	///=============================================================
	///@function draw_circle_color(_radius, _color, _outline)
	///@param _radius        Size of the Circle
	///@param _color Color of Point 
	///@param _outline{bool} Determines if Circle is filled or not
	///-------------------------------------------------------------
    function draw_circle_color (_radius, _color, _outline)
	{
		draw_set_color(_color);
		draw_circle(self.x, self.y, _radius, _outline);
	}
	///_____________________________________________________________
 

    ///_____________________________________________________________
    ///<<<<<<<<<<<<<<<<:::: POINT RENDERING  ::::>>>>>>>>>>>>>>>>>>>
	///=============================================================
	///@function draw_vec2(_size)
	///@param _size Size of the point
	///-------------------------------------------------------------
    function draw_vec2 (_size)
	{
		draw_circle(self.x, self.y, _size, false);
	}
	///_____________________________________________________________ 
	///=============================================================
	///@function draw_vec2_color( _size, _color)
	///@param _size  Size of the point
	///@param _color Color of Point 
	///-------------------------------------------------------------
    function draw_vec2_color (_size, _color)
	{
		draw_set_color(_color);
		draw_circle(self.x, self.y, _size, false);
	}
	///_____________________________________________________________

#endregion
///____________________< GRAPHIC RENDERING >____________________
///=============================================================


}// Vec2 Constructor
///_____________________< VECTOR 2D C_TOR >_____________________
///=============================================================
 





/* ===================================================================================================================================================
/*         VEC2 FREE HELPER FUNCTIONS FOR 2D VECTORS                                      
/* ===================================================================================================================================================*/

#region VEC2_FREE_HELPER_FUNCTIONS
    
	
    ///_____________________________________________________________________
    ///|<<<<<<<<<<<<<<<<<<<:::: VECTOR DRAW LINE ::::>>>>>>>>>>>>>>>>>>>>>>|				
    ///=====================================================================
    ///@function draw_line_vec2D(_v1, _v2)
    ///@description Draws a Line between two Vec2D points
    ///@param _v1    {Vec2}   Start point of Line
    ///@param _v2    {Vec2}   End point of Line
    ///---------------------------------------------------------------------
    function draw_line_vec2D(_v1, _v2)
    {
    	draw_line(_v1.x, _v1.y, _v2.x, _v2.y);
    }
    ///_____________________________________________________________________    
    ///=====================================================================
    ///@function draw_line_width_vec2D(_v1, _v2, _width)
    ///@description Draws a Line between two Vec2D points
    ///@param _v1    {Vec2}   Start point of Line
    ///@param _v2    {Vec2}   End point of Line
    ///@param _width {real}   Thickness of Line
    ///---------------------------------------------------------------------
    function draw_line_width_vec2D(_v1, _v2, _width)
    {
    	draw_line_width(_v1.x, _v1.y, _v2.x, _v2.y, _width);
    }
    ///_____________________________________________________________________
    ///=====================================================================
    ///@function draw_line_general_vec2D(_v1, _v2, _color, _width)
    ///@description Draws a Line between two Vec2D points
    ///@param _v1    {Vec2}   Start point of Line
    ///@param _v2    {Vec2}   End point of Line
	///@param _color {color}  Color of the Line
    ///@param _width {real}   Thickness of Line
    ///---------------------------------------------------------------------
    function draw_line_general_vec2D(_v1, _v2, _color, _width)
    {
		draw_set_color(_color);
    	draw_line_width(_v1.x, _v1.y, _v2.x, _v2.y, _width);
    }
    ///_____________________________________________________________________
    
    
    
    ///_____________________________________________________________________
    ///|<<<<<<<<<<<<<<<<<:::: VECTOR DRAW CIRCLE ::::>>>>>>>>>>>>>>>>>>>>>>|	    
    ///=====================================================================
    ///@function draw_circle_vec(_v1, _radius, _outline)
    ///@description Draws a Circle filled or not filled
	///@param _v1      {Vec2}   Center of the Circle
    ///@param _radius  {real}   Radius of the Circle
    ///@param _outline {bool}   Draw the Circle Filled or Outlined
    ///---------------------------------------------------------------------
    function draw_circle_vec(_v1, _radius, _outline)
    {
        draw_circle(_v1.x, _v1.y, _radius, _outline);
    }
    ///_____________________________________________________________________    
    ///=====================================================================
    ///@function draw_circle_color_vec(_v1, _radius, _color, _outline)
    ///@description Draws a Circle Of the desired Size and Color 
    ///@param _v1      {Vec2}   Center of the Circle
    ///@param _radius  {real}   Radius of the Circle
	///@param _color   {color}  Color of the Line
    ///@param _outline {real}   Draw the Circle Filled or Outlined
    ///---------------------------------------------------------------------
    function draw_circle_color_vec(_v1, _radius, _color, _outline)
    {
		draw_set_color(_color);
        draw_circle(_v1.x, _v1.y, _radius, _outline);
    }
    ///_____________________________________________________________________
     
      

    ///_____________________________________________________________________
    ///|<<<<<<<<<<<<<<<<:::: VECTOR DRAW POLYGONS ::::>>>>>>>>>>>>>>>>>>>>>|				
    ///=====================================================================
    ///@function draw_triangle_vec(_v1, _v2, _v3)
    ///@description Draws a triangle using 3 2D Vectors for the points
    ///@param _v1 {Vec2}
    ///@param _v2 {Vec2}
    ///@param _v3 {Vec2}
    ///---------------------------------------------------------------------
    function draw_triangle_vec(_v1, _v2, _v3)
    {
    	draw_line(_v1.x, _v1.y, _v2.x, _v2.y);
    	draw_line(_v2.x, _v2.y, _v3.x, _v3.y);
    	draw_line(_v3.x, _v3.y, _v1.x, _v1.y);
    }
    ///_____________________________________________________________________
    ///=====================================================================
    ///@function draw_polygon_vec(_point_array)
    ///@description Draws a triangle using 3 2D Vectors for the points
	///@param _origin      {Vec2} Other points relative to this Vertex
    ///@param _point_array {array[vec2]} Array of Vec2 values
    ///---------------------------------------------------------------------
    function draw_polygon_vec(_origin, _point_array)
    {
		var p1x, p1y, p2x, p2y;
		var element_count =  array_length(_point_array) - 1;
    	for(var i = 0; i < element_count - 1; ++i)
		{// Cycle over every point in the array and connect via Lines
			p1x = _point_array[i].x - _origin.x;
			p1y = _point_array[i].y - _origin.y;		
			p2x = _point_array[i+1].x - _origin.x;
			p2y = _point_array[i+1].y - _origin.y;
			draw_line( p1x, p1y, p2x, p2y);
		}
		/// CONNECT THE LAST ELEMENT TO THE FIRST
		p1x = _point_array[0].x;    p1y = _point_array[0].y;
		draw_line( p1x, p1y, p2x, p2y);
		return;
    }
    ///_____________________________________________________________________
    ///=====================================================================
    ///@function draw_polygon_general_vec(_origin, _point_array, _color, _width)
    ///@description Draws a polygon using Array of Vec2 for the points
	///@param _origin{Vec2} Relative Coords for Polygon
    ///@param _point_array{array[vec2]} Array of Vec2 points
	///@param _color{color} Color to Render Polygon
	///@param _width{real} Thickness of Connecting Lines
    ///---------------------------------------------------------------------
    function draw_polygon_general_vec(_origin, _point_array, _color, _width)
    {
		draw_set_color(_color);
		var p1x, p1y, p2x, p2y;
		var element_count =  array_length(_point_array) ;
    	for(var i = 0; i < element_count - 1; ++i)
		{// Cycle over every point in the array and connect via Lines
			p1x = _point_array[i].x + _origin.x;
			p1y = _point_array[i].y + _origin.y;		
			p2x = _point_array[i+1].x + _origin.x;
			p2y = _point_array[i+1].y + _origin.y;
			draw_line_width( p1x, p1y, p2x, p2y, _width);
		}
		/// CONNECT THE LAST ELEMENT TO THE FIRST
		p1x = _point_array[0].x + _origin.x;    p1y = _point_array[0].y + _origin.y;
		draw_line_width( p1x, p1y, p2x, p2y, _width);
		return;
    }
    ///_____________________________________________________________________

#endregion
 
/* ===================================================================================================================================================
/*     /FREE VEC2 FUNCTIONS END                                    
/* ===================================================================================================================================================*/


 


   


   
///================================================================================================================
///@function Vec3(_x, _y, _z) constructor
///@description Creates a 3D Vector
///@param _x
///@param _y
///@param _z
///================================================================================================================

function Vec3(_x, _y, _z) constructor
{
	///=========================  DATA  ============================
	x = _x;
	y = _y;
	z = _z;
	///_____________________________________________________________
	
	
    #region VEC3_BASIC_METHODS
	
        ///=============================================================
	    ///@function set(_x, _y, _z)
	    ///@description Sets the state of the XY vector
        ///@param {real} _x
        ///@param {real} _y
	    ///@param {real} _z
	    ///-------------------------------------------------------------
	    function set (_x, _y, _z)
	    {
	    	x = _x;  
	    	y = _y; 
	    	z = _z;
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function add(_other)
        ///-------------------------------------------------------------
	    function negate ()
	    {//@description Negates the XY values of our Vector
	    	x = -x;
	    	y = -y;
	    	z = -z;
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function add(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function add (_other)
	    {///@description Adds two vectors returning a new one.
	    	return new Vec2(x + _other.x, y + _other.y, z + _other.z);
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function subtract(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------  
	    function subtract (_other)
	    {///@description Subtracts two vectors returning a new one.
	    	return new Vec3(x - _other.x, y - _other.y, z - _other.z);
	    }	
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function multiple(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function multiply (_other)
	    {///@description Multiplies two vectors returning a new one.
	    	return new Vec3(x * _other.x, y * _other.y, z * _other.z);
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function divide(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function divide (_other)
	    {///@description Divides two vectors returning a new one.
	    	return new Vec3(x / _other.x, y / _other.y, z / _other.z);
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function normalize(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function normalize (_other)
	    {///@description returns a normalized version of this Vector
	    	var dx = _other.x - x;
	    	var dy = _other.y - y;
	    	var dz = _other.z - z;
	    	var dist = sqrt( (dx * dx) + ( dy * dy) +  (dz * dz ) );
	    	return new Vec3(x / dist, y / dist, z / dist);
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function length()
	    ///-------------------------------------------------------------
	    function length ()
	    {///@description returns the Length of this Vector from [0,0,0]
	    	return  sqrt( ( x * x ) + ( y * y) +  (z * z ) );
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function normalize(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function distance (_other)
	    {///@description returns a normalized version of this Vector
	    	var dx = _other.x - x;
	    	var dy = _other.y - y;
	    	var dz = _other.z - z;
	    	return sqrt( (dx * dx) + ( dy * dy) +  (dz * dz ) );
	    }	
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function dot(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function dot (_other)
	    {///@description Returns the Dot product of two vectors
	    	return (x * _other.x) + (y * _other.y) + (z + _other.z);   
	    }
	    ///_____________________________________________________________
	    
	    	
	    ///=============================================================
	    ///@function cross(_other)	
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function cross (_other)
	    { ///@description Returns the Cross product of two vectors
	    	return new 
	    	Vec3
	    	(/// Calculate the Cross product of the two Vectors
	    	    (y * _other.z) - (_other.y * z),
	    	    (_other.x * z) - (x * _other.z), 
	    	    (x * _other.y) - (_other.x * y)
	    	);
	    }
	    ///_____________________________________________________________
	    
	    	
	    ///=============================================================
	    ///@function angle(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function angle (_other)
	    {// if origin a - origin, b - origin
	    	var NormA = self.normalize();
	    	var NormB = _other.normalize();
	    	var results = NormA.dot(NormB);
	    	return arccos(results);
	    }
	    ///_____________________________________________________________
	    
	    
        ///=============================================================	
	    ///@function copy()	
	    ///-------------------------------------------------------------
        function copy ()
	    {///@description Returns a new Vec3 with values fron this Vec2
	    	return new Vec3(x, y, z);
	    }
	    ///_____________________________________________________________
	
	    
	    	    
        ///=============================================================	
	    ///@function copy(_other)	
	    ///-------------------------------------------------------------
        copy_vec(_other)
	    {///@description Returns a new Vec3 with values fron this Vec2
	    	self.set(_other.x, _other.y, _other.z);
	    }
	    ///_____________________________________________________________

	   
#endregion 


/* ===================================================================================================================================================
/*                                                             
/*     FUNCTIONS FOR DIRECTLY ALTERING THE CURRENT VECTOR INSTEAD OF 
/*     CREATING A NEW VEC3 INSTANCE WITH THE UPDATED VALUES AND RETURNING THAT                                                
/*     OFTEN WE WISH OUR VALUE TO BE FILLED WITH THE RESULT INSTEAD OF DUPLICATION                                                        
/*     THESE FUNCTIONS DIRECTLY MODIFY THIS OBJECT TO INCREASE PERFORMANCE WHEN POSSIBLE     
/*
/* ===================================================================================================================================================*/
		
#region VEC3_INLINE_METHODS
	    	
	    ///=============================================================
	    ///@function inline_add(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function inline_add (_other)
	    {///@description Adds two vectors returning a new one.
	    	x += _other.x;
	    	y += _other.y;
	    	z += _other.z;
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function inline_sub(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------  
	    function inline_sub  (_other)
	    {///@description Subtracts two vectors returning a new one.
	    	x -= _other.x;
	    	y -= _other.y;
	    	z -= _other.z;
	    }	
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function inline_mult(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function inline_mult (_other)
	    {///@description Multiplies two vectors returning a new one.
	    	
	    	x *= _other.x;
	    	y *= _other.y;
	    	z *= _other.z;
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function inline_div(_other)
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function inline_div (_other)
	    {///@description Divides two vectors returning a new one.
	    	x /= _other.x;
	    	y /= _other.y;
	    	z /= _other.z;
	    }
	    ///_____________________________________________________________
	    
	    
	    ///=============================================================
	    ///@function inline_cross(_other)	
	    ///@param {Vec3} _other
	    ///-------------------------------------------------------------
	    function inline_cross (_other)
	    { ///@description Returns the Cross product of two vectors
	    	var dx = (y * _other.z) - (_other.y * z);
	    	var dy = (_other.x * z) - (x * _other.z);
	    	var dz = (x * _other.y) - (_other.x * y);
	    	x = dx;		y = dy;		z = dz;
	    }
	    ///_____________________________________________________________
	
#endregion

/* ===================================================================================================================================================
/* / INLINE                                 
/* ===================================================================================================================================================*/



/* ===================================================================================================================================================
/*                             FUNCTIONS FOR SEPERATE POINTS[XYZ]                             
/*     ACCEPTS X,Y,Z AS THE INPUT INSTEAD OF ANOTHER VECTOR AS OTHER FUNCTIONS                                                       
/*                                                                                                                       
/* ===================================================================================================================================================*/

#region VEC3_3D_FUNCTIONS 


	///=============================================================
	///@function add3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	function add3D(_x, _y, _z)
	{///@description Adds two vectors returning a new one.
		return new Vec2(x + _x, y + _y, z + _z);
	}
	///_____________________________________________________________
	
	
	///=============================================================
	///@function subtract3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	function subtract3D(_x, _y, _z)
	{///@description Subtracts two vectors returning a new one.
		return new Vec3(x - _x, y - _y, z - _z);
	}	
	///_____________________________________________________________
	
	
	///=============================================================
	///@function multiple3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	function multiply3D(_x, _y, _z)
	{///@description Multiplies two vectors returning a new one.
		return new Vec3(x * _x, y * _y, z * _z);
	}
	///_____________________________________________________________
	
	
	///=============================================================
	///@function divide3D(_x, _y, _z)
	///@param {Vec3} _other
	///-------------------------------------------------------------
	function divide3D(_x, _y, _z)
	{///@description Divides two vectors returning a new one.
		return new Vec3(x / _x, y / _y, z / _z);
	}
	///_____________________________________________________________
	
 
    ///=============================================================
	///@function normalize3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	function distance3D (_x, _y, _z)
	{///@description returns a normalized version of this Vector
		var dx = _x - x;
		var dy = _y - y;
		var dz = _z - z;
		return sqrt( (dx * dx) + ( dy * dy) +  (dz * dz ) );
	}	
	///_____________________________________________________________
	
	
	///=============================================================
	///@function dot3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	///-------------------------------------------------------------
	function dot3D (_x, _y, _z)
	{///@description Returns the Dot product of two vectors
		return (x * _x) + (y * _y) + (z + _z);   
	}
	///_____________________________________________________________
	
		
	///=============================================================
	///@function cross3D(_x, _y, _z)	
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	///-------------------------------------------------------------
	function cross3D (_x, _y, _z)
	{ ///@description Returns the Cross product of two vectors
		return new 
		Vec3
		(/// Calculate the Cross product of the two Vectors
		    (y * _z) - (_y * z),
		    (_x * z) - (x * _z), 
		    (x * _y) - (_x * y)
		);
	}
	///_____________________________________________________________
	
		
	///=============================================================
	///@function normalize3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	function normalize3D (_x, _y, _z)	
	{
		var dist = sqrt( (_x * _x) + ( _y * _y) + (_z * _z) );
		return new Vec3( x / dist, y / dist, z / dist);
	}
	///_____________________________________________________________
	
		
		
	///=============================================================
	///@function angle3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	function angle3D (_x, _y, _z)
	{// if origin a - origin, b - origin
		var NormA = self.normalize();
		var Blength = sqrt( (_x * _x) + ( _y * _y) + (_z * _z) );
		var Nx = _x / Blength;
		var Ny = _y / Blength;
		var Nz = _z / Blength;
		var results = NormA.dot3D(Nx, Ny, Nz);
		return arccos(results);
	}
	///_____________________________________________________________


	
	
	///=============================================================
	///=================== INLINE FUNCTIONS ========================
	///_____________________________________________________________
	///                                                              
	///   THESE FUNCTIONS DIRECTLY MODIFY THIS OBJECT TO INCREASE                   
	///   PERFORMANCE WHEN POSSIBLE
	///                                                              
	///xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx      
	///=============================================================
	
		
	///=============================================================
	///@function inline_add3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	function inline_add3D (_x, _y, _z)
	{///@description Adds two vectors returning a new one.
		x += _other.x;
		y += _other.y;
		z += _other.z;
	}
	///_____________________________________________________________
	
	
	///=============================================================
	///@function inline_sub3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	///-------------------------------------------------------------  
	function inline_sub3D  (_x, _y, _z)
	{///@description Subtracts two vectors returning a new one.
		x -= _other.x;
		y -= _other.y;
		z -= _other.z;
	}	
	///_____________________________________________________________
	
	
	///=============================================================
	///@function inline_mult3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	///-------------------------------------------------------------
	function inline_mult3D (_x, _y, _z)
	{///@description Multiplies two vectors returning a new one.
		
		x *= _other.x;
		y *= _other.y;
		z *= _other.z;
	}
	///_____________________________________________________________
	
	
	///=============================================================
	///@function inline_div3D(_x, _y, _z)
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	///-------------------------------------------------------------
	function inline_div3D (_x, _y, _z)
	{///@description Divides two vectors returning a new one.
		x /= _other.x;
		y /= _other.y;
		z /= _other.z;
	}
	///_____________________________________________________________
	
	
	///=============================================================
	///@function inline_cross3D(_x, _y, _z)	
    ///@param {real} _x
    ///@param {real} _y
	///@param {real} _z
	///-------------------------------------------------------------
	///-------------------------------------------------------------
	function inline_cross3D (_x, _y, _z)
	{ ///@description Returns the Cross product of two vectors
		var dx = (y * _other.z) - (_other.y * z);
		var dy = (_other.x * z) - (x * _other.z);
		var dz = (x * _other.y) - (_other.x * y);
		x = dx;		y = dy;		z = dz;
	}
	///_____________________________________________________________
	
	
			
#endregion 		

/* ===================================================================================================================================================
/* / INLINE_3D_END                                       
/* ===================================================================================================================================================*/


	
	
	
		
		
/* ===================================================================================================================================================
/*                                                             
/*     RENDERING PRIMATIVES USING THE VECTORS
/*     ALLOWS EASIER DEBUGGING AND PRIMATIVE RENDERING                                                   
/*                                                             
/*                                                             
/* ===================================================================================================================================================*/




	
			
		
/* ===================================================================================================================================================
/  PRIMATIVE RENDER END                                           
/* ===================================================================================================================================================*/





	
	
	
	
}// Vec3 Constructor

///============================================================================================================
















/* NOTE: MAKING CHANGES 5/9/21 TO Vec2.angle2D(_x, _y)
αngle = 
    arccos
    (
      {dot(A,B) } ((self.x * _x) + (self.y * _y)) /
      {self mag } sqrt((self.x * self.x)  + (self.y * self.y) ) * 
      {_x_y mag } sqrt((_x * _x) + (_y * _y))
    );
*/

  /* BEFORE 5/9/21 Change								*|
  |*    var line_seg = self.subtract2D(_x, _y);			*|
  |*    line_seg.inline_negate();						*|
  |*    												*|
  |*    var NormA = self.normalize();					*|
  |*    var length_B = sqrt( (_x * _x) + ( _y * _y) );	*|
  |*    var Nx = _x / length_B;							*|
  |*    var Ny = _y / length_B;							*|
  |*    var results = NormA.dot2D(Nx, Ny);				*|
  |*    return arccos(results);                         */
  
///_________________________________________________________________________________________________________________________________________________________________________
///=========================================================================================================================================================================


//var test2 = new Vec2(1,2);
//var dtestangle = test.deg_angle(test2);
//var rtestangle = test.rad_angle(test2);
//var inv_dtestangle = test2.deg_angle(test);
//var inv_rtestangle = test2.rad_angle(test);
//
//var dangle2D_test = test.angle2D(test2.x, test2.y);		
//var rangle2D_test = radtodeg(test.angle2D(test2.x, test2.y));	
//
//var inv_dangle2D_test = test2.angle2D(test.x, test.y);		
//var inv_rangle2D_test = radtodeg(test2.angle2D(test.x, test.y));		



    //  function rotate (_origin, _angle)
	//  {///@description Returns a new Vec3 with values fron this Vec2
	//  	var result = self.subtract(_origin);
    //          result.inline_mult2D( dcos(_angle), dsin(_angle));	
	//  	    result.inline_add(self);
	//  	return result;
	//  }	
	///_____________________________________________________________
