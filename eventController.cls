public without sharing class eventController {

    @AuraEnabled
    public static String createEvent(String Fsubject, String Fdescription, Datetime Fstart, 
    Datetime Fend, String Flink){

        String result= '';
        event e = new event(
            Subject = Fsubject,
            Description = Fdescription,
            StartDateTime = Fstart,
            EndDateTime = Fend,
            WhatId = Flink
        );
        insert e;

        //insert to event
        result = 'Success';
        return result;
    }
}
