
/*===================================================================================================================================================================





                    FUNCTION:
   -----====================================---------------------------------------------------------------------------------------

   --------------------------------------------------------------------------------------------------------------------------------     
       HARD ASSERTS: Terminates programs execution hen condition fails 
   --------------------------------------------------------------------------------------------------------------------------------     
        _ASSERT(_condition, _msg)
        _ASSERT_True(_condition, _msg)
        _ASSERT_False(_condition, _msg)
        _ASSERT_Null(_object, _msg)
        _ASSERT_NotNull(_object, _msg)
        
        
   --------------------------------------------------------------------------------------------------------------------------------     
       SOFT ASSERTS: Test for condition returning results without termination.  
   --------------------------------------------------------------------------------------------------------------------------------     
        _SOFT_ASSERT(_condition, _msg)
        _SOFT_ASSERT_True(_condition, _msg)
        _SOFT_ASSERT_False(_condition, _msg)
        _SOFT_ASSERT_Null(_object, _msg)
        _SOFT_ASSERT_NotNull(_object, _msg)


/*===================================================================================================================================================================*/


#macro _DEBUG   true  //<- User debugmode and (debug_mode == true) <- Engines debugmode is true.


/*===============================================================================================================
                                                                                                                                       
             RETURNS INFORMATION ABOUT THE CALLSTACK STATE WHEN IN DEBUG MODE                                                                                                                          
         SUCH AS POSITION,  FILE NAME AND LINE NUMBER.                                                                                                                        
                                                                                                                                                                                                                                                                              
/*---------------------------------------------------------------------------------------------------------------*/
#region ASSERT_FUNCTIONS

    ///===============================================================================================================
    ///                                                                                                                                     
    ///         QUICK REFERENCE FOR ASSERT FUNCTIONS                                                                                                                                                                                                                                                                    
    ///                                                                                                                                                                                                                                                                            
    ///---------------------------------------------------------------------------------------------------------------*/
    #region DOCUMENTATION
    
    #endregion

    ///===============================================================================================================
    ///                                                                                                                                     
    ///         GLOBAL DATA AND MACROS FOR ASSERT DEBUG FUNCTIONALITY                                                                                                                            
    ///                                                                                                                                                                                                                                                                            
    ///---------------------------------------------------------------------------------------------------------------*/
    #region GLOBAL_DATA
    #endregion


    ///===============================================================================================================
    ///                                                                                                                                     
    ///         HARD ASSERTS. TEST CONDITIONS AND BREAKS IF CONDITIONS IS FALSE AND DOES NOT                                                                                                                             
    ///     SATISFY ASSERT CONDITIONS. TERMINATES PROGRAM EXECUTION IF NOT SATISFIED                                                                                                   
    ///                                                                                                                                                                                                                                                                            
    ///---------------------------------------------------------------------------------------------------------------*/
    #region HARD_ASSERTS
    
    
        ///===============================================================================================================
        ///@function _ASSERT(_condition, _msg)
        ///@description DEBUG build false condition test removed by optimization during releaase.
        ///@param _condition to test for equality
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        function _ASSERT(_condition, _msg)
        {
             if(_DEBUG & (!(_condition)) )
             {// TEST WE ARE IN DEBUG MODE THEN CHECKS CONDITION IS NOT FALSE
                 show_debug_message
                 (
                     "------------------------------------------/n" +
                     "-~* Assert Failed *~-"                 + "/n" + 
                     "Message: "  + _msg                     + "/n" +
                     "File: "     + string(__FILE__)         + "/n" +
                     "Line: "     + string(__LINE__)         + "/n" +
                     "Position: " + string(__POS__)          + "/n" +
                     "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
                 );
                 show_error("Assertion Fail! Terminating Application!", true);
             }
         }
        ///_______________________________________________________________________________________________________________
        
            
        ///===============================================================================================================
        ///@function _ASSERT_True(_condition, _msg)
        ///@description DEBUG build breaks to ensure _condition is TRUE
        ///@param _condition to test for equality
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------  
        function _ASSERT_True(_condition, _msg)
        {
            _ASSERT((_condition) == true, _msg);
        }
        ///_______________________________________________________________________________________________________________
        
        
        ///===============================================================================================================
        ///@function _ASSERT_False(_condition, _msg)
        ///@description DEBUG build breaks to ensure _condition is FALSE
        ///@param _condition to test for equality
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        function _ASSERT_False(_condition, _msg)
        {
            _ASSERT((_condition) == false, _msg);
        }
        ///_______________________________________________________________________________________________________________
        
         
        ///===============================================================================================================
        ///@function _ASSERT_Null(_object, _msg)
        ///@description DEBUG build breaks to ensure object is null
        ///@param _object to test for null
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        function _ASSERT_Null(_object, _msg)
        {
            _ASSERT( is_undefined(_object) == true, _msg);
        }  
        ///_______________________________________________________________________________________________________________
        
        
        ///===============================================================================================================
        ///@function _ASSERT_NotNull(_object, _msg)
        ///@description DEBUG build breaks to ensure _object is not NULL
        ///@param _object to test is not null
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        function _ASSERT_NotNull(_object, _msg)
        {
            _ASSERT( is_undefined(_object) != true, _msg);
        }    
        ///_______________________________________________________________________________________________________________


    #endregion            
    
    ///===============================================================================================================
    ///                                                                                                                                     
    ///         SOFT ASSERTS. TEST CONDITIONS AND BREAKS IF CONDITIONS IS FALSE AND DOES NOT                                                                                                                             
    ///     SATISFY ASSERT CONDITIONS BUT SIMPLY DISPLAYS POP UP INSTEAD OF TERMINATING PROGRAM                                                                                                  
    ///                                                                                                                                                                                                                                                                            
    ///---------------------------------------------------------------------------------------------------------------*/
    #region SOFT_ASSERTS    
        
        
        ///===============================================================================================================
        ///@function _SOFT_ASSERT(_condition, _msg)
        ///@description DEBUG build test removed during optimization during releaase.
        ///@param _condition to test for equality
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        function _SOFT_ASSERT(_condition, _msg)
        {
             if(_DEBUG & (!(_condition)) )
             {// TEST WE ARE IN DEBUG MODE THEN CHECKS CONDITION IS NOT FALSE
                 show_debug_message
                 (
                     "------------------------------------------/n" +
                     "-~* Assert Failed *~-"                 + "/n" + 
                     "Message: "  + _msg                     + "/n" +
                     "File: "     + string(__FILE__)         + "/n" +
                     "Line: "     + string(__LINE__)         + "/n" +
                     "Position: " + string(__POS__)          + "/n" +
                     "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
                 );
                 show_message("Assertion Fail!");
             }
        }
        ///_______________________________________________________________________________________________________________
        
        
        ///===============================================================================================================
        ///@function _SOFT_ASSERT_True(_condition, _msg)
        ///@description DEBUG build test removed during optimization during releaase.
        ///@param _condition to test for equality
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        function _SOFT_ASSERT_True(_condition, _msg)
        {
            _SOFT_ASSERT((_condition) == true, _msg);
        }
        ///_______________________________________________________________________________________________________________
        
        
        ///===============================================================================================================
        ///@function _SOFT_ASSERT_False(_condition, _msg)
        ///@description DEBUG build test removed during optimization during releaase.
        ///@param _condition to test for equality
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        function _SOFT_ASSERT_False(_condition, _msg)
        {
            _SOFT_ASSERT((_condition) == false, _msg);
        }
        ///_______________________________________________________________________________________________________________
        
        
        ///===============================================================================================================
        ///@function _SOFT_ASSERT_Null(_object, _msg)
        ///@description DEBUG build test returns true if object is NULL
        ///@param _object to test for null
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        ///_______________________________________________________________________________________________________________
        function _SOFT_ASSERT_Null(_object, _msg)
        {
            _SOFT_ASSERT( is_undefined(_object) == true, _msg);
        }
        
        ///===============================================================================================================
        ///@function _SOFT_ASSERT_NotNull(_object, _msg)
        ///@description DEBUG build test returns true if is NOT NULL
        ///@param _object to test that it is not null
        ///@param _msg Message to display on fail
        ///---------------------------------------------------------------------------------------------------------------
        ///_______________________________________________________________________________________________________________
        function _SOFT_ASSERT_NotNull(_object, _msg)
        {
            _SOFT_ASSERT( is_undefined(_object) != true, _msg);
        }

    #endregion
    

