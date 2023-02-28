List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();

Salesforce_Project__c sp = new Salesforce_Project__c();
sp.Project_Name__c = 'turkce ders 1';
sp.Description__c = 'learn trigger batch14';
sp.Status__c = 'New';

listSP.add(sp);

Salesforce_Project__c sp2 = new Salesforce_Project__c();
sp2.Project_Name__c = 'turkce ders 2';
sp2.Description__c = 'learn trigger adv batch14';
sp2.Status__c = 'New';

listSP.add(sp2);

insert listSP;