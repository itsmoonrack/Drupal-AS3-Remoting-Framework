package org.drupal7.fields.helpers
{
  import mx.utils.StringUtil;
  
  import org.drupal7.services.vo.NodeVO;

  public final class NodeParser
  {
    public static function map(raw:*, toObject:NodeVO):void
    {
      toObject.nid = raw.nid;
      toObject.vid = raw.vid;
      toObject.type = raw.type;
      toObject.language = raw.language;
      toObject.title = raw.title;
      toObject.uid = raw.uid;
      toObject.status = Boolean(uint(raw.status));
      toObject.created = new Date(Number(raw.created) * 1000);
      toObject.changed = new Date(Number(raw.changed) * 1000);
      toObject.comment = raw.comment;
      toObject.promote = Boolean(uint(raw.promote));
      toObject.sticky = Boolean(uint(raw.sticky));
      toObject.tnid = raw.tnid;
    }
  }
}