package org.drupal7.fields
{
  public class FileField
  {
    /**
     * File ID.
     */
    public var fid:Number;
    
    /**
     * The users.uid of the user who is associated with the file.
     */
    public var uid:Number;
    
    /**
     * Name of the file with no path components. This may differ from the 
     * basename of the URI if the file is renamed to avoid overwriting an 
     * existing file.
     */
    public var filename:String;
    
    /**
     * The URI to access the file (either local or remote).
     */
    public var uri:String;
    
    /**
     * The file’s MIME type.
     */
    public var filemime:String;
    
    /**
     * The size of the file in bytes.
     */
    public var filesize:uint;
    
    /**
     * A field indicating the status of the file. Two status are defined in 
     * core: temporary (0) and permanent (1). Temporary files older than
     * DRUPAL_MAXIMUM_TEMP_FILE_AGE will be removed during a cron run.
     */
    public var status:uint;
    
    /**
     * UNIX timestamp for when the file was added.
     */
    public var timestamp:Number;
  }
}