#endregion
///_______________________________________________________________________________________________________________



///===============================================================================================================
///                                                                                                                                     
///           RETURNS INFORMATION ABOUT THE CALLSTACK STATE WHEN IN DEBUG MODE                                                                                                                          
///       SUCH AS POSITION,  FILE NAME AND LINE NUMBER.                                                                                                                        
///                                                                                                                                                                                                                                                                            
///---------------------------------------------------------------------------------------------------------------*/
#region DEBUG_PROGRAM_INFO


    ///===============================================================================================================
    ///                                                                                                                                     
    ///         QUICK REFERENCE FOR DEBUG FUNCTIONS                                                                                                                                                                                                                                                                    
    ///                                                                                                                                                                                                                                                                            
    ///---------------------------------------------------------------------------------------------------------------*/
    #region DOCUMENTATION

/*/_______________________________________________________________________________________________________________
==================================================================================================================
 

                    FUNCTIONS
   -----====================================================------------------------------------------------------
        debug_get_callstack_pos(  _callstack_array, _index, _depth)
        debug_get_callstack_file( _callstack_array, _index, _depth)
        debug_get_callstack_line( _callstack_array, _index, _depth)
        ds_grid_get_debug( _grid, _x, _y)
        

   ---------------------------------------------------------------------------------------------------------------
   
                               USEFUL LINKS:
   ---------------------------------------------------------------------------------------------------------------
   
        Title:  GameMaker: __FILE__/__LINE__ macros
        Description:  Source for the __LINE__ __FILE__ __POS__ macros
        Source:  https://yal.cc/gamemaker-position-macros/
   
   _______________________________________________________________________________________________________________
   ---------------------------------------------------------------------------------------------------------------
   
   
   ---------------------------------------------------------------------------------------------------------------
   
   
   _______________________________________________________________________________________________________________
   ---------------------------------------------------------------------------------------------------------------
   
__________________________________________________________________________________________________________________
==================================================================================================================*/
    
    #endregion


    ///===============================================================================================================
    ///                                                                                                                                     
    ///            GLOBAL DATA AND MACROS FOR THIS REGION
    ///                                                                                                                                     
    ///---------------------------------------------------------------------------------------------------------------*/    
    #region GLOBAL_DATA
        
        #macro __FILE__   debug_get_callstack_file(debug_get_callstack(), 0)
        #macro __LINE__   debug_get_callstack_line(debug_get_callstack(), 0)
        #macro __POS__    debug_get_callstack_pos( debug_get_callstack(), 0)
        
    #endregion


    ///===============================================================================================================
    ///@function debug_get_callstack_pos( _callstack_array, _index)
    ///@description Returns Line position of callstack
    ///@param callstack_array
    ///@param index
    ///@param _depth{*Optional*} The callstack depth to return.  
    ///---------------------------------------------------------------------------------------------------------------
    function debug_get_callstack_pos( _callstack_array, _index, _depth)
    {
        
        if( is_undefined(_depth) )
        {
            gml_pragma("global", "global.g_debug_get_callstack_pos = ds_map_create();");
            
            var ind = min(_index, array_length(_callstack_array) - 1);          
            var _item = _callstack_array[ind];
            var _pos = global.g_debug_get_callstack_pos[?_item];
            
            if( is_undefined(_pos) )
            {
                _pos = _item;
                if( string_copy(_pos, 1, 4) == "gml_")
                {
                    switch( string_ord_at(_pos, 5))
                    {
                        case ord("S"): // gml_Script_ --> \/
                        case ord("O"): // gml_Object_
                        {
                            _pos = string_delete(_pos, 1, 11);
                        }
                        break;
                    }
                    global.g_debug_get_callstack_pos[?_item] = _pos;
                }
            }
            return _pos;
        }
        else
        {// WE SPECIFIED A DEPTH AND WISH TO RETURN ARRAY OF POSITIONS
            var result;
            result[0] = 0; 
            for(var i = 0; i < _depth; ++i)
            {
                result[i] = debug_get_callstack_pos( _callstack_array, i);
            }
            return result;          
        }
    }
    ///_______________________________________________________________________________________________________________
    
    
    ///===============================================================================================================
    ///@function debug_get_callstack_file( _callstack_array, _index)
    ///@description Returns the File of the callstack
    ///@param _callstack_array
    ///@param _index
    ///@param _depth{*Optional*} The callstack depth to return.  
    ///---------------------------------------------------------------------------------------------------------------
    function debug_get_callstack_file( _callstack_array, _index, _depth)
    {
        if( is_undefined(_depth) )
        {
            gml_pragma("global", "global.g_debug_get_callstack_file = ds_map_create();");
            
            var ind = min(_index, array_length(_callstack_array) - 1);          
            var _item = _callstack_array[ind];
            var _file = global.g_debug_get_callstack_file[?_item];
            
            if (is_undefined(_file)) 
            {
                _file = _item;
                var _pos = string_pos(":", _file);
                if (_pos)
                {
                    _file = string_copy(_file, 1, _pos - 1);
                }
                
                if (string_copy(_file, 1, 4) == "gml_")
                {
                    switch (string_ord_at(_file, 5))
                    {
                        case ord("S"): // gml_Script_--> \/
                        case ord("O"): // gml_Object_
                        {
                            _file = string_delete(_file, 1, 11);
                        }
                        break;
                    }
                }
                global.g_debug_get_callstack_file[?_item] = _file;
            }
            return _file;
        }
        else
        {// WE WANT MULTIPLE FILES FROM THE CALLSTACK
            var result;
            result[0] = 0; 
            for(var i = 0; i < _depth; ++i)
            {
                result[i] = debug_get_callstack_file( _callstack_array, i);
            }
            return result;          
        }
    }// Akin to above, but we also trim :line from the end if there's one.
    ///_______________________________________________________________________________________________________________
        
    
    ///===============================================================================================================
    ///@function debug_get_callstack_line( _callstack_array, _index)
    ///@description
    ///@param callstack_array
    ///@param index
    ///@param _depth{*Optional*} The callstack depth to return.  
    ///---------------------------------------------------------------------------------------------------------------
    function debug_get_callstack_line( _callstack_array, _index, _depth)
    {
 
        if( is_undefined(_depth) )
        {
            gml_pragma("global", "global.g_debug_get_callstack_line = ds_map_create();");
            
            var ind = min(_index, array_length(_callstack_array) - 1);          
            var _item = _callstack_array[ind];
            var _line = global.g_debug_get_callstack_line[?_item];
            if ( is_undefined(_line) ) 
            {
                var _pos = string_pos(":", _item);
                if (_pos)
                {
                    _line = real(string_delete(_item, 1, _pos));
                } 
                else
                {
                    _line = -1;
                }
                global.g_debug_get_callstack_line[?_item] = _line;
            }
            return _line;
        }
        else
        {// REQUESTED MULTIPLE LINE NUMBERS FROM THE CALLSTACK
            var result;
            result[0] = 0; 
            for(var i = 0; i < _depth; ++i)
            {
                result[i] = debug_get_callstack_line( _callstack_array, i);
            }
            return result;
        }
    }
    ///_______________________________________________________________________________________________________________
    



    ///===============================================================================================================
    ///function ds_grid_get_debug(_grid,_x,_y)
    ///@description Checks to ensure the provided grid position is inbounds
    ///@param grid ID of ds_grid to check
    ///@param x
    ///@param y
    ///---------------------------------------------------------------------------------------------------------------
    function ds_grid_get_debug( _grid, _x, _y)
    {
    
        var g = _grid;
        var i = _x;
        var k = _y;
        var w = ds_grid_width(g);
        var h = ds_grid_height(g);
        if (i >= 0 && k >= 0 && i < w && k < h)
        {// WE ARE INBOUNDS RETURN GRID ELEMENT
            return ds_grid_get(g, i, k);
        } 
        else
        {// DISPAY DEBUG MESSAGE WARNING OF OVERFLOW
            show_debug_message("ds_grid_get_debug["
                + debug_get_callstack_pos(debug_get_callstack(), 1)
                + "] attempting to read outside the grid, x="
                + string(i) + ", y=" + string(k) + ", w=" + string(w) + ", h=" + string(h));
            return undefined;
        }
    }
    ///_______________________________________________________________________________________________________________


