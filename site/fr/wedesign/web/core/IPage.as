package fr.wedesign.web.core
{
  import flash.display.DisplayObject;
  
  import org.robotlegs.core.IMediator;

  public interface IPage
  {
    function get viewClass():Class;
    function get mediatorClass():Class;
  }
}