/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.web.events.PageEvent
 * @date:		18 avr. 2010
 */
package fr.wedesign.web.events
{
  import flash.events.Event;
  
  import fr.wedesign.web.core.IPage;
  
  public final class PageEvent extends Event
  {
    public static const PAGE_CHANGED  :String = "pageChanged";
    public static const PAGE_NOT_FOUND:String = "pageNotFound";
    
    private var _page:IPage;
    
    public function PageEvent(type:String, page:IPage = null)
    {
      super(type, bubbles, cancelable);
      _page = page;
    }
    
    public function get page():IPage { return _page; }
  }
}