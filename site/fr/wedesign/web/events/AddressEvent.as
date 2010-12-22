package fr.wedesign.web.events
{
  import flash.events.Event;
  
  public final class AddressEvent extends Event
  {
    public static const ADDRESS_CHANGED:String = "addressChanged";
    
    private var _uriSegments:Array;
    
    public function AddressEvent(type:String, uriSegments:Array)
    {
      super(type, bubbles, cancelable);
      _uriSegments = uriSegments;
    }
    
    public function get uriSegments():Array { return _uriSegments; }
  }
}