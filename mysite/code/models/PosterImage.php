<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized Models PosterImage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class PosterImage extends DataObject
{

    private static $db = array (
      'Title' => 'Text',
      'Alt' => 'Text',
      'SortOrder' => 'Int'
    );

    private static $has_one = array (
//        'Parent' => 'HomePage',
        'Image' => 'Image'
    );

    private static $summery_fields = array (
        'GridThumbnail' => 'Image',
        'Title' => 'Poster Title',
        'Alt' => 'Poster Alt Text'
    );

    public function getGridThumbnail()
    {
        if ($this->Image()->exists())
        {
            return $this->Image()->SetWidth(72); // Gridfield Thumbnail image size
        }
        else
        {
            return "(no image)";
        }
    }

    public static $default_sort='SortOrder ASC';


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Poster Image Title'));
        $fields->addFieldToTab('Root.Main', TextField::create('Alt', 'Poster Alt Text'));

        $fields->addFieldToTab('Root.Main', $uploader = UploadField::create('Image', 'Choose a Poster Image to Upload'));

        //Poster Image Uploader
        $uploader->setFolderName('Uploads/Poster');
        $uploader->getValidator()->setAllowedExtensions(array(
            'png','gif','jpg','jpeg'
        ));

        $fields->removeByName('SortOrder');
        $fields->removeByName('ParentID');

        return $fields;
    }

}

