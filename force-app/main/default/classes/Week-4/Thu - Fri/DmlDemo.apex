DmlDemo.dmlDemoInsert_stndObj1();
DmlDemo.dmlDemoInsert_cstmObj();
DmlDemo.dmlUpdateDemo_stndObj1();
DmlDemo.dmlUpdateDemo_stndObj2();
DmlDemo.dmlInsertDemo_stndObj2();
DmlDemo.dmlDemoInsert_cstmObj2();
DmlDemo.dmlDemoInsert_wrong1();

DmlDemo.dmlDemoMultipleUpdate_right1();
DmlDemo.dmlDemoMultipleInsert_right2();
DmlDemo.dmlDemoMultipleInsert_right1();
DmlDemo.dmlDemoMultipleUpdate_right2();





delete [select id from salesforce_Project__c ];

delete [select id from account where createddate = TODAY];






list<salesforce_Project__c> spList = new list<salesforce_Project__c>();
for(integer i = 1; i <= 30; i++){
    salesforce_Project__c sp = new salesforce_Project__c();
    sp.project_name__c = 'Project ' + i;
    if( i <= 10){
        sp.status__c = 'New';
    } else if( i <=20) {
        sp.status__c = 'In-progress';
    } else {
        sp.status__c = 'Completed';
    }
    spList.add(sp);
}
insert spList;

list<salesforce_ticket__c> stList = new list<salesforce_ticket__c>();

integer x = 1;
for(salesforce_Project__c s :spList ){
    salesforce_ticket__c t = new salesforce_ticket__c();
    t.subject__c = 'Ticket ' + x;
    t.Priority__c  = 'High';
    t.salesforce_Project__c = s.id;

    x++;
    salesforce_ticket__c t1 = new salesforce_ticket__c();
    t1.subject__c  = 'Ticket ' + x;
    t1.Priority__c  = 'Low';
    t1.salesforce_Project__c = s.id;

    x++;
    salesforce_ticket__c t2 = new salesforce_ticket__c();
    t2.subject__c  = 'Ticket ' + x;
    t2.Priority__c  = 'Medium';
    t2.salesforce_Project__c = s.id;
    x++;

    stList.add(t);
    stList.add(t1);
    stList.add(t2);
}
insert stList; 



