/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.web.actions.LoadPage
 * @date:		18 avr. 2010
 */
package fr.wedesign.web.actions
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class LoadPage extends EventDispatcher
	{
		public function LoadPage(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}