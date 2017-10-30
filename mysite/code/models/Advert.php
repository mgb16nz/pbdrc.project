<?php

class Advert extends DataObject {

    private static $db = array (
        'AdvertTitle' => 'Varchar',
        'AdvertURL' => 'Varchar',
        'AdvertAlt' => 'Varchar',
        'Active' => 'Boolean(1)',
    );

    private static $has_one = array (
        'AdvertImage' => 'Image',
        'SideBarPage' => 'SideBarPage'
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
            TextField::create('AdvertAlt','Advert Image Title'),
            TextField::create('AdvertURL','Advert Website URL'),
            CheckboxField::create('Active','Advert Active')
        ));

        $fields->addFieldToTab('Root.Main', $uploader = UploadField::create('AdvertImage','Advert Image'));

        $uploader->setFolderName('Uploads/Adverts');
        $uploader->getValidator()->setAllowedExtensions(array(
            'png','gif','jpeg','jpg'
        ));

        return $fields;
    }


}