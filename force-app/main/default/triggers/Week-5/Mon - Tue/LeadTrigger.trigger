trigger LeadTrigger on Lead (before insert, before update) {
    System.debug('trigger before insert durumunda tetiklendi');
    System.debug('trigger before update durumunda tetiklendi');
}