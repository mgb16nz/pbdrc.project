<?php

class Page_Controller extends ContentController
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array(
    );

    public function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements

        // Requirements for CSS
        Requirements::css("https://fonts.googleapis.com/css?family=Open+Sans|Lato|Roboto");
        Requirements::css("{$this->ThemeDir()}/css/bootstrap.min.css");
        Requirements::css("{$this->ThemeDir()}/css/layout.min.css");
        Requirements::css("{$this->ThemeDir()}/css/contact-form.min.css");
        Requirements::css("{$this->ThemeDir()}/css/parallax-scroll.min.css");
        Requirements::css("{$this->ThemeDir()}/css/font-awesome.min.css");

        // Requirements for JS
        Requirements::javascript("https://code.jquery.com/jquery-3.2.1.slim.min.js");
        Requirements::javascript("{$this->ThemeDir()}/js/vendor/popper.min.js");
        Requirements::javascript("{$this->ThemeDir()}/js/bootstrap.min.js");
        Requirements::javascript("{$this->ThemeDir()}/js/jquey.stellar.js");
        Requirements::javascript("{$this->ThemeDir()}/js/bootstrap.min.js");
    }

    public function PageByID($pageID = 0) {
        return DataObject::get_by_id('SiteTree', $pageID);
    }

    // Get DataObject from the Advert model from the SideBarPage and passing it onto the SideBar Template
    public function GetSidebar() {
        if($Advert = DataObject::get('Advert'))
            return $Advert;
    }
}
