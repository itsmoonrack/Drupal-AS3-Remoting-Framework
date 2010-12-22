package org.drupal7.fields
{
  public class ImageField extends FileField
  {
    /**
     * Alternative image text, for the image’s ’alt’ attribute.
     */
    public var alt:String;
    
    /**
     * Image title text, for the image’s ’title’ attribute.
     */
    public var title:String;
  }
}