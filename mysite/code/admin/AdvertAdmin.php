<?php
/**
 * Created by SNAP Web Designs.
 * User: Demo Site
 * Date: 19/10/17
 */

class AdvertAdmin extends ModelAdmin {

    private static $menu_title = 'Adverts';

    private static $url_segment = 'adverts';

    private static $managed_models = array(
        'Advert',
    );

}