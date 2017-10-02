<?php
/**
 * Pegasus Bay Drag Racing Club v1.0.0 (http://www.pbdrc.com)
 * Copyright 2017 Pegasus Bay Drag Racing
 * Customized SocialAdmin.php - ModelAdmin
 * Created by SNAP Web Designs (http://www.snapwebdesigns.co.nz)
 */

class SocialAdmin extends ModelAdmin
{

    private static $menu_title = 'Social Media';

    private static $url_segment = 'socialmedia';

    private static $managed_models = array (
        'SocialMedia'
    );

//    public function getEditForm($id = null, $fields = null) {
//
//        $form = parent::getEditForm($id, $fields);
//
//        if($this->modelClass=='SocialMedia' && $gridField=$form->Fields()->dataFieldByName($this->sanitiseClassName($this->modelClass))) {
//
//            if($gridField instanceof GridField) {
//                $gridField->getConfig()->addComponent(new GridFieldSortableRows('SortOrder'));
//            }
//        }
//
//
//        return $form;
//    }
}