package fr.wedesign.web.base
{
  import fr.wedesign.web.core.IPageService;
  import fr.wedesign.web.events.AddressEvent;
  
  import org.robotlegs.mvcs.Command;
  
  public final class ChangePageCommand extends Command
  {
    [Inject]
    public var event:AddressEvent;
    
    [Inject]
    public var pageService:IPageService;
    
    override public function execute():void
    {
      pageService.requestPage(event.uriSegments.join("/"));
    }
  }
}