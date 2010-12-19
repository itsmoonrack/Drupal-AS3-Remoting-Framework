package fr.wedesign.web.mvcs
{
  import com.asual.swfaddress.SWFAddress;
  import com.asual.swfaddress.SWFAddressEvent;
  
  import fr.wedesign.web.core.IAddressModel;
  import fr.wedesign.web.events.AddressEvent;
  
  import org.robotlegs.mvcs.Actor;
  
  public final class SWFAddressModel extends Actor implements IAddressModel
  {
    public function SWFAddressModel()
    {
      SWFAddress.addEventListener(SWFAddressEvent.CHANGE, onChange);
    }
    
    public function requestURI(uri:String):void
    {
      SWFAddress.setValue(uri);
    }
    
    public function setTitle(title:String):void
    {
      SWFAddress.setTitle(title);
    }
    
    private function onChange(e:SWFAddressEvent):void
    {
      var arr:Array;
      
      if (e.value == "") {
        arr = [];
      } else {
        arr = e.value.split("/");
        arr.shift();
      }
      
      setTargetURI(arr);
    }
    
    private function setTargetURI(uriSegments:Array):void
    {
      uriSegments[0] ||= "home";
      dispatch(new AddressEvent(AddressEvent.CHANGE_PAGE, uriSegments));
    }
  }
}