<?php
/**
 * Created by PhpStorm.
 * User: barker
 * Date: 1/12/17
 * Time: 12:20
 */

class Committee extends DataObject
{

    private static $db = array(
        'MemberTitle' => 'Text',
        'FirstName' => 'Text',
        'LastName' => 'Text',
        'SortOrder' => 'Int'

    );

    private static $has_one = array(
        'Parent' => 'AboutPage'
    );

    private static $summary_fields = array(
        'MemberTitle' => 'Committee Title',
        'FirstName' => 'First Name',
        'LastName' => 'Last Name',
    );

    public static $default_sort='SortOrder';


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('MemberTitle', 'Members Title'));
        $fields->addFieldToTab('Root.Main', TextField::create('FirstName', 'Members First Name'));
        $fields->addFieldToTab('Root.Main', TextField::create('LastName', 'Members Last Name'));

        $fields->removeByName('SortOrder');
        $fields->removeByName('ParentID');

        return $fields;

    }
}