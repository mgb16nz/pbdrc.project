<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized SideBarPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
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