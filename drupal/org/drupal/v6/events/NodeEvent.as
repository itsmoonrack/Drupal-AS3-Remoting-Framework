/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		org.drupal.v6.events.NodeEvent
 * @date:		18 avr. 2010
 */
package org.drupal.v6.events
{
	import flash.events.Event;
	
	import org.drupal.v6.model.Node;
	
	public class NodeEvent extends Event
	{
		public static const NODE_GET_RESULT	:String = "nodeGetResult";
		public static const NODE_GET_FAULT	:String = "nodeGetFault";
		
		private var _node:Node;
		
		public function NodeEvent(type:String, node:Node)
		{
			super(type);
			_node = node;
		}
		
		public function get node():Node { return _node; }
	}
}