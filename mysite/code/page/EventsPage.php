<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized EventsPage.php
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class EventsPage extends Page
{



    private static $can_be_root = false;


    private static $defaults = array(
        'ShowInMenus' => false,
    );

    private static $show_in_sitetree = false;

    public static $has_many = array(
        'Events' => 'Events'
    );




}