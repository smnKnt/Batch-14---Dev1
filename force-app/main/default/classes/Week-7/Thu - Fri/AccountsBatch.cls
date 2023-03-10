/* public class AccountsBatch implements database.batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator db = database.getQueryLocator([SELECT id, active__c, Description FROM account]);
        return db;
    }

    public void execute(Database.BatchableContext bc, List<account> accList){
        system.debug('inside execute method');
        system.debug('number of record to process is ' + accList.size());
        for (account eachAcc : accList) {
            eachAcc.Description = null;
        }
        update accList;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method called. all records are processed.');
    }
} */

/* public class AccountsBatch implements database.batchable<sObject> {
    
    //first method. This is called only ONCE. 
    //we query here.
    public Database.QueryLocator start(Database.BatchableContext bc){
        //example: 500 records.
        Database.QueryLocator db = database.getQueryLocator([select id, active__c, Description from account]);
        return db;
    }

    //this execute multiple times depending how many records we have in start method.
        //example: we got 500 records, and we are splitting in CHUNK of 50 records.
            //so execute method will execute 10 times.
                // group #2, #3 -> it failed for some reason.
                // group 1, 4,5,6..10-> pass.
    public void execute(Database.BatchableContext bc, List<account> scope){
        system.debug('inside execute method');
        system.debug('number of record to process is ' + scope.size());

        list<account> updateAccount = new list<account>();
        for (account eachAcc : scope) { 
            if(eachAcc.Active__c!='No'){
                eachAcc.Description += '...Updated VIA batch.';
                updateAccount.add(eachAcc);
            }
        }
        if(!updateAccount.isEmpty()){
            update updateAccount;
        }        
    }

    //finish method will execute AT THE END.
    public void finish(Database.BatchableContext bc){
        system.debug('finish method called. all records are processed.');
        //send an email to admins.
    }
} */


public class AccountsBatch implements database.batchable<sObject>, Database.stateful {

    public void execute(SchedulableContext sc){
        //start a batch
        string crn = '0 0 9,23 1W * ? *';

        AccountsSchedule acs = new AccountsSchedule();
        system.schedule('turkceDersSchedule2', crn, acs);
       }

    integer totalRecordCount = 0;
    integer UpdateRecordCount = 0;
    integer batchCount = 0;
    //first method. This is called only ONCE. 
    //we query here.
    public Database.QueryLocator start(Database.BatchableContext bc){
        //example: 500 records.
        Database.QueryLocator db = database.getQueryLocator([select id, active__c, Description from account]);
        return db;
    }

    //this execute multiple times depending how many records we have in start method.
        //example: we got 500 records, and we are splitting in CHUNK of 50 records.
            //so execute method will execute 10 times.
                // group #2, #3 -> it failed for some reason.
                // group 1, 4,5,6..10-> pass.
    public void execute(Database.BatchableContext bc, List<account> scope){
        system.debug('inside execute method');
        batchCount ++;

        list<account> updateAccount = new list<account>();
        for (account eachAcc : scope) { 
            totalRecordCount ++;
            if(eachAcc.Active__c!='No'){
                UpdateRecordCount++;
                eachAcc.Description += '...Updated VIA batch.';
                updateAccount.add(eachAcc);
            }
        }
        if(!updateAccount.isEmpty()){
            update updateAccount;
        }        
    }
    //finish method will execute AT THE END.
    public void finish(Database.BatchableContext bc){
        system.debug('finish method called. all records are processed.');
        system.debug('Total record count: AFTER Upate : ' + totalRecordCount);
        system.debug('Batch count: AFTER Upate : ' + batchCount);
        system.debug('Update record count: FINAL : ' + UpdateRecordCount);
    }
}