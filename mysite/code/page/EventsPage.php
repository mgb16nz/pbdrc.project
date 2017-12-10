<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized EventsPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class EventsPage extends Page
{
    private static $has_many = array (
        'Events' => 'Event'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        // Gridfield from /code/model/Event.php
        $fields->addFieldToTab('Root.Events', GridField::create(
            'Events',
            'PBDRC Upcoming Events',
            $this->Events(),
            GridFieldConfig_RecordEditor::create()
        ));

        // Removes / Disables Theme from Settings
        $fields->removeByName('Content');

        return $fields;
    }
}