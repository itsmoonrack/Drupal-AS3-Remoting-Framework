package org.drupal7.services.vo
{
  public class NodeVO
  {
    /**
     * The primary identifier for a node.
     */
    public var nid:Number;
    
    /**
     * The current node_revision.vid version identifier.
     */
    public var vid:Number;
    
    /**
     * The node_type.type of this node.
     */
    public var type:String;
    
    /**
     * The languages.language of this node.
     */
    public var language:String;
    
    /**
     * The title of this node, always treated as non-markup plain text.
     */
    public var title:String;
    
    /**
     * The users.uid that owns this node; initially, this is the user that
     * created it.
     */
    public var uid:Number;
    
    /**
     * Boolean indicating whether the node is published (visible to
     * non-administrators).
     */
    public var status:Boolean;
    
    /**
     * The Unix timestamp when the node was created.
     */
    public var created:Date;
    
    /**
     * The Unix timestamp when the node was most recently saved.
     */
    public var changed:Date;
    
    /**
     * Whether comments are allowed on this node: 0 = no, 1 = closed (read only),
     * 2 = open (read/write).
     */
    public var comment:uint;
    
    /**
     * Boolean indicating whether the node should be displayed on the front page.
     */
    public var promote:Boolean;
    
    /**
     * Boolean indicating whether the node should be displayed at the top of
     * lists in which it appears.
     */
    public var sticky:Boolean;
    
    /**
     * The translation set id for this node, which equals the node id of the
     * source post in each set.
     */
    public var tnid:Number;
  }
}