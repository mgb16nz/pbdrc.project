<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized ContactPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class ContactPage extends Page
{
    private static $db = array(
        'MainTitle' => 'Text',
        'SubTitle' => 'Text',
        'Latitude' => 'Varchar',
        'Longitude' => 'Varchar',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        /*
        *   Main Content section
        */

        $fields->addFieldToTab('Root.Main', TextField::create('MainTitle', 'Content Header'),'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('SubTitle', 'Content Sub Header'),'Content');

        /*
        *   Location Content section
        */

        $fields->addFieldsToTab('Root.Location', array(
            HiddenField::create('Latitude'),
            HiddenField::create('Longitude'),
            GoogleMapField::create($this, 'Location')->setRightTitle('Search for an address or place the marker in desired position.'),

        ));

        return $fields;
    }

}