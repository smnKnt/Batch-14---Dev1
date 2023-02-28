trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
   
    if (Trigger.isBefore) {
        //call handler method
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        //call handler method to update vip of all contacts.
        AccountTriggerHandler.updateVIPforContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }
}