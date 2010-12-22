package fr.wedesign.web.base
{
  import flash.utils.Dictionary;
  
  import fr.wedesign.web.core.IPage;
  import fr.wedesign.web.events.PageEvent;
  
  import org.robotlegs.mvcs.Command;
  
  public final class AddPageCommand extends Command
  {
    [Inject]
    public var event:PageEvent;
    
    [Inject(name="viewMap")]
    public var viewMap:Dictionary;
    
    override public function execute():void
    {
      var page:IPage = event.page;
      
      if (viewMap[page.viewClass] == null) {
        mediatorMap.mapView(page.viewClass, page.mediatorClass);
        viewMap[page.viewClass] = new page.viewClass();
      }
      
      contextView.addChild(viewMap[page.viewClass]);
    }
  }
}