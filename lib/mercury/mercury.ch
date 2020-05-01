#define MVC_VERSION 		'Mercury v0.73'

#define MAP_METHOD 			1
#define MAP_ID 				2
#define MAP_ROUTE			3
#define MAP_CONTROLLER		4
#define MAP_QUERY			5
#define MAP_PARAMS			6
#define MAP_ORDER			7


#xcommand log <cText> => Aadd( TApp():aLog, <cText> )  //	Tracear el sistema


#xcommand DEFINE APP <oApp> [ TITLE <cTitle> ] [ ON INIT <uInit> ] ;
	[ CREDENTIALS <cPsw> [ COOKIE <cId_Cookie>] [ <time:LAPSUS, TIME> <nTime> ] ] ;
=> ;
	<oApp> := TApp():New( [<cTitle>], [ \{ | <oApp> | <uInit> \} ], [ <cPsw> ], [<cId_Cookie>], [<nTime>]  )	
	
	
#xcommand DEFINE ROUTE <cRoute> URL <cUrl> <type:CONTROLLER,VIEW> <cController> [ METHOD <cMethod> ] OF <oApp> ;
=> ;
	<oApp>:oRoute:Map( [<cMethod>], <cRoute>, <cUrl>, <cController> )

#xcommand INIT APP <oApp> => <oApp>:Init()

#xcommand AUTENTICATE CONTROLLER <oController> DEFAULT <cRoute> ;
=> ;
	<oController>:Middleware( 'jwt', <cRoute> )

