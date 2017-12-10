<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized Committee.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class Committee extends DataObject
{
    private static $db = array(
        'Title' => 'Text',
        'FirstName' => 'Text',
        'LastName' => 'Text',
        'SortOrder' => 'Int'

    );

    private static $has_one = array(
        'Parent' => 'AboutPage'
    );

    private static $summary_fields = array(
        'Title' => 'Committee Title',
        'FirstName' => 'First Name',
        'LastName' => 'Last Name',
        'Created' => 'Date Created',
        'LastEdited' => 'Last Updated'
    );

    public static $default_sort='SortOrder';


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title', 'Members Title'));
        $fields->addFieldToTab('Root.Main', TextField::create('FirstName', 'Members First Name'));
        $fields->addFieldToTab('Root.Main', TextField::create('LastName', 'Members Last Name'));

        $fields->removeByName('SortOrder');
        $fields->removeByName('ParentID');

        return $fields;

    }
}