CLASS Param	

	METHOD New() 	CONSTRUCTOR
	
	METHOD Test()
   
ENDCLASS

METHOD New( o ) CLASS Param	

RETU SELF

METHOD Test( o ) CLASS Param

	LOCAL cName, nAge, aData
	
	//	Tratamiento de datos
	
		cName 	:= 'Maria de la O'
		nAge 	:= 47
		aData	:=  { 'manzana', 'pera', 'cereza', 'platano' }

	//	Solicitud de Vista

		_Set( 'name'	, cName )
		_Set( 'age'		, nAge  )
		_Set( 'fruit'	, aData )

		o:View( 'test_param.view', cName, nAge )
	
RETU NIL