#endregion
///_______________________________________________________________________________________________________________

     

///===============================================================================================================
///                                                                                                                                     
///           RETURNS INFORMATION ABOUT THE CALLSTACK STATE WHEN IN DEBUG MODE                                                                                                                          
///       SUCH AS POSITION,  FILE NAME AND LINE NUMBER.                                                                                                                        
///                                                                                                                                                                                                                                                                            
///---------------------------------------------------------------------------------------------------------------*/
#region MODULE_TEST
    
    
    function TEST_ALL_DEBUG_MODULE()
    {
        
        TEST_ASSERT()                             
        TEST_ASSERT_True()                        
        TEST_ASSERT_False()                   
        TEST_ASSERT_Null()                        
        TEST_ASSERT_NotNull()                   
        TEST_SOFT_ASSERT()                 
        TEST_SOFT_ASSERT_True()            
        TEST_SOFT_ASSERT_False()               
        TEST_SOFT_ASSERT_Null()               
        TEST_SOFT_ASSERT_NotNull()              
        TEST_debug_get_callstack_pos()  
        TEST_debug_get_callstack_file() 
        TEST_debug_get_callstack_line() 
        TEST_ds_grid_get_debug( _grid, _x, _y)      
    }
    
    function TEST_ASSERT()                             
    {
        return _ASSERT( true, "_ASSERT with true FAILED");
    }   
    function TEST_ASSERT_True()                        
    {
        var TestVal = 100;
        return _ASSERT_True( (TestVal == 100)  == true, "TRUE ASSERT_True FAILED");
    }   
    function TEST_ASSERT_False()                       
    {
        var TestVal = 100   ;
        return _ASSERT_False( (TestVal != 100) == true, "TRUE TEST_ASSERT_False FAILED");
    }   
    
    function TEST_ASSERT_Null()                        
    {
        var obj = undefined;
        return _ASSERT_Null( obj, "TEST Assert: Null") == true;                         
    }   
    function TEST_ASSERT_NotNull()                         
    {
        var obj = undefined;
        return _ASSERT_NotNull( obj, "TEST Assert: Not Null") == true;                      
    }
    
    

    function TEST_SOFT_ASSERT()                
    {
        return _SOFT_ASSERT( true, "TEST Assert: Soft Assert") == true;                         
    }
    function TEST_SOFT_ASSERT_True()               
    {
        var TestVal = 100;
        return _SOFT_ASSERT_True( TestVal == 100, "TEST Assert: Soft True") == true;        
    }
    function TEST_SOFT_ASSERT_False()              
    {
        var TestVal = 100;
        return _SOFT_ASSERT_False( TestVal != 100, "TEST Assert: Soft False") == true;      
    } 
    
    function TEST_SOFT_ASSERT_Null()                
    
    {
        var obj = undefined;
        return _SOFT_ASSERT_Null(obj, "TEST Assert: Soft Null") == true;                
    } 
    function TEST_SOFT_ASSERT_NotNull()         
    {
        var obj = undefined;
        return _SOFT_ASSERT_NotNull(obj, "TEST Assert: Soft Not Null") == true;         
    }
    function TEST_debug_get_callstack_pos()  
    {       
        var callstack = debug_get_callstack();
        var pos0 = debug_get_callstack_pos(callstack, 0); 
        var pos1 = debug_get_callstack_pos(callstack, 1); 
        var pos_array = debug_get_callstack_pos(callstack, 0, 2); 
    }
    function TEST_debug_get_callstack_file()    
    {
        var callstack = debug_get_callstack();
        var file0 = debug_get_callstack_file(callstack, 0)  
        var file1 = debug_get_callstack_file(callstack, 1)  
        var file_array =debug_get_callstack_file(callstack, 0, 2); 
    }
    function TEST_debug_get_callstack_line()    
    {
        var callstack = debug_get_callstack();
        var line0 = debug_get_callstack_line(callstack, 0)      
        var line1 = debug_get_callstack_line(callstack, 1)      
        var line_array = debug_get_callstack_line(callstack, 0, 2);         
    }   
    function TEST_ds_grid_get_debug( _grid, _x, _y)
    {
        //ds_grid_get_debug( _grid, _x, _y)
    }
                   
    
    
     
    
#endregion
///_______________________________________________________________________________________________________________