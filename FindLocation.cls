global with sharing class FindLocation {
        
        static id id1;
        public Static List<company_location__c> clist{get;set;}
        
        /*@RemoteAction
        global static List<company_location__c>  findAll()
        {
                return [select id,name,cybagelocation__Latitude__s,cybagelocation__Longitude__s from company_location__c];
        }
        
        
        */
        webservice static void viewMap(id localId)
        {
            id1= localId;
           clist = [select id,name,cybagelocation__Latitude__s,cybagelocation__Longitude__s from company_location__c where id=:id1];
             system.debug(clist);
            //pageReference pp= page.locateC;
            //pp.setRedirect(true);
                //return page.locateC;
        }
        @RemoteAction
        global static List<company_location__c>  findAll()
        {
                system.debug(clist);
                return [select id,name,cybagelocation__Latitude__s,cybagelocation__Longitude__s from company_location__c ];
        }

}