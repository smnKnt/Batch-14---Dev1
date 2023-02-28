/* trigger AccountTrigger on Account (before insert, after insert) {
	system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');
	system.debug('Trigger.isBefore --> ' + Trigger.isBefore);
	system.debug('Trigger.isAfter --> ' + Trigger.isAfter);
	if(Trigger.isBefore){
		system.debug('before insert trigger called.');
	}
	if(Trigger.isAfter){
		system.debug('after insert trigger called.');
	}
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');	
} */

/* trigger AccountTrigger on Account (before insert, before update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');
    
    system.debug('before insert trigger called.');
    system.debug('before update trigger called.');

    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */


/* trigger AccountTrigger on Account (before insert, before update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');
    
    //.isInsert will be true when TRIGGER is running while INSERTing 
    system.debug('trigger.isInsert --> ' + trigger.isInsert); 
    if(trigger.isInsert){
        system.debug('before insert trigger called.');
    }

    system.debug('trigger.isUpdate --> ' + trigger.isUpdate);
    if(trigger.isUpdate){
        system.debug('before update trigger called.');
    }

    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');

    system.debug('Trigger.isBefore -> ' + Trigger.isBefore);
    system.debug('Trigger.isAfter -> ' + Trigger.isAfter);

    system.debug('Trigger.isInsert -> ' + Trigger.isInsert);
    system.debug('Trigger.isUpdate -> ' + Trigger.isUpdate);
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger called.');
    }

    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');	
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');

    //will be true for AFTER INSERT
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger called.');
    }

    //will be true for BEFORE INSERT
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger called.');
    }

    //will be true for AFTER UPDATE
    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('after update trigger called.');
    }
    //will be true for BEFORE UPDATE
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('before update trigger called.');
    }
    
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');

    if(Trigger.isAfter){
        system.debug('after insert/update new records : ' + trigger.new);
    }

    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');

    List<account> newAccounts = trigger.new;
    if(Trigger.isAfter){
        system.debug('after insert/update new records : ' + newAccounts);
        system.debug('number of records inserted/updated: ' + newAccounts.size());
    }

    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');

    List<account> newAccounts = trigger.new;
    if(Trigger.isAfter){
        system.debug('after insert/update new records : ' + newAccounts);
        system.debug('number of records inserted/updated: ' + newAccounts.size());

        for (Account eachAcc : newAccounts) {
            system.debug('new acc id is ' + eachAcc.Id + ', new acc name is ' + eachAcc.Name);
        }
    }
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');

    if (Trigger.isBefore && Trigger.isinsert) {
        system.debug('trigger.new in BEFORE INSERT -->  ' + trigger.new); //.new is present. ID is null.
    }
    if (Trigger.isAfter && Trigger.isinsert) {
        system.debug('trigger.new in AFTER INSERT -->  ' + trigger.new); //yes. 
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.new in BEFORE Update -->  ' + trigger.new); //yes
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('trigger.new in AFTER Update -->  ' + trigger.new); //yes
    }
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');

    if (Trigger.isBefore && Trigger.isinsert) {
        system.debug('trigger.old in BEFORE INSERT -->  ' + trigger.old); //null
       
    }
    if (Trigger.isAfter && Trigger.isinsert) {
        system.debug('trigger.old in AFTER INSERT -->  ' + trigger.old); //null
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.old in BEFORE UPDATE -->  ' + trigger.old); //
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('trigger.old in AFTER UPDATE -->  ' + trigger.old); //
    }
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */

/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');
        //print old and new id and names
        list<account> newAccounts = trigger.new;
        list<account> oldAccounts = trigger.old;

        for (account oldAcc : oldAccounts) {
            system.debug('old acc id is ' + oldAcc.id + ' , old name is ' + oldAcc.name);
        }
        
        for (account newAcc : newAccounts) {
            system.debug('new acc id is ' + newAcc.id + ' , new name is ' + newAcc.name);
        }
    }
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */

/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için tetiklendi ===== ');
    Map<id, account> trgNewMap = trigger.newMap;
    Map<id, account> trgOldMap = trigger.oldMap;

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('====BEFORE INSERT====');
        system.debug('trigger.newMap -> ' + trgNewMap);//ID is null. So newMap is NULL.
        system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('====AFTER INSERT====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('====BEFORE UPDATE====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgOldMap);//yes
    }
    if (Trigger.isAfter && Trigger.isUPDATE) {
        system.debug('====AFTER UPDATE====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgOldMap);//yes
    }
    system.debug('===== Trigger ' + trigger.operationType + ' durumu için sonlandı ===== ');
} */





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
            //system.debug('new account name is v2 ' + trigger.newMap.get(eachId).Name);
        }

        // for (Account eachNewAccount : accTriggerNew) {
        //     string newAccName = eachNewAccount.Name;

        //     Account oldAcc = trgOldMap.get(eachNewAccount.Id);
        //     string oldAccName = oldAcc.Name;
        //     system.debug('new acc name ' + newAccName + ', old acc name ' + oldAccName);
        // }
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
            if (newAccount.website != oldAccount.Website ) {
                system.debug('for account ' + newAccount.Name + ', new website is ' + newAccount.Website);
                countWebSiteChange++;
            } 
        }
    }
} */


trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
   
    if (Trigger.isBefore) {
        for (Account eachAccount : trigger.new) {
            if(trigger.isInsert && eachAccount.active__c == 'Yes'){
                //update descrption field
                //how to update description?
                    //set the value
                eachAccount.Description = 'Account is active now. Enjoy buddy!';
            }
            // if(trigger.isUpdate){
            //     //check if active field is changed from No or --None-- to Yes.
            //     //how to check if active field is changed?
            //         //old and new value is not same
                
            //     //new active field
            //     string newActive = eachAccount.Active__c;
            //     //old active field???
            //     Account oldAccount = Trigger.oldMap.get(eachAccount.Id);
            //     string oldActive = oldAccount.Active__c;
            //     if (newActive != oldActive && newActive == 'Yes') {
            //         eachAccount.Description = 'Account is active now. Enjoy Enjoy buddy!';
            //     }
            // }
        }
    }
}