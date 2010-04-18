/**
 * @author:		Sylvain Lecoy / WeDesign (http://www.wedesign.fr/)
 * @class:		fr.wedesign.drupal6.x.model.Story
 * @date:		18 avr. 2010
 */
package fr.wedesign.drupal6.x.model
{
	import flash.net.registerClassAlias;

	registerClassAlias("story", Node);
	[RemoteClass(alias="story")]
	dynamic public class Story extends Node
	{
		
	}
}