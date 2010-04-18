/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.web.events.PageEvent
 * @date:		18 avr. 2010
 */
package fr.wedesign.web.events
{
	import flash.events.Event;
	
	import fr.wedesign.web.model.Page;
	
	public class PageEvent extends Event
	{
		public static const PAGE_LOADED		:String = "pageLoaded";
		public static const PAGE_NOT_FOUND	:String = "pageNotFound";
		
		private var _page:Page;
		
		public function PageEvent(type:String, page:Page = null)
		{
			super(type, bubbles, cancelable);
			_page = page;
		}
		
		public function get page():Page { return _page; }
	}
}