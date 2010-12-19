package fr.wedesign.web.base
{
  import flash.display.DisplayObject;
  import flash.utils.Dictionary;
  
  import fr.wedesign.web.core.IPage;
  import fr.wedesign.web.core.ISite;
  import fr.wedesign.web.events.PageEvent;
  
  import org.robotlegs.core.IViewMap;
  import org.robotlegs.mvcs.Command;
  
  internal final class ChangePageCommand extends Command
  {
    [Inject]
    public var event:PageEvent;
    
    [Inject(name="pageMap")]
    public var pageMap:Dictionary;
    
    override public function execute():void
    {
      var page:IPage = event.page;
      
      if (pageMap[page.viewClass] == null) {
        mediatorMap.mapView(page.viewClass, page.mediatorClass);
        pageMap[page.viewClass] = new page.viewClass();
      }
      
      contextView.addChild(pageMap[page.viewClass]);
    }
  }
}