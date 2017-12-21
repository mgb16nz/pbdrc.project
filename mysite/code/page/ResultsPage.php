<?php
/**
 * Created by PhpStorm.
 * User: barker
 * Date: 18/12/17
 * Time: 08:46
 */

class ResultsPage extends Page
{
    private static $db = array();

    public static $has_many = array (
        'Results' => 'Results',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        /*
        *  Tab Page for Results
        */

        // AboutInfo Model
        $conf=GridFieldConfig_RelationEditor::create(20); // Create a gridfield
        $conf->addComponent(new GridFieldSortableRows('SortOrder')); // Make it sortable

        // Gridfield from /code/model/AboutInfo.php
        $fields->addFieldToTab('Root.ResultsList', new GridField('Results', 'Results List', $this->Results(), $conf));

        // Removes / Disables Theme from Settings
        $fields->removeByName('Content');

        return $fields;
    }


}