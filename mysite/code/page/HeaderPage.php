<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized HeaderPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class HeaderPage extends Page
{
    private static $db = array(
//        'MainTitle' => 'Text'
    );

    private static $has_one = array(
        'HeaderAdvert' => 'HeaderAdvert'
    );

//    public function getCMSFields() {
//        $fields = parent::getCMSFields();
//
//        $fields->addFieldToTab('Root.Main', TextField::create('MainTitle', 'Content Header'));
//
//        return $fields;
//    }

}