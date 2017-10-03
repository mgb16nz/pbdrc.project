<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized Site Config Extension (SiteConfigExtension.php)
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class SiteConfigExtension extends DataExtension
{

    private static $db = array (

        'Address' => 'Varchar',
        'Mobile' => 'Varchar',
        'Email' => 'Varchar',

        // Social Media
        'FacebookLink' => 'Varchar',
        'TwitterLink' => 'Varchar',
        'YoutubeLink' => 'Varchar',
        'FBTitle' => 'Varchar',
        'TTitle' => 'Varchar',
        'YTTitle' => 'Varchar',
        'GPTitle' => 'Varchar',

        // Club Info
        'CIText' => 'Text'
    );

    private static $has_one = array (
        'LogoImage' => 'Image',
    );

    public function updateCMSFields(FieldList $fields)
    {

        // Settings Main
        $fields->addFieldsToTab('Root.Main', array (
            TextField::create('Address','Your Address Detail'),
            TextField::create('Mobile','Your Contact Number'),
            TextField::create('Email','Your Email Address'),
            // Club Info text in the footer
            TextareaField::create('CIText','Club Info Text in Footer'),

            $uploader = UploadField::create('LogoImage','Choose a Image for your Logo'),

        ));

        // Logo Image Uploader
        $uploader->setFolderName('Uploads/Logo');
        $uploader->getValidator()->setAllowedExtensions(array(
            'png','gif','jpeg','jpg'
        ));

        // Social Media Tab
        $fields->addFieldsToTab('Root.SocialMedia', array (
            TextField::create('FacebookLink','Facebook Link'),
            TextField::create('FBTitle','FaceBook Title'),
            TextField::create('TwitterLink','Twitter Link'),
            TextField::create('TTitle','Twitter Title'),
            TextField::create('YoutubeLink','YouTube Link'),
            TextField::create('YTTitle','YouTube Title'),
            TextField::create('GooglePlus','Goggle Plus Link'),
            TextField::create('GPTitle','Goggle Plus Title'),
        ));

        // Removes / Disables Theme from Settings
        $fields->removeByName('Theme');
        $fields->removeByName('Tagline');




    }

}
