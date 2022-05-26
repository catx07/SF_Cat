trigger AccountTrigger on Account (before insert, after insert, before Update, after Update) {
   /** if(Trigger.isInsert && Trigger.isBefore){
        
        for(Account acc: Trigger.new ){
            if(acc.Contact_ID_Text__c != null){ 
                Contact con = new Contact() ;
                con.AccountId = acc.Contact_ID_Text__c ;
                update con;
            }
        }
    }
**/
}