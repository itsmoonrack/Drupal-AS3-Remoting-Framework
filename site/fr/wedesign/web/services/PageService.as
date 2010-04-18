/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.web.services.PageService
 * @date:		18 avr. 2010
 */
package fr.wedesign.web.services
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import fr.wedesign.web.events.PageEvent;
	import fr.wedesign.web.model.Page;
	
	[Event(name="pageLoaded",type="fr.wedesign.web.events.PageEvent")]
	[Event(name="pageNotFound",type="fr.wedesign.web.events.PageEvent")]
	[Event(name="stateChange",type="flash.events.Event")]
	[ManagedEvents("pageLoaded,pageNotFound")]
	
	public class PageService extends EventDispatcher
	{
		public function getPage():void
		{
			
		}
		
		private function handlePageResult(page:Page):void
		{
			dispatchEvent(new PageEvent("pageLoaded", page));
		}
		
		private function handlePageFault(...arg):void
		{
			dispatchEvent(new PageEvent("pageNotFound"));
		}
	}
}