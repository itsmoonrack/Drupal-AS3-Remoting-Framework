package fr.wedesign.services
{
  import ether.rpc.xml.XMLRPCObject;
  
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  import mx.rpc.xml.IXMLDecoder;
  import mx.rpc.xml.SimpleXMLDecoder;
  
  public class TestXMLRPC
  {
    private var service:XMLRPCObject;
    private var results:Array;
    
    public function TestXMLRPC()
    {
      service = new XMLRPCObject();
      service.endpoint = "/";
      service.destination = "xmlrpc.php";
      service.addEventListener(FaultEvent.FAULT, onFault);
      service.addEventListener(ResultEvent.RESULT, onResult);
    }
    
    public function test():void
    {
      service.call("teo.getActualites");
    }
    
    private function onResult(event:ResultEvent):void
    {
      results = new Array();
      for each (var object:* in event.result) {
        results.push(mapObject(object));
      }
    }
    private function onFault(event:FaultEvent):void
    {
      trace("fault");
    }
    
    protected function mapObject(object:*):*
    {
      return object;
    }
  }
}