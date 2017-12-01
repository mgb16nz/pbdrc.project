<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized AboutPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class AboutPage extends Page
{
    private static $db = array(
        'CHeader' => 'Text'
    );

    private static $has_many = array(
        'Committee' => 'Committee',
        'AboutInfo' => 'AboutInfo'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        /*
        *  Tab Page for About Info
        */

        // AboutInfo Model
        $conf=GridFieldConfig_RelationEditor::create(10); // Create a gridfield
        $conf->addComponent(new GridFieldSortableRows('SortOrder')); // Make it sortable

        // Gridfield from /code/model/Committee.php
        $fields->addFieldToTab('Root.AboutPageInfo', new GridField('AboutInfo', 'AboutPageInfo', $this->AboutInfo(), $conf));


        /*
        *  Tab Page for Committee Members
        */

        $fields->addFieldToTab('Root.Committee', TextField::create('CHeader', 'Committee Header'));

        // Committee Model
        $conf=GridFieldConfig_RelationEditor::create(20); // Create a gridfield
        $conf->addComponent(new GridFieldSortableRows('SortOrder')); // Make it sortable

        // Gridfield from /code/model/Committee.php
        $fields->addFieldToTab('Root.Committee', new GridField('Committee', 'Committee Members', $this->Committee(), $conf));

        return $fields;
    }

}