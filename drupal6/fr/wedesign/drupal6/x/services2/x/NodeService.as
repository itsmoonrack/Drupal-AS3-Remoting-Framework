/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.drupal6.x.services2.x.NodeService
 * @date:		18 avr. 2010
 */
package fr.wedesign.drupal6.x.services2.x
{
	import flash.events.EventDispatcher;
	import flash.net.NetConnection;
	import flash.net.Responder;
	
	import fr.wedesign.drupal6.x.events.NodeEvent;
	import fr.wedesign.drupal6.x.model.Node;
	
	[Event(name="nodeGetResult",type="fr.wedesign.drupal6.x.events.NodeEvent")]
	[Event(name="nodeGetFault",type="fr.wedesign.drupal6.x.events.NodeEvent")]
	[ManagedEvents("nodeGetResult,nodeGetFault")]
	
	[InjectConstructor]
	public class NodeService extends EventDispatcher
	{
		private var _connection	:NetConnection;
		
		public function NodeService(connection:NetConnection)
		{
			_connection = connection;
		}
		
		/**
		 * Returns a node data.
		 */
		public function getNode(nid:Number, fields:Array = null):void
		{
			_connection.call('node.get', new Responder(handleNodeResult), nid, fields);
		}
		
		// -- Event Handler ------------------------------------------------
		private function handleNodeResult(node:Node):void
		{
			dispatchEvent(new NodeEvent("nodeGetResult", node));
		}
		private function handlePageFault(fault:*):void
		{
			dispatchEvent(new NodeEvent("nodeGetFault", fault));
		}
	}
}