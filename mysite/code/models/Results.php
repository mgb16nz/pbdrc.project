<?php
/**
 * Created by PhpStorm.
 * User: barker
 * Date: 18/12/17
 * Time: 13:31
 */

class Results extends DataObject
{
    private static $db = array(
        'Title' => 'Varchar(255)',
        'SubTitle' => 'Varchar(255)',
        'SortOrder' => 'Int'
    );

    private static $has_one = array
    (
        'ImageFile' => 'Image',
        'ResultsFile' => 'File',
        'Parent' => 'ResultsPage'
    );

    private static $summary_fields = array(
        'ID' => 'ID',
        'GridThumbnail' => 'Image',
        'Title' => 'Header',
        'SubTitle' => 'Sub header',
        'Created' => 'Date Created',
        'LastEdited' => 'Last Updated'
    );

    public function getGridThumbnail() {
        return $this->ImageFile()->exists() ?
            $this->ImageFile()->SetWidth(100) : "(no image)";
    }

    static $default_sort = "ID DESC";

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        /*
        *   Main Content section
        */
        // Title Header and Link Text
        $fields->addFieldToTab('Root.Main', TextField::create('Title','Header'));
        $fields->addFieldToTab('Root.Main', TextField::create('SubTitle','Sub Header'));

        /*
        *   Results Image and PDF section
        */
        // Results Images
        $fields->addFieldToTab('Root.Main', $ImageFile = UploadField::create('ImageFile', 'Image File of Results'));
        // Results PDF File
        $fields->addFieldToTab('Root.Main', $ResultsFile = UploadField::create('ResultsFile', 'File of Results (PDF only)'));

//        $fields->addFieldToTab('Root.Main', $PDFFile = UploadField::create('PDFFile', 'File of Results (PDF only)'));

        //Image Uploader
        $ImageFile
            ->setFolderName('Uploads/Results-Images')
            ->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        //PDF Uploader
        $ResultsFile
            ->setFolderName('Uploads/Results-PDF')
            ->getValidator()->setAllowedExtensions(array('pdf'));

        $fields->removeByName('SortOrder');
        $fields->removeByName('ParentID');

        return $fields;
    }

}