<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized AdvertAdmin.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class AdvertAdmin extends ModelAdmin
{

    private static $menu_title = 'Adverts';

    private static $url_segment = 'adverts';

    private static $managed_models = array(
        'HeaderAdvert',
        'SideBarAdvert',
    );

//    public function getCMSFields() {
//        $fields = parent::getCMSFields();
//
//        $fields->addFieldToTab('Root.HeaderAdvert', TextField::create('HeaderTitle', 'Header'));
//
//        return $fields;
//    }

}