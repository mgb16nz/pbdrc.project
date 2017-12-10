<?php
/**
 * Created by PhpStorm.
 * User: barker
 * Date: 2/12/17
 * Time: 07:52
 */

class RacerPage extends Page
{
    private static $db = array (
        'MainTitle' => 'Text'
    );

    public static $has_many = array (
        'RacerInfo' => 'RacerInfo'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        /*
        *   Main Content section
        */

        $fields->addFieldToTab('Root.Main', TextField::create('MainTitle', 'Content Header'),'Content');

        /*
        *  Tab Page for Racer Info
        */

        // AboutInfo Model
        $conf=GridFieldConfig_RecordEditor::create(15); // Create a gridfield
        $conf->addComponent(new GridFieldSortableRows('SortOrder')); // Make it sortable

        // Gridfield from /code/model/Committee.php
        $fields->addFieldToTab('Root.RacerPageInfo', new GridField('RacerInfo', 'Racer Page Info', $this->RacerInfo(), $conf));


        return $fields;
    }


}