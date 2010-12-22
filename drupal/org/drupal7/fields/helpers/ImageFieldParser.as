package org.drupal7.fields.helpers
{
  import org.drupal7.fields.ImageField;

  public final class ImageFieldParser
  {
    public static function map(raw:*, toObject:ImageField):void
    {
      toObject.alt = raw.alt;
      toObject.title = raw.title;
      FileFieldParser.map(raw, toObject);
    }
  }
}