<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized HeaderAdvert.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class HeaderAdvert extends DataObject {

    private static $db = array (
        'AdvertTitle' => 'Varchar',
        'AdvertURL' => 'Varchar',
        'AdvertAlt' => 'Varchar',
        'Active' => 'Boolean(1)',
    );

    private static $has_one = array (
        'AdvertImage' => 'Image',
        'HeaderPage' => 'HeaderPage'
    );

    private static $summary_fields = array (
        'GridThumbnail' => 'Advert Image',
        'AdvertAlt' => 'Image Title',
        'AdvertURL' => 'Site URL',
        'Active.Nice' => 'Active',
    );

    public function getGridThumbnail() {
        return $this->AdvertImage()->exists() ? $this->AdvertImage()->SetWidth(72) : "(no image)";
    }

    public function getCMSFields() {

        $fields = FieldList::create(TabSet::create('Root'));

        $fields->addFieldsToTab('Root.Main', array(
            TextField::create('AdvertTitle','Title'),
            TextField::create('AdvertAlt','Image Title'),
            TextField::create('AdvertURL','Advert Website URL')
                ->setDescription('example: http://www.site.com  NOT www.site.com'),
            CheckboxField::create('Active','Header Advert Active')
        ));

        $fields->addFieldToTab('Root.Main', $uploader = UploadField::create('AdvertImage','Advert Image'));

        $uploader->setFolderName('Uploads/HeaderAdverts');
        $uploader->getValidator()->setAllowedExtensions(array(
            'png','gif','jpeg','jpg'
        ));

        return $fields;
    }


}