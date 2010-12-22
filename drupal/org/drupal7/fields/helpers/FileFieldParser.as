package org.drupal7.fields.helpers
{
  import org.drupal7.fields.FileField;

  public final class FileFieldParser
  {
    public static function map(raw:*, toObject:FileField):void
    {
      toObject.fid = raw.fid;
      toObject.uid = raw.uid;
      toObject.filename = raw.filename;
      toObject.uri = raw.uri;
      toObject.filemime = raw.filemime;
      toObject.filesize = raw.filesize;
      toObject.status = raw.status;
      toObject.timestamp = raw.timestamp;
    }
  }
}