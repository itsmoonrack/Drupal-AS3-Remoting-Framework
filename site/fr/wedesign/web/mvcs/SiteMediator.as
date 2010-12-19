package fr.wedesign.web.mvcs
{
  import org.robotlegs.core.IMediator;
  import org.robotlegs.mvcs.Mediator;
  
  public final class SiteMediator extends Mediator implements IMediator
  {
    public function SiteMediator()
    {
      
    }
    
    override public function onRegister():void
    {
      trace(this, contextView);
    }
  }
}