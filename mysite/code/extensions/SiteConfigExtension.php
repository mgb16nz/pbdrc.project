<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized Site Config Extension (SiteConfigExtension.php)
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class SiteConfigExtension extends DataExtension {

    private static $db = array (
        'Address' => 'Varchar',
        'Mobile' => 'Varchar',
        'Email' => 'Varchar',
    );

    private static $has_one = array (
        'LogoImage' => 'Image',
    );

    public function updateCMSFields(FieldList $fields) {

        // Settings Main
        $fields->addFieldsToTab('Root.Main', array (
            TextField::create('Address','Add Address'),
            TextField::create('Mobile','Add Mobile Number'),
            TextField::create('Email','Add Email'),

            $uploader = UploadField::create('LogoImage','Choose an Image for your Logo'),

        ));

        $uploader->setFolderName('Uploads/Logo');
        $uploader->getValidator()->setAllowedExtensions(array(
            'png','gif','jpeg','jpg'
        ));

        // Removes / Disables Theme from Settings
        $fields->removeByName('Theme');
        $fields->removeByName('Tagline');

    }


}
