/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.drupal6.x.events.ViewsEvent
 * @date:		18 avr. 2010
 */
package fr.wedesign.drupal6.events
{
	import flash.events.Event;
	
	public class ViewsEvent extends Event
	{
		public static const VIEWS_GET_RESULT:String = "viewsGetResult";
		public static const VIEWS_GET_FAULT	:String = "viewsGetFault";
		
		private var _view:Array;
		
		public function ViewsEvent(type:String, view:Array)
		{
			super(type);
			_view = view;
		}
		
		public function get view():Array { return _view; }
	}
}