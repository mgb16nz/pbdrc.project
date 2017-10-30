<?php
/**
 * Created by PhpStorm.
 * User: barker
 * Date: 30/10/17
 * Time: 14:18
 */

class SideBarPage extends Page
{

    private static $has_one = array(
        'Advert' => 'Advert'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $conf=GridFieldConfig_RelationEditor::create(10); // Create a gridfield
        $conf->addComponent(new GridFieldSortableRows('SortOrder')); // Makes it sortable

        return $fields;
    }

}