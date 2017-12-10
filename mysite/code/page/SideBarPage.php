<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized SideBarPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class SideBarPage extends Page
{

    private static $has_one = array(
        'SideBarAdvert' => 'SideBarAdvert'
    );

//    public function getCMSFields() {
//        $fields = parent::getCMSFields();
//
//        $fields->addFieldToTab('Root.Main', TextField::create('MainTitle', 'Content Header'));
//
//        return $fields;
//    }

}