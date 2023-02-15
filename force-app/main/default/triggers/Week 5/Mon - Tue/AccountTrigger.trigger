/* trigger AccountTrigger on Account (before update, after update, before insert, after insert) {
	system.debug('Trigger --' + trigger.operationType + '-- durumu için tetiklendi');
	system.debug('----- trigger start -----');
	system.debug('Trigger.isBefore --> ' + Trigger.isBefore);
	system.debug('Trigger.isAfter --> ' + Trigger.isAfter);
	if(Trigger.isBefore){
		system.debug('before insert trigger called.');
	}
	if(Trigger.isAfter){
		system.debug('after insert trigger called.');
	}
	system.debug('===== trigger end =====');	
} */

trigger AccountTrigger on Account (before insert, before update) {
    system.debug('----- trigger start -----');
    
    system.debug('before insert trigger called.');
    system.debug('before update trigger called.');

    system.debug('===== trigger end =====');

}


/* trigger AccountTrigger on Account (before insert, before update) {
    system.debug('----- trigger start -----');
    
    //.isInsert will be true when TRIGGER is running while INSERTing 
    system.debug('trigger.isInsert --> ' + trigger.isInsert); 
    if(trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    system.debug('trigger.isUpdate --> ' + trigger.isUpdate);
    if(trigger.isUpdate){
        system.debug('before update trigger called.');
    }

    system.debug('===== trigger end =====');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
	system.debug('Opperation ==>' + trigger.operationType);

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
    
    system.debug('===== trigger end =====');
	
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');

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
    
    system.debug('===== trigger end =====');
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');

    if(Trigger.isAfter){
        system.debug('after insert/update new records : ' + trigger.new);
    }
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');

    List<account> newAccounts = trigger.new;
    if(Trigger.isAfter){
        system.debug('after insert/update new records : ' + newAccounts);
        system.debug('number of records inserted/updated: ' + newAccounts.size());
    }
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');

    List<account> newAccounts = trigger.new;
    if(Trigger.isAfter){
        system.debug('after insert/update new records : ' + newAccounts);
        system.debug('number of records inserted/updated: ' + newAccounts.size());

        for (Account eachAcc : newAccounts) {
            system.debug('new acc id is ' + eachAcc.Id + ', new acc name is ' + eachAcc.Name);
        }
    }
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');

    if (Trigger.isBefore && Trigger.isinsert) {
        system.debug('trigger.new in BEFORE INSERT -->  ' + trigger.new); //.new is present. ID is null.
    }
    if (Trigger.isAfter && Trigger.isinsert) {
        system.debug('trigger.new in AFTER INSERT -->  ' + trigger.new); //yes. 
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.new in BEFORE Update -->  ' + trigger.new);//yes
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('trigger.new in AFTER Update -->  ' + trigger.new);//yes
    }
} */


/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');

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
} */

/* trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
if(trigger.isAfter && trigger.isUpdate){
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
} */

// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
//     system.debug('----- trigger start -----');
//     Map<id, account> trgNewMap = trigger.newMap;
//     Map<id, account> trgOldMap = trigger.oldMap;

//     if (Trigger.isBefore && Trigger.isInsert) {
//         system.debug('====BEFORE INSERT====');
//         system.debug('trigger.newMap -> ' + trgNewMap);//ID is null. So newMap is NULL.
//         system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
//     }
//     if (Trigger.isAfter && Trigger.isInsert) {
//         system.debug('====AFTER INSERT====');
//         system.debug('trigger.newMap -> ' + trgNewMap);//yes
//         system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
//     }

//     if (Trigger.isBefore && Trigger.isUpdate) {
//         system.debug('====BEFORE UPDATE====');
//         system.debug('trigger.newMap -> ' + trgNewMap);//yes
//         system.debug('trigger.oldMap -> ' + trgOldMap);//yes
//     }
//     if (Trigger.isAfter && Trigger.isUPDATE) {
//         system.debug('====AFTER UPDATE====');
//         system.debug('trigger.newMap -> ' + trgNewMap);//yes
//         system.debug('trigger.oldMap -> ' + trgOldMap);//yes
//     }
// }