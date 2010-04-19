/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.drupal6.x.services2.x.ViewsService
 * @date:		18 avr. 2010
 */
package fr.wedesign.drupal6.services2
{
	import flash.events.EventDispatcher;
	import flash.net.NetConnection;
	import flash.net.Responder;
	
	import fr.wedesign.drupal6.events.ViewsEvent;
	
	[Event(name="viewsGetResult",type="fr.wedesign.drupal6.events.ViewsEvent")]
	[Event(name="viewsGetFault",type="fr.wedesign.drupal6.events.ViewsEvent")]
	[ManagedEvents("viewsGetResult,viewsGetFault")]
	
	public class ViewsService extends EventDispatcher
	{
		private var _connection	:NetConnection;
		
		public function ViewsService(connection:NetConnection)
		{
			_connection = connection;
		}
		/**
		 * Retrieves a view defined in views.module.
		 */
		public function getView(view_name:String, display_id:String = null, args:Array = null, offset:int = 0, limit:int = 0, format_output:Boolean = false):void
		{
			_connection.call('views.get', new Responder(handleViewsResult), view_name, display_id, args, (offset ? offset : null), (limit ? limit : null), format_output);
		}
		
		private function handleViewsResult(view:Array):void
		{
			dispatchEvent(new ViewsEvent("viewsGetResult", view));
		}
	}
}