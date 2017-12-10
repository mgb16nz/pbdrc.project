<?php
/**
 * Created by PhpStorm.
 * User: barker
 * Date: 30/11/17
 * Time: 00:55
 */

class Event extends DataObject
{
    private static $db = array (
        'Title' => 'Varchar',
        'Description' => 'HTMLText',
    );

    private static $has_one = array (
        'Image' => 'Image',
        'EventsPage' => 'EventsPage'
    );

    private static $summary_fields = array (
        'GridThumbnail' => 'Poster',
        'Title' => 'Event Title',
        'Description' => 'Description',
        'Created.Nice' => 'Date Created',
        'LastEdited.Nice' => 'Last Updated'
    );

    public function getGridThumbnail() {
        return $this->Image()->exists() ?
            $this->Image()->SetWidth(100) : "(no image)";
    }

    static $default_sort = "ID DESC";

    public function getCMSFields() {
        $fields = FieldList::create(
            TextField::create('Title'),
            HtmlEditorField::create('Description'),
            $uploader = UploadField::create('Image', 'Poster')
        );

        $uploader->setFolderName('Uploads/Events');
        $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

        return $fields;
    }

    public function Link()
    {
        return $this->EventsPage()->Link('show/'.$this->ID);
    }

    public function LinkingMode()
    {
        return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'current' : 'link';
    }
}