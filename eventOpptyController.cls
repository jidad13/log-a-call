public with sharing class eventOpptyController {

    @AuraEnabled
    public static string updateOpptyCreateEvent(String Fsubject, String Fdescription, Datetime Fstart, 
    Datetime Fend, String Flink, String Fupdate1, String Fupdate2){
        String result1= '';
        event e = new event(
            Subject = Fsubject,
            Description = Fdescription,
            StartDateTime = Fstart,
            EndDateTime = Fend,
            WhatId = Flink
        );
        insert e;

        //insert to event


        //String result2= '';
        Opportunity o = new Opportunity(
            Id = Flink,
            update1__c = Fupdate1,
            update2__c = Fupdate2
        );
        update o;

        result1 = 'Success';
        return result1;
    }
}
