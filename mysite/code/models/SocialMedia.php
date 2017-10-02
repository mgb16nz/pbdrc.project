<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized SocialMedias.php DataObject
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class SocialMedia extends DataObject
{

    private static $db = array (
        'FacebookLink' => 'Varchar',
        'TwitterLink' => 'Varchar',
        'YoutubeLink' => 'Varchar',
    );

    public function updateCMSFields(FieldList $fields)
    {

        $fields->addFieldToTab('Root.', TextField::create('FacebookLink','Facebook Link'));
        $fields->addFieldToTab('Root.',TextField::create('TwitterLink','Twitter Link'));
        $fields->addFieldToTab('Root.',TextField::create('YoutubeLink','YouTube Link'));

    }

}