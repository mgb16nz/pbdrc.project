<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized AboutPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class AboutPage extends Page
{
    private static $db = array (
        'MemberTitle' => 'Text',
        'MainTitle' => 'Text'
    );

    public static $has_many = array (
        'Committee' => 'Committee',
        'AboutInfo' => 'AboutInfo'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        /*
        *   Main Content section
        */

        $fields->addFieldToTab('Root.Main', TextField::create('MainTitle', 'Content Header'),'Content');

        /*
        *  Tab Page for About Info
        */

        // AboutInfo Model
        $conf=GridFieldConfig_RelationEditor::create(10); // Create a gridfield
        $conf->addComponent(new GridFieldSortableRows('SortOrder')); // Make it sortable

        // Gridfield from /code/model/AboutInfo.php
        $fields->addFieldToTab('Root.AboutPageInfo', new GridField('AboutInfo', 'About Page Info', $this->AboutInfo(), $conf));


        /*
        *  Tab Page for Committee Members
        */

        $fields->addFieldToTab('Root.Members', TextField::create('MemberTitle', 'Committee Header'));

        // Committee Model
        $conf=GridFieldConfig_RelationEditor::create(20); // Create a gridfield
        $conf->addComponent(new GridFieldSortableRows('SortOrder')); // Make it sortable

        // Gridfield from /code/model/Committee.php
        $fields->addFieldToTab('Root.Members', new GridField('Committee', 'Committee Members', $this->Committee(), $conf));

        return $fields;
    }

}