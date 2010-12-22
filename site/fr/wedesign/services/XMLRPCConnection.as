package fr.wedesign.services
{
  import flash.events.ErrorEvent;
  import flash.events.Event;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;
  import flash.net.URLLoader;
  import flash.net.URLLoaderDataFormat;
  import flash.net.URLRequest;
  import flash.net.URLRequestHeader;
  import flash.net.URLRequestMethod;

  public final class XMLRPCConnection
  {
    public function request():void 
    { 
      //Create the XML-RPC document 
      var xmlRPC:XML =  <methodCall> 
                            <methodName></methodName> 
                        </methodCall>; 
      
      xmlRPC.methodName = "teo.getActualite"; 
      
      //Add the method parameters 
      var parameters:Object = new Object(); 
      //    parameters.api_key = "123456ABC"; 
      //    parameters.message = "Able was I, ere I saw Elba."; 
      
//      for( var propertyName:String in parameters ) 
//      { 
//        xmlRPC..struct.member[xmlRPC..struct.member.length + 1] = 
//          <member> 
//              <name>{propertyName}</name> 
//              <value> 
//                  <string>{parameters[propertyName]}</string> 
//              </value> 
//          </member>; 
//      } 
      
      
      //Create the HTTP request object 
      var request:URLRequest = new URLRequest( "/xmlrpc.php" ); 
      request.method = URLRequestMethod.POST; 
      request.requestHeaders.push(new URLRequestHeader("Content-Type", "application/xml")); 
      request.data = xmlRPC; 
      
      //Initiate the request 
      var requestor:URLLoader = new URLLoader(); 
      requestor.dataFormat = URLLoaderDataFormat.TEXT; 
      requestor.addEventListener( Event.COMPLETE, xmlRPCRequestComplete ); 
      requestor.addEventListener( IOErrorEvent.IO_ERROR, xmlRPCRequestError ); 
      requestor.addEventListener( SecurityErrorEvent.SECURITY_ERROR, xmlRPCRequestError ); 
      requestor.load( request ); 
    } 
    
    private function xmlRPCRequestComplete( event:Event ):void 
    { 
      trace( XML(event.target.data).toXMLString() );     
    } 
    
    private function xmlRPCRequestError( error:ErrorEvent ):void 
    { 
      trace( "An error occurred: " + error );     
    }
  }
}