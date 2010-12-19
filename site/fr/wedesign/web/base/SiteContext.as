package fr.wedesign.web.base
{
  import flash.display.DisplayObjectContainer;
  import flash.utils.Dictionary;
  
  import fr.wedesign.web.core.IPageService;
  import fr.wedesign.web.core.ISite;
  import fr.wedesign.web.events.PageEvent;
  import fr.wedesign.web.mvcs.SiteMediator;
  
  import org.robotlegs.core.IContext;
  import org.robotlegs.mvcs.Context;
  
  public final class SiteContext extends Context implements IContext
  {
    public function SiteContext(site:ISite)
    {
      super(site as DisplayObjectContainer, true);
    }
    
    override public function startup():void
    {
      var pageManager:PageService = new PageService("/sites/teorestaurant.com/pages");
      
      injector.mapValue(Dictionary, new Dictionary(), "pageMap");
      injector.mapValue(IPageService, pageManager);
      injector.injectInto(pageManager);
      
      commandMap.mapEvent(PageEvent.PAGE_CHANGED, ChangePageCommand, PageEvent);
      
      mediatorMap.mapView(ISite, SiteMediator);
      mediatorMap.createMediator(contextView as ISite);
      
      pageManager.requestPage("navigation");
    }
  }
}