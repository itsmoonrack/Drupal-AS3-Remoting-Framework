package org.drupal7.fields.helpers
{
  import org.drupal7.fields.LongTextWithSummaryField;

  public final class LongTextWithSummaryParser
  {
    public static function map(raw:*, toObject:LongTextWithSummaryField):void
    {
      toObject.format = raw.format;
      toObject.safe_summary = raw.safe_summary;
      toObject.safe_value = raw.safe_value;
      toObject.summary = raw.summary;
      toObject.value = raw.value;
    }
  }
}