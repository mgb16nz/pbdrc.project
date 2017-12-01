<?php
/**
* Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
* Customized AboutInfo.php
* Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class AboutInfo extends DataObject
{
    private static $db = array(
        'InfoHeader' => 'Text',
        'InfoContent' => 'HTMLText',
        'SortOrder' => 'Int'
    );

    private static $has_one = array(
        'Parent' => 'AboutPage'
    );

    private static $summary_fields = array(
        'InfoHeader' => 'Header',
        'InfoContent' => 'Content'
    );

    public static $default_sort='SortOrder';


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('InfoHeader'));
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('InfoContent'));

        $fields->removeByName('SortOrder');
        $fields->removeByName('ParentID');

        return $fields;

    }

}