<?php
/**
 * Created by PhpStorm.
 * User: barker
 * Date: 8/12/17
 * Time: 09:25
 */

class EventsPage_Controller extends Page_Controller
{
    private static $allowed_actions = array (
        'show'
    );

    public function show(SS_HTTPRequest $request) {
        $event = Event::get()->byID($request->param('ID'));
        if(!$event) {
            return $this->httpError(404, 'Sorry, that Event could not be found');
        }
        return array (
            'Event' => $event,
            'Title' => $event->Title
        );



    }
}