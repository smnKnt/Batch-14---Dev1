/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
    Map<id, account> trgNewMap = trigger.newMap;
    Map<id, account> trgOldMap = trigger.oldMap;

    if (Trigger.isAfter && Trigger.isUpdate) {
        set<id> setIds = trgNewMap.keySet();
        
        for (Id eachID : setIds) {
            //get NEW Account from eachID (key)
            //.get method of map to get account record
            Account newAcc = trgNewMap.get(eachId); 
            Account oldAcc = trgOldMap.get(eachId); 

            string newName = newAcc.Name;
            string oldName = oldAcc.Name;

            system.debug('new account name is ' + newName +', old account name WAS ' + oldName);
            system.debug('new account name is v2 ' + trigger.newMap.get(eachId).Name);
        }

        for (Account eachOldAccount : trigger.old) {

            system.debug('new acc name ' + trigger.newMap.get(eachOldAccount.id).name + ', old acc name ' + eachOldAccount.Name);
        } 
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
    Map<id, account> trgNewMap = trigger.newMap;
    //trigger.new --> list<account> list of account records
    //ID --> Record as value 
    Map<id, account> trgOldMap = trigger.oldMap;

    if (Trigger.isBefore && Trigger.isUpdate ) {
        integer countWebSiteChange = 0;
        for (Id eachId : trgNewMap.keySet() ) {
            Account newAccount = trgNewMap.get(eachId);
            Account oldAccount = trgOldMap.get(eachId);

            system.debug('new account website field value ' + newAccount.Website);
            system.debug('old account website field value ' + oldAccount.Website);
            //check if website field is CHANGED. 
                //compare old and new value of website field.
            if (newAccount.website != oldAccount.Website) {
                system.debug('for account ' + newAccount.Name + ', new website is ' + newAccount.Website);
                countWebSiteChange++;
            } 
        }
    }
} */



/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
   
    if (Trigger.isBefore) {
        for (Account eachAccount : trigger.new) {
            if(trigger.isInsert && eachAccount.active__c == 'Yes'){
                //update descrption field
                //how to update description?
                    //set the value
                eachAccount.Description = 'Account is active now. Enjoy buddy!';
            }
            if(trigger.isUpdate){
                //check if active field is changed from No or --None-- to Yes.
                //how to check if active field is changed?
                    //old and new value is not same
                
                //new active field
                string newActive = eachAccount.Active__c;
                //old active field???
                Account oldAccount = Trigger.oldMap.get(eachAccount.Id);
                string oldActive = oldAccount.Active__c;
                if (newActive != oldActive && newActive == 'Yes') {
                    eachAccount.Description = 'Account is active now. Enjoy Enjoy buddy!';
                }
            }
        }
    }
} */



trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
   
    if (Trigger.isBefore) {
        //call handler method
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }
}